# require "pry"
# require "pry-rescue"
require "json"

Puppet::Type.type(:azure_application_insights_component_favorite).provide(:arm) do
  mk_resource_methods

  def initialize(value = {})
    super(value)
    @property_flush = {}
    @is_create = false
    @is_delete = false
  end

  def category=(value)
    Puppet.info("category setter called to change to #{value}")
    @property_flush[:category] = value
  end

  def config=(value)
    Puppet.info("config setter called to change to #{value}")
    @property_flush[:config] = value
  end

  def favorite_id=(value)
    Puppet.info("favorite_id setter called to change to #{value}")
    @property_flush[:favorite_id] = value
  end

  def favorite_type=(value)
    Puppet.info("favorite_type setter called to change to #{value}")
    @property_flush[:favorite_type] = value
  end

  def is_generated_from_template=(value)
    Puppet.info("is_generated_from_template setter called to change to #{value}")
    @property_flush[:is_generated_from_template] = value
  end

  def name=(value)
    Puppet.info("name setter called to change to #{value}")
    @property_flush[:name] = value
  end

  def source_type=(value)
    Puppet.info("source_type setter called to change to #{value}")
    @property_flush[:source_type] = value
  end

  def tags=(value)
    Puppet.info("tags setter called to change to #{value}")
    @property_flush[:tags] = value
  end

  def time_modified=(value)
    Puppet.info("time_modified setter called to change to #{value}")
    @property_flush[:time_modified] = value
  end

  def user_id=(value)
    Puppet.info("user_id setter called to change to #{value}")
    @property_flush[:user_id] = value
  end

  def version=(value)
    Puppet.info("version setter called to change to #{value}")
    @property_flush[:version] = value
  end


  def create
    @is_create = true
    Puppet.info("Entered create for resource #{name} of type ApplicationInsightsComponentFavorite")
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
    Puppet.info("Entered flush for resource #{name} of type ApplicationInsightsComponentFavorite - creating ? #{@is_create}, deleting ? #{@is_delete}")
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
    application_insights_component_favorite = {}
    application_insights_component_favorite["Category"] = resource[:category] unless resource[:category].nil?
    application_insights_component_favorite["Config"] = resource[:config] unless resource[:config].nil?
    application_insights_component_favorite["FavoriteId"] = resource[:favorite_id] unless resource[:favorite_id].nil?
    application_insights_component_favorite["FavoriteType"] = resource[:favorite_type] unless resource[:favorite_type].nil?
    application_insights_component_favorite["IsGeneratedFromTemplate"] = resource[:is_generated_from_template] unless resource[:is_generated_from_template].nil?
    application_insights_component_favorite["Name"] = resource[:name] unless resource[:name].nil?
    application_insights_component_favorite["SourceType"] = resource[:source_type] unless resource[:source_type].nil?
    application_insights_component_favorite["Tags"] = resource[:tags] unless resource[:tags].nil?
    application_insights_component_favorite["TimeModified"] = resource[:time_modified] unless resource[:time_modified].nil?
    application_insights_component_favorite["UserId"] = resource[:user_id] unless resource[:user_id].nil?
    application_insights_component_favorite["Version"] = resource[:version] unless resource[:version].nil?
    return application_insights_component_favorite
  end

  def self.build_key_values
    key_values = {}
    key_values["api-version"] = "2015-05-01"
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
    Puppet.info("Calling operation Favorite_Add")
    path_params = {}
    query_params = {}
    header_params = {}
    query_params["api-version"] = key_values["api-version"] unless key_values["api-version"].nil?
    query_params["api-version"] = ENV["azure_api_version"] unless ENV["azure_api_version"].nil?
    query_params["api-version"] = resource[:api_version] unless resource.nil? or resource[:api_version].nil?
    path_params[:favorite_id] = key_values["favoriteId"] unless key_values["favoriteId"].nil?
    path_params[:favorite_id] = ENV["azure_favorite_id"] unless ENV["azure_favorite_id"].nil?
    path_params[:favorite_id] = resource[:favoriteid] unless resource.nil? or resource[:favoriteid].nil?
    path_params[:favorite_properties] = key_values["favoriteProperties"] unless key_values["favoriteProperties"].nil?
    path_params[:favorite_properties] = ENV["azure_favorite_properties"] unless ENV["azure_favorite_properties"].nil?
    path_params[:favorite_properties] = resource[:favorite_properties] unless resource.nil? or resource[:favorite_properties].nil?
    path_params[:resource_group_name] = key_values["resourceGroupName"] unless key_values["resourceGroupName"].nil?
    path_params[:resource_group_name] = ENV["azure_resource_group_name"] unless ENV["azure_resource_group_name"].nil?
    path_params[:resource_group_name] = resource[:resource_group_name] unless resource.nil? or resource[:resource_group_name].nil?
    path_params[:resource_name] = key_values["resourceName"] unless key_values["resourceName"].nil?
    path_params[:resource_name] = ENV["azure_resource_name"] unless ENV["azure_resource_name"].nil?
    path_params[:resource_name] = resource[:resource_name] unless resource.nil? or resource[:resource_name].nil?
    path_params[:subscription_id] = key_values["subscriptionId"] unless key_values["subscriptionId"].nil?
    path_params[:subscription_id] = ENV["azure_subscription_id"] unless ENV["azure_subscription_id"].nil?
    path_params[:subscription_id] = resource[:subscription_id] unless resource.nil? or resource[:subscription_id].nil?
    uri_string = "https://management.azure.com/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/components/%{resource_name}/favorites/%{favorite_id}" % path_params
    uri_string = uri_string + "?" + to_query(query_params)
    header_params['Content-Type'] = 'application/json' # first of [application/json]
    if authenticate(path_params, query_params, header_params, body_params)
      Puppet.info("Authentication succeeded")
      uri = URI(uri_string)
      Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        req = Net::HTTP::Put.new(uri)
        add_keys_to_request(req, header_params)
        if body_params
          req.body = body_params.to_json
        end
        Puppet.debug("URI is (Put) #{uri}, body is #{body_params}, query params are #{query_params}, headers are #{header_params}")
        response = http.request req # Net::HTTPResponse object
        Puppet.debug("response code is #{response.code} and body is #{response.body}")
        success = response.is_a? Net::HTTPSuccess
        Puppet.info("Called (Put) endpoint at #{uri}, success was #{success}")
        return response
      end
    end
  end

  def self.invoke_update(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation Favorite_Add")
    path_params = {}
    query_params = {}
    header_params = {}
    query_params["api-version"] = key_values["api-version"] unless key_values["api-version"].nil?
    query_params["api-version"] = ENV["azure_api_version"] unless ENV["azure_api_version"].nil?
    query_params["api-version"] = resource[:api_version] unless resource.nil? or resource[:api_version].nil?
    path_params[:favorite_id] = key_values["favoriteId"] unless key_values["favoriteId"].nil?
    path_params[:favorite_id] = ENV["azure_favorite_id"] unless ENV["azure_favorite_id"].nil?
    path_params[:favorite_id] = resource[:favoriteid] unless resource.nil? or resource[:favoriteid].nil?
    path_params[:favorite_properties] = key_values["favoriteProperties"] unless key_values["favoriteProperties"].nil?
    path_params[:favorite_properties] = ENV["azure_favorite_properties"] unless ENV["azure_favorite_properties"].nil?
    path_params[:favorite_properties] = resource[:favorite_properties] unless resource.nil? or resource[:favorite_properties].nil?
    path_params[:resource_group_name] = key_values["resourceGroupName"] unless key_values["resourceGroupName"].nil?
    path_params[:resource_group_name] = ENV["azure_resource_group_name"] unless ENV["azure_resource_group_name"].nil?
    path_params[:resource_group_name] = resource[:resource_group_name] unless resource.nil? or resource[:resource_group_name].nil?
    path_params[:resource_name] = key_values["resourceName"] unless key_values["resourceName"].nil?
    path_params[:resource_name] = ENV["azure_resource_name"] unless ENV["azure_resource_name"].nil?
    path_params[:resource_name] = resource[:resource_name] unless resource.nil? or resource[:resource_name].nil?
    path_params[:subscription_id] = key_values["subscriptionId"] unless key_values["subscriptionId"].nil?
    path_params[:subscription_id] = ENV["azure_subscription_id"] unless ENV["azure_subscription_id"].nil?
    path_params[:subscription_id] = resource[:subscription_id] unless resource.nil? or resource[:subscription_id].nil?
    uri_string = "https://management.azure.com/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/components/%{resource_name}/favorites/%{favorite_id}" % path_params
    uri_string = uri_string + "?" + to_query(query_params)
    header_params['Content-Type'] = 'application/json' # first of [application/json]
    if authenticate(path_params, query_params, header_params, body_params)
      Puppet.info("Authentication succeeded")
      uri = URI(uri_string)
      Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
        req = Net::HTTP::Put.new(uri)
        add_keys_to_request(req, header_params)
        if body_params
          req.body = body_params.to_json
        end
        Puppet.debug("URI is (Put) #{uri}, body is #{body_params}, query params are #{query_params}, headers are #{header_params}")
        response = http.request req # Net::HTTPResponse object
        Puppet.debug("response code is #{response.code} and body is #{response.body}")
        success = response.is_a? Net::HTTPSuccess
        Puppet.info("Called (Put) endpoint at #{uri}, success was #{success}")
        return response
      end
    end
  end

  def self.invoke_delete(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation Favorite_Delete")
    path_params = {}
    query_params = {}
    header_params = {}
    query_params["api-version"] = key_values["api-version"] unless key_values["api-version"].nil?
    query_params["api-version"] = ENV["azure_api_version"] unless ENV["azure_api_version"].nil?
    query_params["api-version"] = resource[:api_version] unless resource.nil? or resource[:api_version].nil?
    path_params[:favorite_id] = key_values["favoriteId"] unless key_values["favoriteId"].nil?
    path_params[:favorite_id] = ENV["azure_favorite_id"] unless ENV["azure_favorite_id"].nil?
    path_params[:favorite_id] = resource[:favoriteid] unless resource.nil? or resource[:favoriteid].nil?
    path_params[:resource_group_name] = key_values["resourceGroupName"] unless key_values["resourceGroupName"].nil?
    path_params[:resource_group_name] = ENV["azure_resource_group_name"] unless ENV["azure_resource_group_name"].nil?
    path_params[:resource_group_name] = resource[:resource_group_name] unless resource.nil? or resource[:resource_group_name].nil?
    path_params[:resource_name] = key_values["resourceName"] unless key_values["resourceName"].nil?
    path_params[:resource_name] = ENV["azure_resource_name"] unless ENV["azure_resource_name"].nil?
    path_params[:resource_name] = resource[:resource_name] unless resource.nil? or resource[:resource_name].nil?
    path_params[:subscription_id] = key_values["subscriptionId"] unless key_values["subscriptionId"].nil?
    path_params[:subscription_id] = ENV["azure_subscription_id"] unless ENV["azure_subscription_id"].nil?
    path_params[:subscription_id] = resource[:subscription_id] unless resource.nil? or resource[:subscription_id].nil?
    uri_string = "https://management.azure.com/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/components/%{resource_name}/favorites/%{favorite_id}" % path_params
    uri_string = uri_string + "?" + to_query(query_params)
    header_params['Content-Type'] = 'application/json' # first of [application/json]
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
    Puppet.info("Calling operation Favorites_List")
    path_params = {}
    query_params = {}
    header_params = {}
    query_params["api-version"] = key_values["api-version"] unless key_values["api-version"].nil?
    query_params["api-version"] = ENV["azure_api_version"] unless ENV["azure_api_version"].nil?
    query_params["api-version"] = resource[:api_version] unless resource.nil? or resource[:api_version].nil?
    query_params["canFetchContent"] = key_values["canFetchContent"] unless key_values["canFetchContent"].nil?
    query_params["canFetchContent"] = ENV["azure_can_fetch_content"] unless ENV["azure_can_fetch_content"].nil?
    query_params["canFetchContent"] = resource[:can_fetch_content] unless resource.nil? or resource[:can_fetch_content].nil?
    query_params["favoriteType"] = key_values["favoriteType"] unless key_values["favoriteType"].nil?
    query_params["favoriteType"] = ENV["azure_favorite_type"] unless ENV["azure_favorite_type"].nil?
    query_params["favoriteType"] = resource[:favoritetype] unless resource.nil? or resource[:favoritetype].nil?
    path_params[:resource_group_name] = key_values["resourceGroupName"] unless key_values["resourceGroupName"].nil?
    path_params[:resource_group_name] = ENV["azure_resource_group_name"] unless ENV["azure_resource_group_name"].nil?
    path_params[:resource_group_name] = resource[:resource_group_name] unless resource.nil? or resource[:resource_group_name].nil?
    path_params[:resource_name] = key_values["resourceName"] unless key_values["resourceName"].nil?
    path_params[:resource_name] = ENV["azure_resource_name"] unless ENV["azure_resource_name"].nil?
    path_params[:resource_name] = resource[:resource_name] unless resource.nil? or resource[:resource_name].nil?
    query_params["sourceType"] = key_values["sourceType"] unless key_values["sourceType"].nil?
    query_params["sourceType"] = ENV["azure_source_type"] unless ENV["azure_source_type"].nil?
    query_params["sourceType"] = resource[:sourcetype] unless resource.nil? or resource[:sourcetype].nil?
    path_params[:subscription_id] = key_values["subscriptionId"] unless key_values["subscriptionId"].nil?
    path_params[:subscription_id] = ENV["azure_subscription_id"] unless ENV["azure_subscription_id"].nil?
    path_params[:subscription_id] = resource[:subscription_id] unless resource.nil? or resource[:subscription_id].nil?
    query_params["tags"] = key_values["tags"] unless key_values["tags"].nil?
    query_params["tags"] = ENV["azure_tags"] unless ENV["azure_tags"].nil?
    query_params["tags"] = resource[:tags] unless resource.nil? or resource[:tags].nil?
    uri_string = "https://management.azure.com/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/components/%{resource_name}/favorites" % path_params
    uri_string = uri_string + "?" + to_query(query_params)
    header_params['Content-Type'] = 'application/json' # first of [application/json]
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
    Puppet.info("Calling operation Favorite_Get")
    path_params = {}
    query_params = {}
    header_params = {}
    query_params["api-version"] = key_values["api-version"] unless key_values["api-version"].nil?
    query_params["api-version"] = ENV["azure_api_version"] unless ENV["azure_api_version"].nil?
    query_params["api-version"] = resource[:api_version] unless resource.nil? or resource[:api_version].nil?
    path_params[:favorite_id] = key_values["favoriteId"] unless key_values["favoriteId"].nil?
    path_params[:favorite_id] = ENV["azure_favorite_id"] unless ENV["azure_favorite_id"].nil?
    path_params[:favorite_id] = resource[:favoriteid] unless resource.nil? or resource[:favoriteid].nil?
    path_params[:resource_group_name] = key_values["resourceGroupName"] unless key_values["resourceGroupName"].nil?
    path_params[:resource_group_name] = ENV["azure_resource_group_name"] unless ENV["azure_resource_group_name"].nil?
    path_params[:resource_group_name] = resource[:resource_group_name] unless resource.nil? or resource[:resource_group_name].nil?
    path_params[:resource_name] = key_values["resourceName"] unless key_values["resourceName"].nil?
    path_params[:resource_name] = ENV["azure_resource_name"] unless ENV["azure_resource_name"].nil?
    path_params[:resource_name] = resource[:resource_name] unless resource.nil? or resource[:resource_name].nil?
    path_params[:subscription_id] = key_values["subscriptionId"] unless key_values["subscriptionId"].nil?
    path_params[:subscription_id] = ENV["azure_subscription_id"] unless ENV["azure_subscription_id"].nil?
    path_params[:subscription_id] = resource[:subscription_id] unless resource.nil? or resource[:subscription_id].nil?
    uri_string = "https://management.azure.com/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/components/%{resource_name}/favorites/%{favorite_id}" % path_params
    uri_string = uri_string + "?" + to_query(query_params)
    header_params['Content-Type'] = 'application/json' # first of [application/json]
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

