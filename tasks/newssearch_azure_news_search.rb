#!/opt/puppetlabs/puppet/bin/ruby

require 'json'
require 'puppet'

def news_search(*args)
  header_params = {}
  argstring = args[0].delete('\\')
  arg_hash = JSON.parse(argstring)

  # Remove task name from arguments - should contain all necessary parameters for URI
  arg_hash.delete('_task')
  operation_verb = 'Get'

  query_params, body_params, path_params = format_params(arg_hash)

  uri_string = "https://api.cognitive.microsoft.com//news/search" % path_params

  unless query_params.empty?
    uri_string = uri_string + '?' + to_query(query_params)
  end

  header_params['Content-Type'] = 'application/json' # first of #{parent_consumes}

  return nil unless authenticate(header_params) == true

  uri = URI(uri_string)
  Net::HTTP.start(uri.host, uri.port, use_ssl: uri.scheme == 'https') do |http|
    if operation_verb == 'Get'
      req = Net::HTTP::Get.new(uri)
    elsif operation_verb == 'Put'
      req = Net::HTTP::Put.new(uri)
    elsif operation_verb == 'Delete'
      req = Net::HTTP::Delete.new(uri)
    end

    header_params.each { |x, v| req[x] = v } unless header_params.empty?
    unless body_params.empty?
      req.body=body_params.to_json
    end

    Puppet.debug("URI is (#{operation_verb}) #{uri} headers are #{header_params}")
    response = http.request req # Net::HTTPResponse object
	Puppet.debug("Called (#{operation_verb}) endpoint at #{uri}")
    Puppet.debug("response code is #{response.code} and body is #{response.body}")
    response
  end
end

def to_query(hash)
  if hash
    return_value = hash.map { |x, v| "#{x}=#{v}" }.reduce { |x, v| "#{x}&#{v}" }
    if !return_value.nil?
      return return_value
    end
  end
  return ''
end

def op_param(name, inquery, paramalias, namesnake)
    operation_param = { :name => name, :location => inquery, :paramalias => paramalias, :namesnake => namesnake }
    return operation_param
end

def format_params(key_values)
  query_params = {}
  body_params = {}
  path_params = {}

  key_values.each do |key,value|
   if value.include? '{'
    key_values[key]=JSON.parse(value.gsub("\'","\""))
   end
  end

  op_params = [
      op_param('_type', 'body', '_type', '_type'),
      op_param('Accept', 'header', 'accept', 'accept'),
      op_param('Accept-Language', 'header', 'accept_language', 'accept_language'),
      op_param('cc', 'query', 'cc', 'cc'),
      op_param('count', 'query', 'count', 'count'),
      op_param('followupqueries', 'body', 'follow_up_queries', 'followupqueries'),
      op_param('freshness', 'query', 'freshness', 'freshness'),
      op_param('id', 'body', 'id', 'id'),
      op_param('location', 'body', 'location', 'location'),
      op_param('mkt', 'query', 'mkt', 'mkt'),
      op_param('offset', 'query', 'offset', 'offset'),
      op_param('originalImg', 'query', 'original_img', 'original_img'),
      op_param('q', 'query', 'q', 'q'),
      op_param('safeSearch', 'query', 'safe_search', 'safe_search'),
      op_param('setLang', 'query', 'set_lang', 'set_lang'),
      op_param('sortBy', 'query', 'sort_by', 'sort_by'),
      op_param('textDecorations', 'query', 'text_decorations', 'text_decorations'),
      op_param('textFormat', 'query', 'text_format', 'text_format'),
      op_param('totalestimatedmatches', 'body', 'total_estimated_matches', 'totalestimatedmatches'),
      op_param('User-Agent', 'header', 'user_agent', 'user_agent'),
      op_param('value', 'body', 'value', 'value'),
      op_param('websearchurl', 'body', 'web_search_url', 'websearchurl'),
      op_param('X-BingApis-SDK', 'header', 'x_bing_apis_sdk', 'x_bing_apis_sdk'),
      op_param('X-MSEdge-ClientID', 'header', 'x_ms_edge_client_id', 'x_ms_edge_client_id'),
      op_param('X-MSEdge-ClientIP', 'header', 'x_ms_edge_client_ip', 'x_ms_edge_client_ip'),
      op_param('X-Search-Location', 'header', 'x_search_location', 'x_search_location'),
    ]
  op_params.each do |i|
    location = i[:location]
    name     = i[:name]
    paramalias = i[:paramalias]
    name_snake = i[:namesnake]
    if location == 'query'
      query_params[name] = key_values[name_snake] unless key_values[name_snake].nil?
      query_params[name] = ENV["azure__#{name_snake}"] unless ENV["<no value>_#{name_snake}"].nil?
    elsif location == 'body'
      body_params[name] = key_values[name_snake] unless key_values[name_snake].nil?
      body_params[name] = ENV["azure_#{name_snake}"] unless ENV["<no value>_#{name_snake}"].nil?
    else
      path_params[name_snake.to_sym] = key_values[name_snake] unless key_values[name_snake].nil?
      path_params[name_snake.to_sym] = ENV["azure__#{name_snake}"] unless ENV["<no value>_#{name_snake}"].nil?
    end
  end
  
  return query_params,body_params,path_params
end

def authenticate(header_params)
  header_params["Ocp-Apim-Subscription-Key"] = ENV["<no value>_api_key"]
end



def task
  # Get operation parameters from an input JSON
  params = STDIN.read
  result = news_search(params)
  if result.is_a? Net::HTTPSuccess
    puts result.body
  else
    raise result.body
  end
rescue StandardError => e
  result = {}
  result[:_error] = {
    msg: e.message,
    kind: 'puppetlabs-azure_arm/error',
    details: { class: e.class.to_s },
  }
  puts result
  exit 1
end

task