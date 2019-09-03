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
    Puppet.info("Calling operation Favorites_Add")
    path_params = {}
    query_params = {}
    header_params = {}
    header_params["User-Agent"] = "puppetlabs-azure_arm/0.2.2"

    op_params = [
      self.op_param("api-version", "query", "api_version", "api_version"),
      self.op_param("category", "body", "category", "category"),
      self.op_param("config", "body", "config", "config"),
      self.op_param("favorite_id", "path", "favorite_id", "favorite_id"),
      self.op_param("favoriteid", "body", "favorite_id", "favoriteid"),
      self.op_param("favoriteProperties", "body", "favorite_properties", "favorite_properties"),
      self.op_param("favoritetype", "body", "favorite_type", "favoritetype"),
      self.op_param("isgeneratedfromtemplate", "body", "is_generated_from_template", "isgeneratedfromtemplate"),
      self.op_param("name", "body", "name", "name"),
      self.op_param("resourceGroupName", "path", "resource_group_name", "resource_group_name"),
      self.op_param("resourceName", "path", "resource_name", "resource_name"),
      self.op_param("sourcetype", "body", "source_type", "sourcetype"),
      self.op_param("subscriptionId", "path", "subscription_id", "subscription_id"),
      self.op_param("tags", "body", "tags", "tags"),
      self.op_param("timemodified", "body", "time_modified", "timemodified"),
      self.op_param("userid", "body", "user_id", "userid"),
      self.op_param("version", "body", "version", "version"),
    ]
    op_params.each do |i|
      inquery = i[:inquery]
      name = i[:name]
      paramalias = i[:paramalias]
      name_snake = i[:namesnake]
      if inquery == "query"
        query_params[name] = key_values[name] unless key_values[name].nil?
        query_params[name] = ENV["azure_#{name_snake}"] unless ENV["azure_#{name_snake}"].nil?
        query_params[name] = resource[paramalias.to_sym] unless resource.nil? || resource[paramalias.to_sym].nil?
      else
        path_params[name_snake.to_sym] = key_values[name] unless key_values[name].nil?
        path_params[name_snake.to_sym] = ENV["azure_#{name_snake}"] unless ENV["azure_#{name_snake}"].nil?
        path_params[name_snake.to_sym] = resource[paramalias.to_sym] unless resource.nil? || resource[paramalias.to_sym].nil?
      end
    end
    self.call_op(path_params, query_params, header_params, body_params, "management.azure.com", "/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/components/%{resource_name}/favorites/%{favorite_id}", "Put", "[application/json]")
  end

  def self.invoke_update(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation Favorites_Add")
    path_params = {}
    query_params = {}
    header_params = {}
    header_params["User-Agent"] = "puppetlabs-azure_arm/0.2.2"

    op_params = [
      self.op_param("api-version", "query", "api_version", "api_version"),
      self.op_param("category", "body", "category", "category"),
      self.op_param("config", "body", "config", "config"),
      self.op_param("favorite_id", "path", "favorite_id", "favorite_id"),
      self.op_param("favoriteid", "body", "favorite_id", "favoriteid"),
      self.op_param("favoriteProperties", "body", "favorite_properties", "favorite_properties"),
      self.op_param("favoritetype", "body", "favorite_type", "favoritetype"),
      self.op_param("isgeneratedfromtemplate", "body", "is_generated_from_template", "isgeneratedfromtemplate"),
      self.op_param("name", "body", "name", "name"),
      self.op_param("resourceGroupName", "path", "resource_group_name", "resource_group_name"),
      self.op_param("resourceName", "path", "resource_name", "resource_name"),
      self.op_param("sourcetype", "body", "source_type", "sourcetype"),
      self.op_param("subscriptionId", "path", "subscription_id", "subscription_id"),
      self.op_param("tags", "body", "tags", "tags"),
      self.op_param("timemodified", "body", "time_modified", "timemodified"),
      self.op_param("userid", "body", "user_id", "userid"),
      self.op_param("version", "body", "version", "version"),
    ]
    op_params.each do |i|
      inquery = i[:inquery]
      name = i[:name]
      paramalias = i[:paramalias]
      name_snake = i[:namesnake]
      if inquery == "query"
        query_params[name] = key_values[name] unless key_values[name].nil?
        query_params[name] = ENV["azure_#{name_snake}"] unless ENV["azure_#{name_snake}"].nil?
        query_params[name] = resource[paramalias.to_sym] unless resource.nil? || resource[paramalias.to_sym].nil?
      else
        path_params[name_snake.to_sym] = key_values[name] unless key_values[name].nil?
        path_params[name_snake.to_sym] = ENV["azure_#{name_snake}"] unless ENV["azure_#{name_snake}"].nil?
        path_params[name_snake.to_sym] = resource[paramalias.to_sym] unless resource.nil? || resource[paramalias.to_sym].nil?
      end
    end
    self.call_op(path_params, query_params, header_params, body_params, "management.azure.com", "/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/components/%{resource_name}/favorites/%{favorite_id}", "Put", "[application/json]")
  end

  def self.invoke_delete(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation Favorites_Delete")
    path_params = {}
    query_params = {}
    header_params = {}
    header_params["User-Agent"] = "puppetlabs-azure_arm/0.2.2"

    op_params = [
      self.op_param("api-version", "query", "api_version", "api_version"),
      self.op_param("category", "body", "category", "category"),
      self.op_param("config", "body", "config", "config"),
      self.op_param("favorite_id", "path", "favorite_id", "favorite_id"),
      self.op_param("favoriteid", "body", "favorite_id", "favoriteid"),
      self.op_param("favoritetype", "body", "favorite_type", "favoritetype"),
      self.op_param("isgeneratedfromtemplate", "body", "is_generated_from_template", "isgeneratedfromtemplate"),
      self.op_param("name", "body", "name", "name"),
      self.op_param("resourceGroupName", "path", "resource_group_name", "resource_group_name"),
      self.op_param("resourceName", "path", "resource_name", "resource_name"),
      self.op_param("sourcetype", "body", "source_type", "sourcetype"),
      self.op_param("subscriptionId", "path", "subscription_id", "subscription_id"),
      self.op_param("tags", "body", "tags", "tags"),
      self.op_param("timemodified", "body", "time_modified", "timemodified"),
      self.op_param("userid", "body", "user_id", "userid"),
      self.op_param("version", "body", "version", "version"),
    ]
    op_params.each do |i|
      inquery = i[:inquery]
      name = i[:name]
      paramalias = i[:paramalias]
      name_snake = i[:namesnake]
      if inquery == "query"
        query_params[name] = key_values[name] unless key_values[name].nil?
        query_params[name] = ENV["azure_#{name_snake}"] unless ENV["azure_#{name_snake}"].nil?
        query_params[name] = resource[paramalias.to_sym] unless resource.nil? || resource[paramalias.to_sym].nil?
      else
        path_params[name_snake.to_sym] = key_values[name] unless key_values[name].nil?
        path_params[name_snake.to_sym] = ENV["azure_#{name_snake}"] unless ENV["azure_#{name_snake}"].nil?
        path_params[name_snake.to_sym] = resource[paramalias.to_sym] unless resource.nil? || resource[paramalias.to_sym].nil?
      end
    end
    self.call_op(path_params, query_params, header_params, body_params, "management.azure.com", "/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/components/%{resource_name}/favorites/%{favorite_id}", "Delete", "[application/json]")
  end

  def self.invoke_list_with_params(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation Favorites_List")
    path_params = {}
    query_params = {}
    header_params = {}
    header_params["User-Agent"] = "puppetlabs-azure_arm/0.2.2"

    op_params = [
      self.op_param("api-version", "query", "api_version", "api_version"),
      self.op_param("canFetchContent", "query", "can_fetch_content", "can_fetch_content"),
      self.op_param("category", "body", "category", "category"),
      self.op_param("config", "body", "config", "config"),
      self.op_param("favoriteid", "body", "favorite_id", "favoriteid"),
      self.op_param("favoritetype", "body", "favorite_type", "favoritetype"),
      self.op_param("isgeneratedfromtemplate", "body", "is_generated_from_template", "isgeneratedfromtemplate"),
      self.op_param("name", "body", "name", "name"),
      self.op_param("resourceGroupName", "path", "resource_group_name", "resource_group_name"),
      self.op_param("resourceName", "path", "resource_name", "resource_name"),
      self.op_param("sourcetype", "body", "source_type", "sourcetype"),
      self.op_param("subscriptionId", "path", "subscription_id", "subscription_id"),
      self.op_param("tags", "body", "tags", "tags"),
      self.op_param("timemodified", "body", "time_modified", "timemodified"),
      self.op_param("userid", "body", "user_id", "userid"),
      self.op_param("version", "body", "version", "version"),
    ]
    op_params.each do |i|
      inquery = i[:inquery]
      name = i[:name]
      paramalias = i[:paramalias]
      name_snake = i[:namesnake]
      if inquery == "query"
        query_params[name] = key_values[name] unless key_values[name].nil?
        query_params[name] = ENV["azure_#{name_snake}"] unless ENV["azure_#{name_snake}"].nil?
        query_params[name] = resource[paramalias.to_sym] unless resource.nil? || resource[paramalias.to_sym].nil?
      else
        path_params[name_snake.to_sym] = key_values[name] unless key_values[name].nil?
        path_params[name_snake.to_sym] = ENV["azure_#{name_snake}"] unless ENV["azure_#{name_snake}"].nil?
        path_params[name_snake.to_sym] = resource[paramalias.to_sym] unless resource.nil? || resource[paramalias.to_sym].nil?
      end
    end
    self.call_op(path_params, query_params, header_params, body_params, "management.azure.com", "/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/components/%{resource_name}/favorites", "Get", "[application/json]")
  end

  def self.invoke_get_one(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation Favorites_Get")
    path_params = {}
    query_params = {}
    header_params = {}
    header_params["User-Agent"] = "puppetlabs-azure_arm/0.2.2"

    op_params = [
      self.op_param("api-version", "query", "api_version", "api_version"),
      self.op_param("category", "body", "category", "category"),
      self.op_param("config", "body", "config", "config"),
      self.op_param("favorite_id", "path", "favorite_id", "favorite_id"),
      self.op_param("favoriteid", "body", "favorite_id", "favoriteid"),
      self.op_param("favoritetype", "body", "favorite_type", "favoritetype"),
      self.op_param("isgeneratedfromtemplate", "body", "is_generated_from_template", "isgeneratedfromtemplate"),
      self.op_param("name", "body", "name", "name"),
      self.op_param("resourceGroupName", "path", "resource_group_name", "resource_group_name"),
      self.op_param("resourceName", "path", "resource_name", "resource_name"),
      self.op_param("sourcetype", "body", "source_type", "sourcetype"),
      self.op_param("subscriptionId", "path", "subscription_id", "subscription_id"),
      self.op_param("tags", "body", "tags", "tags"),
      self.op_param("timemodified", "body", "time_modified", "timemodified"),
      self.op_param("userid", "body", "user_id", "userid"),
      self.op_param("version", "body", "version", "version"),
    ]
    op_params.each do |i|
      inquery = i[:inquery]
      name = i[:name]
      paramalias = i[:paramalias]
      name_snake = i[:namesnake]
      if inquery == "query"
        query_params[name] = key_values[name] unless key_values[name].nil?
        query_params[name] = ENV["azure_#{name_snake}"] unless ENV["azure_#{name_snake}"].nil?
        query_params[name] = resource[paramalias.to_sym] unless resource.nil? || resource[paramalias.to_sym].nil?
      else
        path_params[name_snake.to_sym] = key_values[name] unless key_values[name].nil?
        path_params[name_snake.to_sym] = ENV["azure_#{name_snake}"] unless ENV["azure_#{name_snake}"].nil?
        path_params[name_snake.to_sym] = resource[paramalias.to_sym] unless resource.nil? || resource[paramalias.to_sym].nil?
      end
    end
    self.call_op(path_params, query_params, header_params, body_params, "management.azure.com", "/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/components/%{resource_name}/favorites/%{favorite_id}", "Get", "[application/json]")
  end

  def self.authenticate(path_params, query_params, header_params, body_params)
    token = fetch_oauth2_token
    if token
      header_params["Authorization"] = "Bearer #{token}"
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
                                   "grant_type" => "client_credentials",
                                   "client_id" => @client_id,
                                   "client_secret" => @client_secret,
                                   "resource" => "https://management.azure.com/")

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

  def self.op_param(name, inquery, paramalias, namesnake)
    operation_param = { :name => name, :inquery => inquery, :paramalias => paramalias, :namesnake => namesnake }
    return operation_param
  end

  def self.call_op(path_params, query_params, header_params, body_params, parent_host, operation_path, operation_verb, parent_consumes)
    uri_string = "https://#{parent_host}#{operation_path}" % path_params
    uri_string = uri_string + "?" + to_query(query_params)
    header_params["Content-Type"] = "application/json" # first of #{parent_consumes}
    if authenticate(path_params, query_params, header_params, body_params)
      Puppet.info("Authentication succeeded")
      uri = URI(uri_string)
      Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == "https") do |http|
        if operation_verb == "Get"
          req = Net::HTTP::Get.new(uri)
        elsif operation_verb == "Put"
          req = Net::HTTP::Put.new(uri)
        elsif operation_verb == "Delete"
          req = Net::HTTP::Delete.new(uri)
        end
        add_keys_to_request(req, header_params)
        if body_params
          req.body = body_params.to_json
        end
        Puppet.debug("URI is (#{operation_verb}) #{uri}, body is #{body_params}, query params are #{query_params}, headers are #{header_params}")
        response = http.request req # Net::HTTPResponse object
        Puppet.debug("response code is #{response.code} and body is #{response.body}")
        success = response.is_a? Net::HTTPSuccess
        Puppet.info("Called (#{operation_verb}) endpoint at #{uri}, success was #{success}")
        return response
      end
    end
  end
end
# this is the end of the ruby class
