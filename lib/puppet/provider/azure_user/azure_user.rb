# require "pry"
# require "pry-rescue"
require "json"

Puppet::Type.type(:azure_user).provide(:arm) do
  mk_resource_methods

  def initialize(value = {})
    super(value)
    @property_flush = {}
    @is_create = false
    @is_delete = false
  end

  def account_enabled=(value)
    Puppet.info("account_enabled setter called to change to #{value}")
    @property_flush[:account_enabled] = value
  end

  def deletion_timestamp=(value)
    Puppet.info("deletion_timestamp setter called to change to #{value}")
    @property_flush[:deletion_timestamp] = value
  end

  def display_name=(value)
    Puppet.info("display_name setter called to change to #{value}")
    @property_flush[:display_name] = value
  end

  def given_name=(value)
    Puppet.info("given_name setter called to change to #{value}")
    @property_flush[:given_name] = value
  end

  def immutable_id=(value)
    Puppet.info("immutable_id setter called to change to #{value}")
    @property_flush[:immutable_id] = value
  end

  def mail=(value)
    Puppet.info("mail setter called to change to #{value}")
    @property_flush[:mail] = value
  end

  def mail_nickname=(value)
    Puppet.info("mail_nickname setter called to change to #{value}")
    @property_flush[:mail_nickname] = value
  end

  def object_id=(value)
    Puppet.info("object_id setter called to change to #{value}")
    @property_flush[:object_id] = value
  end

  def object_type=(value)
    Puppet.info("object_type setter called to change to #{value}")
    @property_flush[:object_type] = value
  end

  def sign_in_names=(value)
    Puppet.info("sign_in_names setter called to change to #{value}")
    @property_flush[:sign_in_names] = value
  end

  def surname=(value)
    Puppet.info("surname setter called to change to #{value}")
    @property_flush[:surname] = value
  end

  def usage_location=(value)
    Puppet.info("usage_location setter called to change to #{value}")
    @property_flush[:usage_location] = value
  end

  def user_principal_name=(value)
    Puppet.info("user_principal_name setter called to change to #{value}")
    @property_flush[:user_principal_name] = value
  end

  def user_type=(value)
    Puppet.info("user_type setter called to change to #{value}")
    @property_flush[:user_type] = value
  end


  def create
    @is_create = true
    Puppet.info("Entered create for resource #{name} of type User")
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
    Puppet.info("Entered flush for resource #{name} of type User - creating ? #{@is_create}, deleting ? #{@is_delete}")
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
    user = {}
    user["accountEnabled"] = resource[:account_enabled] unless resource[:account_enabled].nil?
    user["deletionTimestamp"] = resource[:deletion_timestamp] unless resource[:deletion_timestamp].nil?
    user["displayName"] = resource[:display_name] unless resource[:display_name].nil?
    user["givenName"] = resource[:given_name] unless resource[:given_name].nil?
    user["immutableId"] = resource[:immutable_id] unless resource[:immutable_id].nil?
    user["mail"] = resource[:mail] unless resource[:mail].nil?
    user["mailNickname"] = resource[:mail_nickname] unless resource[:mail_nickname].nil?
    user["objectId"] = resource[:object_id] unless resource[:object_id].nil?
    user["objectType"] = resource[:object_type] unless resource[:object_type].nil?
    user["signInNames"] = resource[:sign_in_names] unless resource[:sign_in_names].nil?
    user["surname"] = resource[:surname] unless resource[:surname].nil?
    user["usageLocation"] = resource[:usage_location] unless resource[:usage_location].nil?
    user["userPrincipalName"] = resource[:user_principal_name] unless resource[:user_principal_name].nil?
    user["userType"] = resource[:user_type] unless resource[:user_type].nil?
    return user
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
    Puppet.info("Calling operation Users_Create")
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
    uri_string = "https://graph.windows.net/%{tenant_id}/users" % path_params
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
    Puppet.info("Calling operation Users_Create")
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
    uri_string = "https://graph.windows.net/%{tenant_id}/users" % path_params
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
    Puppet.info("Calling operation Users_Delete")
    path_params = {}
    query_params = {}
    header_params = {}
    query_params["api-version"] = key_values["api-version"] unless key_values["api-version"].nil?
    query_params["api-version"] = ENV["azure_api_version"] unless ENV["azure_api_version"].nil?
    query_params["api-version"] = resource[:api_version] unless resource.nil? or resource[:api_version].nil?
    path_params[:tenant_id] = key_values["tenantID"] unless key_values["tenantID"].nil?
    path_params[:tenant_id] = ENV["azure_tenant_id"] unless ENV["azure_tenant_id"].nil?
    path_params[:tenant_id] = resource[:tenant_id] unless resource.nil? or resource[:tenant_id].nil?
    path_params[:upn_or_object_id] = key_values["upnOrObjectId"] unless key_values["upnOrObjectId"].nil?
    path_params[:upn_or_object_id] = ENV["azure_upn_or_object_id"] unless ENV["azure_upn_or_object_id"].nil?
    path_params[:upn_or_object_id] = resource[:upn_or_object_id] unless resource.nil? or resource[:upn_or_object_id].nil?
    uri_string = "https://graph.windows.net/%{tenant_id}/users/%{upn_or_object_id}" % path_params
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
    Puppet.info("Calling operation Users_List")
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
    uri_string = "https://graph.windows.net/%{tenant_id}/users" % path_params
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
    Puppet.info("Calling operation Users_Get")
    path_params = {}
    query_params = {}
    header_params = {}
    query_params["api-version"] = key_values["api-version"] unless key_values["api-version"].nil?
    query_params["api-version"] = ENV["azure_api_version"] unless ENV["azure_api_version"].nil?
    query_params["api-version"] = resource[:api_version] unless resource.nil? or resource[:api_version].nil?
    path_params[:tenant_id] = key_values["tenantID"] unless key_values["tenantID"].nil?
    path_params[:tenant_id] = ENV["azure_tenant_id"] unless ENV["azure_tenant_id"].nil?
    path_params[:tenant_id] = resource[:tenant_id] unless resource.nil? or resource[:tenant_id].nil?
    path_params[:upn_or_object_id] = key_values["upnOrObjectId"] unless key_values["upnOrObjectId"].nil?
    path_params[:upn_or_object_id] = ENV["azure_upn_or_object_id"] unless ENV["azure_upn_or_object_id"].nil?
    path_params[:upn_or_object_id] = resource[:upn_or_object_id] unless resource.nil? or resource[:upn_or_object_id].nil?
    uri_string = "https://graph.windows.net/%{tenant_id}/users/%{upn_or_object_id}" % path_params
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

