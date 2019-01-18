#!/opt/puppetlabs/puppet/bin/ruby

require 'json'
require 'puppet'

def app_service_environments_delete(*args)
  header_params = {}
  argstring = args[0].delete('\\')
  arg_hash = JSON.parse(argstring)

  # Remove task name from arguments - should contain all necessary parameters for URI
  arg_hash.delete('_task')
  operation_verb = 'Delete'

  query_params, body_params, path_params = format_params(arg_hash)

  uri_string = "https://management.azure.com//subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/hostingEnvironments/%{name}" % path_params

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
      op_param('allowedmultisizes', 'body', 'allowed_multi_sizes', 'allowedmultisizes'),
      op_param('allowedworkersizes', 'body', 'allowed_worker_sizes', 'allowedworkersizes'),
      op_param('api-version', 'query', 'api_version', 'api_version'),
      op_param('apimanagementaccountid', 'body', 'api_management_account_id', 'apimanagementaccountid'),
      op_param('clustersettings', 'body', 'cluster_settings', 'clustersettings'),
      op_param('databaseedition', 'body', 'database_edition', 'databaseedition'),
      op_param('databaseserviceobjective', 'body', 'database_service_objective', 'databaseserviceobjective'),
      op_param('defaultfrontendscalefactor', 'body', 'default_front_end_scale_factor', 'defaultfrontendscalefactor'),
      op_param('dnssuffix', 'body', 'dns_suffix', 'dnssuffix'),
      op_param('dynamiccacheenabled', 'body', 'dynamic_cache_enabled', 'dynamiccacheenabled'),
      op_param('environmentcapacities', 'body', 'environment_capacities', 'environmentcapacities'),
      op_param('environmentishealthy', 'body', 'environment_is_healthy', 'environmentishealthy'),
      op_param('environmentstatus', 'body', 'environment_status', 'environmentstatus'),
      op_param('forceDelete', 'query', 'force_delete', 'force_delete'),
      op_param('frontendscalefactor', 'body', 'front_end_scale_factor', 'frontendscalefactor'),
      op_param('haslinuxworkers', 'body', 'has_linux_workers', 'haslinuxworkers'),
      op_param('internalloadbalancingmode', 'body', 'internal_load_balancing_mode', 'internalloadbalancingmode'),
      op_param('ipssladdresscount', 'body', 'ipssl_address_count', 'ipssladdresscount'),
      op_param('lastaction', 'body', 'last_action', 'lastaction'),
      op_param('lastactionresult', 'body', 'last_action_result', 'lastactionresult'),
      op_param('location', 'body', 'location', 'location'),
      op_param('maximumnumberofmachines', 'body', 'maximum_number_of_machines', 'maximumnumberofmachines'),
      op_param('multirolecount', 'body', 'multi_role_count', 'multirolecount'),
      op_param('multisize', 'body', 'multi_size', 'multisize'),
      op_param('name', 'path', 'name', 'name'),
      op_param('networkaccesscontrollist', 'body', 'network_access_control_list', 'networkaccesscontrollist'),
      op_param('provisioningstate', 'body', 'provisioning_state', 'provisioningstate'),
      op_param('resourcegroup', 'body', 'resource_group', 'resourcegroup'),
      op_param('resourceGroupName', 'path', 'resource_group_name', 'resource_group_name'),
      op_param('sslcertkeyvaultid', 'body', 'ssl_cert_key_vault_id', 'sslcertkeyvaultid'),
      op_param('sslcertkeyvaultsecretname', 'body', 'ssl_cert_key_vault_secret_name', 'sslcertkeyvaultsecretname'),
      op_param('status', 'body', 'status', 'status'),
      op_param('subscription_id', 'path', 'subscription_id', 'subscription_id'),
      op_param('subscriptionid', 'body', 'subscription_id', 'subscriptionid'),
      op_param('suspended', 'body', 'suspended', 'suspended'),
      op_param('upgradedomains', 'body', 'upgrade_domains', 'upgradedomains'),
      op_param('userwhitelistedipranges', 'body', 'user_whitelisted_ip_ranges', 'userwhitelistedipranges'),
      op_param('vipmappings', 'body', 'vip_mappings', 'vipmappings'),
      op_param('virtualnetwork', 'body', 'virtual_network', 'virtualnetwork'),
      op_param('vnetname', 'body', 'vnet_name', 'vnetname'),
      op_param('vnetresourcegroupname', 'body', 'vnet_resource_group_name', 'vnetresourcegroupname'),
      op_param('vnetsubnetname', 'body', 'vnet_subnet_name', 'vnetsubnetname'),
      op_param('workerpools', 'body', 'worker_pools', 'workerpools'),
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
  result = app_service_environments_delete(params)
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