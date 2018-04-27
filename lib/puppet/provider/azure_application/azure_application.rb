# require "pry"
# require "pry-rescue"
require "json"

Puppet::Type.type(:azure_application).provide(:arm) do
  mk_resource_methods

  def initialize(value = {})
    super(value)
    @property_flush = {}
    @is_create = false
    @is_delete = false
  end

  def app_id=(value)
    Puppet.info("app_id setter called to change to #{value}")
    @property_flush[:app_id] = value
  end

  def app_permissions=(value)
    Puppet.info("app_permissions setter called to change to #{value}")
    @property_flush[:app_permissions] = value
  end

  def available_to_other_tenants=(value)
    Puppet.info("available_to_other_tenants setter called to change to #{value}")
    @property_flush[:available_to_other_tenants] = value
  end

  def deletion_timestamp=(value)
    Puppet.info("deletion_timestamp setter called to change to #{value}")
    @property_flush[:deletion_timestamp] = value
  end

  def display_name=(value)
    Puppet.info("display_name setter called to change to #{value}")
    @property_flush[:display_name] = value
  end

  def homepage=(value)
    Puppet.info("homepage setter called to change to #{value}")
    @property_flush[:homepage] = value
  end

  def identifier_uris=(value)
    Puppet.info("identifier_uris setter called to change to #{value}")
    @property_flush[:identifier_uris] = value
  end

  def oauth2_allow_implicit_flow=(value)
    Puppet.info("oauth2_allow_implicit_flow setter called to change to #{value}")
    @property_flush[:oauth2_allow_implicit_flow] = value
  end

  def object_id=(value)
    Puppet.info("object_id setter called to change to #{value}")
    @property_flush[:object_id] = value
  end

  def object_type=(value)
    Puppet.info("object_type setter called to change to #{value}")
    @property_flush[:object_type] = value
  end

  def reply_urls=(value)
    Puppet.info("reply_urls setter called to change to #{value}")
    @property_flush[:reply_urls] = value
  end


  def create
    @is_create = true
    Puppet.info("Entered create for resource #{name} of type Application")
    hash = build_hash
    response = self.class.invoke_create(resource, hash)

    if response.is_a? Net::HTTPSuccess
      @property_hash[:ensure] = :present
      Puppet.info("Added :ensure to property hash")
    else
      raise Puppet::Error, "Create failed.  Response is #{response} and body is #{response.body}"
    end
  rescue Exception => ex
    Puppet.alert("Exception during create. The state of the resource is unknown.  ex is #{ex} and backtrace is #{ex.backtrace}")
    raise
  end

  def flush
    Puppet.info("Entered flush for resource #{name} of type Application - creating ? #{@is_create}, deleting ? #{@is_delete}")
    if @is_create || @is_delete
      return # we've already done the create or delete
    end
    hash = build_hash
    response = self.class.invoke_update(resource, hash)

    if response.is_a? Net::HTTPSuccess
      @property_hash[:ensure] = :present
      Puppet.info("Added :ensure to property hash")
    else
      raise Puppet::Error, "Flush failed.  The state of the resource is unknown.  Response is #{response} and body is #{response.body}"
    end
  rescue Exception => ex
    Puppet.alert("Exception during flush. ex is #{ex} and backtrace is #{ex.backtrace}")
    raise
  end

  def build_hash
    application = {}
    application["appId"] = resource[:app_id] unless resource[:app_id].nil?
    application["appPermissions"] = resource[:app_permissions] unless resource[:app_permissions].nil?
    application["availableToOtherTenants"] = resource[:available_to_other_tenants] unless resource[:available_to_other_tenants].nil?
    application["deletionTimestamp"] = resource[:deletion_timestamp] unless resource[:deletion_timestamp].nil?
    application["displayName"] = resource[:display_name] unless resource[:display_name].nil?
    application["homepage"] = resource[:homepage] unless resource[:homepage].nil?
    application["identifierUris"] = resource[:identifier_uris] unless resource[:identifier_uris].nil?
    application["oauth2AllowImplicitFlow"] = resource[:oauth2_allow_implicit_flow] unless resource[:oauth2_allow_implicit_flow].nil?
    application["objectId"] = resource[:object_id] unless resource[:object_id].nil?
    application["objectType"] = resource[:object_type] unless resource[:object_type].nil?
    application["replyUrls"] = resource[:reply_urls] unless resource[:reply_urls].nil?
    return application
  end

  def self.build_key_values
    key_values = {}
    key_values["api-version"] = "1.6"
    key_values
  end

  def destroy
    delete(resource)
  end

  def delete(hash)
    Puppet.info("Entered delete for resource #{hash[:name]} of type <no value>")
    @is_delete = true
    response = self.class.invoke_delete(hash)

    if response.is_a? Net::HTTPSuccess
      @property_hash[:ensure] = :present
      Puppet.info "Added :absent to property_hash"
    else
      raise Puppet::Error, "Delete failed.  The state of the resource is unknown.  Response is #{response} and body is #{response.body}"
    end
  rescue Exception => ex
    Puppet.alert("Exception during destroy. ex is #{ex} and backtrace is #{ex.backtrace}")
    raise
  end


  def self.invoke_create(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation Applications_Create")
    path_params = {}
    query_params = {}
    header_params = {}
    query_params["api-version"] = key_values["api-version"] unless key_values["api-version"].nil?
    query_params["api-version"] = ENV["azure_api_version"] unless ENV["azure_api_version"].nil?
    query_params["api-version"] = resource[:api_version] unless resource.nil? or resource[:api_version].nil?
    path_params[:parameters] = key_values["parameters"] unless key_values["parameters"].nil?
    path_params[:parameters] = ENV["azure_parameters"] unless ENV["azure_parameters"].nil?
    path_params[:parameters] = resource[:parameters] unless resource.nil? or resource[:parameters].nil?
    path_params[:tenant_id] = key_values["tenantID"] unless key_values["tenantID"].nil?
    path_params[:tenant_id] = ENV["azure_tenant_id"] unless ENV["azure_tenant_id"].nil?
    path_params[:tenant_id] = resource[:tenant_id] unless resource.nil? or resource[:tenant_id].nil?
    uri_string = "https://graph.windows.net/%{tenant_id}/applications" % path_params
    uri_string = uri_string + "?" + to_query(query_params)
    header_params['Content-Type'] = 'application/json' # first of [application/json text/json]
    if authenticate(path_params, query_params, header_params, body_params)
      Puppet.info("Authentication succeeded")
      uri = URI(uri_string)
      Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        req = Net::HTTP::Post.new(uri)
        add_keys_to_request(req, header_params)
        if body_params
          req.body = body_params.to_json
        end
        Puppet.debug("URI is (Post) #{uri}, body is #{body_params}, query params are #{query_params}, headers are #{header_params}")
        response = http.request req # Net::HTTPResponse object
        Puppet.debug("response code is #{response.code} and body is #{response.body}")
        success = response.is_a? Net::HTTPSuccess
        Puppet.info("Called (Post) endpoint at #{uri}, success was #{success}")
        return response
      end
    end
  end

  def self.invoke_update(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation Applications_Create")
    path_params = {}
    query_params = {}
    header_params = {}
    query_params["api-version"] = key_values["api-version"] unless key_values["api-version"].nil?
    query_params["api-version"] = ENV["azure_api_version"] unless ENV["azure_api_version"].nil?
    query_params["api-version"] = resource[:api_version] unless resource.nil? or resource[:api_version].nil?
    path_params[:parameters] = key_values["parameters"] unless key_values["parameters"].nil?
    path_params[:parameters] = ENV["azure_parameters"] unless ENV["azure_parameters"].nil?
    path_params[:parameters] = resource[:parameters] unless resource.nil? or resource[:parameters].nil?
    path_params[:tenant_id] = key_values["tenantID"] unless key_values["tenantID"].nil?
    path_params[:tenant_id] = ENV["azure_tenant_id"] unless ENV["azure_tenant_id"].nil?
    path_params[:tenant_id] = resource[:tenant_id] unless resource.nil? or resource[:tenant_id].nil?
    uri_string = "https://graph.windows.net/%{tenant_id}/applications" % path_params
    uri_string = uri_string + "?" + to_query(query_params)
    header_params['Content-Type'] = 'application/json' # first of [application/json text/json]
    if authenticate(path_params, query_params, header_params, body_params)
      Puppet.info("Authentication succeeded")
      uri = URI(uri_string)
      Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        req = Net::HTTP::Post.new(uri)
        add_keys_to_request(req, header_params)
        if body_params
          req.body = body_params.to_json
        end
        Puppet.debug("URI is (Post) #{uri}, body is #{body_params}, query params are #{query_params}, headers are #{header_params}")
        response = http.request req # Net::HTTPResponse object
        Puppet.debug("response code is #{response.code} and body is #{response.body}")
        success = response.is_a? Net::HTTPSuccess
        Puppet.info("Called (Post) endpoint at #{uri}, success was #{success}")
        return response
      end
    end
  end

  def self.invoke_delete(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation Applications_Delete")
    path_params = {}
    query_params = {}
    header_params = {}
    query_params["api-version"] = key_values["api-version"] unless key_values["api-version"].nil?
    query_params["api-version"] = ENV["azure_api_version"] unless ENV["azure_api_version"].nil?
    query_params["api-version"] = resource[:api_version] unless resource.nil? or resource[:api_version].nil?
    path_params[:application_object_id] = key_values["applicationObjectId"] unless key_values["applicationObjectId"].nil?
    path_params[:application_object_id] = ENV["azure_application_object_id"] unless ENV["azure_application_object_id"].nil?
    path_params[:application_object_id] = resource[:objectid] unless resource.nil? or resource[:objectid].nil?
    path_params[:tenant_id] = key_values["tenantID"] unless key_values["tenantID"].nil?
    path_params[:tenant_id] = ENV["azure_tenant_id"] unless ENV["azure_tenant_id"].nil?
    path_params[:tenant_id] = resource[:tenant_id] unless resource.nil? or resource[:tenant_id].nil?
    uri_string = "https://graph.windows.net/%{tenant_id}/applications/%{application_object_id}" % path_params
    uri_string = uri_string + "?" + to_query(query_params)
    header_params['Content-Type'] = 'application/json' # first of [application/json text/json]
    if authenticate(path_params, query_params, header_params, body_params)
      Puppet.info("Authentication succeeded")
      uri = URI(uri_string)
      Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        req = Net::HTTP::Delete.new(uri)
        add_keys_to_request(req, header_params)
        if body_params
          req.body = body_params.to_json
        end
        Puppet.debug("URI is (Delete) #{uri}, body is #{body_params}, query params are #{query_params}, headers are #{header_params}")
        response = http.request req # Net::HTTPResponse object
        Puppet.debug("response code is #{response.code} and body is #{response.body}")
        success = response.is_a? Net::HTTPSuccess
        Puppet.info("Called (Delete) endpoint at #{uri}, success was #{success}")
        return response
      end
    end
  end

  def self.invoke_list_with_params(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation Applications_List")
    path_params = {}
    query_params = {}
    header_params = {}
    query_params["$filter"] = key_values["$filter"] unless key_values["$filter"].nil?
    query_params["$filter"] = ENV["azure_$filter"] unless ENV["azure_$filter"].nil?
    query_params["$filter"] = resource[:$filter] unless resource.nil? or resource[:$filter].nil?
    query_params["api-version"] = key_values["api-version"] unless key_values["api-version"].nil?
    query_params["api-version"] = ENV["azure_api_version"] unless ENV["azure_api_version"].nil?
    query_params["api-version"] = resource[:api_version] unless resource.nil? or resource[:api_version].nil?
    path_params[:tenant_id] = key_values["tenantID"] unless key_values["tenantID"].nil?
    path_params[:tenant_id] = ENV["azure_tenant_id"] unless ENV["azure_tenant_id"].nil?
    path_params[:tenant_id] = resource[:tenant_id] unless resource.nil? or resource[:tenant_id].nil?
    uri_string = "https://graph.windows.net/%{tenant_id}/applications" % path_params
    uri_string = uri_string + "?" + to_query(query_params)
    header_params['Content-Type'] = 'application/json' # first of [application/json text/json]
    if authenticate(path_params, query_params, header_params, body_params)
      Puppet.info("Authentication succeeded")
      uri = URI(uri_string)
      Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        req = Net::HTTP::Get.new(uri)
        add_keys_to_request(req, header_params)
        if body_params
          req.body = body_params.to_json
        end
        Puppet.debug("URI is (Get) #{uri}, body is #{body_params}, query params are #{query_params}, headers are #{header_params}")
        response = http.request req # Net::HTTPResponse object
        Puppet.debug("response code is #{response.code} and body is #{response.body}")
        success = response.is_a? Net::HTTPSuccess
        Puppet.info("Called (Get) endpoint at #{uri}, success was #{success}")
        return response
      end
    end
  end

  def self.invoke_get_one(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation Applications_Get")
    path_params = {}
    query_params = {}
    header_params = {}
    query_params["api-version"] = key_values["api-version"] unless key_values["api-version"].nil?
    query_params["api-version"] = ENV["azure_api_version"] unless ENV["azure_api_version"].nil?
    query_params["api-version"] = resource[:api_version] unless resource.nil? or resource[:api_version].nil?
    path_params[:application_object_id] = key_values["applicationObjectId"] unless key_values["applicationObjectId"].nil?
    path_params[:application_object_id] = ENV["azure_application_object_id"] unless ENV["azure_application_object_id"].nil?
    path_params[:application_object_id] = resource[:objectid] unless resource.nil? or resource[:objectid].nil?
    path_params[:tenant_id] = key_values["tenantID"] unless key_values["tenantID"].nil?
    path_params[:tenant_id] = ENV["azure_tenant_id"] unless ENV["azure_tenant_id"].nil?
    path_params[:tenant_id] = resource[:tenant_id] unless resource.nil? or resource[:tenant_id].nil?
    uri_string = "https://graph.windows.net/%{tenant_id}/applications/%{application_object_id}" % path_params
    uri_string = uri_string + "?" + to_query(query_params)
    header_params['Content-Type'] = 'application/json' # first of [application/json text/json]
    if authenticate(path_params, query_params, header_params, body_params)
      Puppet.info("Authentication succeeded")
      uri = URI(uri_string)
      Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        req = Net::HTTP::Get.new(uri)
        add_keys_to_request(req, header_params)
        if body_params
          req.body = body_params.to_json
        end
        Puppet.debug("URI is (Get) #{uri}, body is #{body_params}, query params are #{query_params}, headers are #{header_params}")
        response = http.request req # Net::HTTPResponse object
        Puppet.debug("response code is #{response.code} and body is #{response.body}")
        success = response.is_a? Net::HTTPSuccess
        Puppet.info("Called (Get) endpoint at #{uri}, success was #{success}")
        return response
      end
    end
  end

  def self.authenticate(path_params, query_params, header_params, body_params)
    token = fetch_oauth2_token
    if token
      header_params['Authorization'] = "Bearer #{token}"
      return true
    else
      return false
    end
  end

  def self.fetch_oauth2_token
    Puppet.info("Getting oauth2 token")
    @client_id = ENV["azure_client_id"]
    @client_secret = ENV["azure_client_secret"]
    @tenant_id = ENV["azure_tenant_id"]
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

  def exists?
    Puppet.info("exists_one for resource #{name} of type <no value>")
    return exists_one(resource)
  end

  
  def exists_one(resource)
    response = self.class.invoke_get_one(resource)

    if response.is_a? Net::HTTPSuccess
      return true
    else
      return false
    end
  rescue Exception => ex
    Puppet.alert("Exception during exists_one. ex is #{ex} and backtrace is #{ex.backtrace}")
    raise
  end
  def self.add_keys_to_request(request, hash)
    if hash
      hash.each { |x, v| request[x] = v }
    end
  end

  def self.to_query(hash)
    if hash
      return_value = hash.map { |x, v| "#{x}=#{v}" }.reduce { |x, v| "#{x}&#{v}" }
      if !return_value.nil?
        return return_value
      end
    end
    return ""
  end
end # this is the end of the ruby class

