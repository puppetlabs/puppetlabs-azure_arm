#!/opt/puppetlabs/puppet/bin/ruby

require 'json'
require 'puppet'

def smart_groups_get_all(*args)
  header_params = {}
  argstring = args[0].delete('\\')
  arg_hash = JSON.parse(argstring)

  # Remove task name from arguments - should contain all necessary parameters for URI
  arg_hash.delete('_task')
  operation_verb = 'Get'

  query_params, body_params, path_params = format_params(arg_hash)

  uri_string = "https:////subscriptions/%{subscription_id}/providers/Microsoft.AlertsManagement/smartGroups" % path_params

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
      op_param('api-version', 'query', 'api_version', 'api_version'),
      op_param('id', 'body', 'id', 'id'),
      op_param('monitorCondition', 'query', 'monitor_condition', 'monitor_condition'),
      op_param('monitorService', 'query', 'monitor_service', 'monitor_service'),
      op_param('name', 'body', 'name', 'name'),
      op_param('pageCount', 'query', 'page_count', 'page_count'),
      op_param('properties', 'body', 'properties', 'properties'),
      op_param('severity', 'query', 'severity', 'severity'),
      op_param('smartGroupState', 'query', 'smart_group_state', 'smart_group_state'),
      op_param('sortBy', 'query', 'sort_by', 'sort_by'),
      op_param('sortOrder', 'query', 'sort_order', 'sort_order'),
      op_param('subscriptionId', 'path', 'subscription_id', 'subscription_id'),
      op_param('targetResource', 'query', 'target_resource', 'target_resource'),
      op_param('targetResourceGroup', 'query', 'target_resource_group', 'target_resource_group'),
      op_param('targetResourceType', 'query', 'target_resource_type', 'target_resource_type'),
      op_param('timeRange', 'query', 'time_range', 'time_range'),
      op_param('type', 'body', 'type', 'type'),
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
def fetch_oauth2_token
  Puppet.debug('Getting oauth2 token')
  @client_id = ENV['azure_client_id']
  @client_secret = ENV['azure_client_secret']
  @tenant_id = ENV['azure_tenant_id']
  uri = URI("https://login.microsoftonline.com/#{@tenant_id}/oauth2/token")
  response = Net::HTTP.post_form(uri,
                                  'grant_type' => 'client_credentials',
                                  'client_id'     => @client_id,
                                  'client_secret' => @client_secret,
                                  'resource'      => 'https://management.azure.com/')

  Puppet.debug("get oauth2 token response code is #{response.code} and body is #{response.body}")
  success = response.is_a? Net::HTTPSuccess
  if success
    return JSON[response.body]["access_token"]
  else
    raise Puppet::Error, "Unable to get oauth2 token - response is #{response} and body is #{response.body}"
  end
end

def authenticate(header_params)
  token = fetch_oauth2_token
  if token
    header_params['Authorization'] = "Bearer #{token}"
    return true
  else
    return false
  end
end



def task
  # Get operation parameters from an input JSON
  params = STDIN.read
  result = smart_groups_get_all(params)
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