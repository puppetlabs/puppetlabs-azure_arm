# require "pry"
# require "pry-rescue"
require "json"

Puppet::Type.type(:azure_solutions_application).provide(:arm) do
  mk_resource_methods

  def initialize(value = {})
    super(value)
    @property_flush = {}
    @is_create = false
    @is_delete = false
  end

  def id=(value)
    Puppet.info("id setter called to change to #{value}")
    @property_flush[:id] = value
  end

  def identity=(value)
    Puppet.info("identity setter called to change to #{value}")
    @property_flush[:identity] = value
  end

  def kind=(value)
    Puppet.info("kind setter called to change to #{value}")
    @property_flush[:kind] = value
  end

  def location=(value)
    Puppet.info("location setter called to change to #{value}")
    @property_flush[:location] = value
  end

  def managed_by=(value)
    Puppet.info("managed_by setter called to change to #{value}")
    @property_flush[:managed_by] = value
  end

  def name=(value)
    Puppet.info("name setter called to change to #{value}")
    @property_flush[:name] = value
  end

  def plan=(value)
    Puppet.info("plan setter called to change to #{value}")
    @property_flush[:plan] = value
  end

  def properties=(value)
    Puppet.info("properties setter called to change to #{value}")
    @property_flush[:properties] = value
  end

  def sku=(value)
    Puppet.info("sku setter called to change to #{value}")
    @property_flush[:sku] = value
  end

  def tags=(value)
    Puppet.info("tags setter called to change to #{value}")
    @property_flush[:tags] = value
  end

  def type=(value)
    Puppet.info("type setter called to change to #{value}")
    @property_flush[:type] = value
  end

  def self.instances
    fetch_all_as_hash
  end

  def self.prefetch(resources)
    instances.each do |prov|
      if (resource = (resources.find { |k, v| k.casecmp(prov.name).zero? } || [])[1])
        resource.provider = prov
      end
    end
  end

  def self.fetch_all_as_hash
    items = self.fetch_all
    if items
      items.collect do |item|
        hash = {

          api_version: item["api-version"],
          id: item["id"],
          identity: item["identity"],
          kind: item["kind"],
          location: item["location"],
          managed_by: item["managedBy"],
          name: item["name"],
          parameters: item["parameters"],
          plan: item["plan"],
          properties: item["properties"],
          resource_group_name: item["resourceGroupName"],
          sku: item["sku"],
          subscription_id: item["subscriptionId"],
          tags: item["tags"],
          type: item["type"],
          ensure: :present,
        }

        self.deep_delete(hash, [:id])

        self.deep_delete(hash, [:properties, "outputs"])
        self.deep_delete(hash, [:properties, "provisioningState"])
        self.deep_delete(hash, [:type])
        Puppet.debug("Adding to collection: #{item}")

        new(hash) if hash
      end.compact
    else
      []
    end
  rescue Exception => ex
    Puppet.alert("ex is #{ex} and backtrace is #{ex.backtrace}")
    raise
  end

  def self.deep_delete(hash_item, tokens)
    if tokens.size == 1
      if hash_item.kind_of?(Array)
        hash_item.map! { |item| deep_delete(item, tokens) }
      else
        hash_item.delete(tokens[0]) unless hash_item.nil? or hash_item[tokens[0]].nil?
      end
    else
      if hash_item.kind_of?(Array)
        hash_item.map! { |item| deep_delete(item, tokens[1..-1]) }
      else
        hash_item[tokens.first] = deep_delete(hash_item[tokens.first], tokens[1..-1]) unless hash_item.nil? or hash_item[tokens[0]].nil?
      end
    end
    return hash_item
  end

  def self.fetch_all
    response = invoke_list_all
    if response.kind_of? Net::HTTPSuccess
      body = JSON.parse(response.body)
      if body.is_a? Hash and body.key? "value"
        return body["value"]
      end
    end
  end

  def self.instance_to_hash(instance)
    {
      ensure: :present,

      api_version: instance.api_version.respond_to?(:to_hash) ? instance.api_version.to_hash : instance.api_version,
      id: instance.id.respond_to?(:to_hash) ? instance.id.to_hash : instance.id,
      identity: instance.identity.respond_to?(:to_hash) ? instance.identity.to_hash : instance.identity,
      kind: instance.kind.respond_to?(:to_hash) ? instance.kind.to_hash : instance.kind,
      location: instance.location.respond_to?(:to_hash) ? instance.location.to_hash : instance.location,
      managed_by: instance.managed_by.respond_to?(:to_hash) ? instance.managed_by.to_hash : instance.managed_by,
      name: instance.name.respond_to?(:to_hash) ? instance.name.to_hash : instance.name,
      parameters: instance.parameters.respond_to?(:to_hash) ? instance.parameters.to_hash : instance.parameters,
      plan: instance.plan.respond_to?(:to_hash) ? instance.plan.to_hash : instance.plan,
      properties: instance.properties.respond_to?(:to_hash) ? instance.properties.to_hash : instance.properties,
      resource_group_name: instance.resource_group_name.respond_to?(:to_hash) ? instance.resource_group_name.to_hash : instance.resource_group_name,
      sku: instance.sku.respond_to?(:to_hash) ? instance.sku.to_hash : instance.sku,
      subscription_id: instance.subscription_id.respond_to?(:to_hash) ? instance.subscription_id.to_hash : instance.subscription_id,
      tags: instance.tags.respond_to?(:to_hash) ? instance.tags.to_hash : instance.tags,
      type: instance.type.respond_to?(:to_hash) ? instance.type.to_hash : instance.type,
      object: instance,
    }
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
    application["id"] = resource[:id] unless resource[:id].nil?
    application["identity"] = resource[:identity] unless resource[:identity].nil?
    application["kind"] = resource[:kind] unless resource[:kind].nil?
    application["location"] = resource[:location] unless resource[:location].nil?
    application["managedBy"] = resource[:managed_by] unless resource[:managed_by].nil?
    application["name"] = resource[:name] unless resource[:name].nil?
    application["plan"] = resource[:plan] unless resource[:plan].nil?
    application["properties"] = resource[:properties] unless resource[:properties].nil?
    application["sku"] = resource[:sku] unless resource[:sku].nil?
    application["tags"] = resource[:tags] unless resource[:tags].nil?
    application["type"] = resource[:type] unless resource[:type].nil?
    return application
  end

  def self.build_key_values
    key_values = {}
    key_values["api-version"] = "2018-06-01"
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

  def self.invoke_list_all(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation Applications_ListBySubscription")
    path_params = {}
    query_params = {}
    header_params = {}
    header_params["User-Agent"] = "puppetlabs-azure_arm/0.2.2"

    op_params = [
      self.op_param("api-version", "query", "api_version", "api_version"),
      self.op_param("id", "body", "id", "id"),
      self.op_param("identity", "body", "identity", "identity"),
      self.op_param("kind", "body", "kind", "kind"),
      self.op_param("location", "body", "location", "location"),
      self.op_param("managedby", "body", "managed_by", "managedby"),
      self.op_param("name", "body", "name", "name"),
      self.op_param("plan", "body", "plan", "plan"),
      self.op_param("properties", "body", "properties", "properties"),
      self.op_param("sku", "body", "sku", "sku"),
      self.op_param("subscriptionId", "path", "subscription_id", "subscription_id"),
      self.op_param("tags", "body", "tags", "tags"),
      self.op_param("type", "body", "type", "type"),
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
    self.call_op(path_params, query_params, header_params, body_params, "management.azure.com", "/subscriptions/%{subscription_id}/providers/Microsoft.Solutions/applications", "Get", "[application/json]")
  end

  def self.invoke_create(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation Applications_CreateOrUpdate")
    path_params = {}
    query_params = {}
    header_params = {}
    header_params["User-Agent"] = "puppetlabs-azure_arm/0.2.2"

    op_params = [
      self.op_param("api-version", "query", "api_version", "api_version"),
      self.op_param("applicationName", "path", "name", "application_name"),
      self.op_param("id", "body", "id", "id"),
      self.op_param("identity", "body", "identity", "identity"),
      self.op_param("kind", "body", "kind", "kind"),
      self.op_param("location", "body", "location", "location"),
      self.op_param("managedby", "body", "managed_by", "managedby"),
      self.op_param("name", "body", "name", "name"),
      self.op_param("parameters", "body", "parameters", "parameters"),
      self.op_param("plan", "body", "plan", "plan"),
      self.op_param("properties", "body", "properties", "properties"),
      self.op_param("resourceGroupName", "path", "resource_group_name", "resource_group_name"),
      self.op_param("sku", "body", "sku", "sku"),
      self.op_param("subscriptionId", "path", "subscription_id", "subscription_id"),
      self.op_param("tags", "body", "tags", "tags"),
      self.op_param("type", "body", "type", "type"),
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
    self.call_op(path_params, query_params, header_params, body_params, "management.azure.com", "/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Solutions/applications/%{application_name}", "Put", "[application/json]")
  end

  def self.invoke_update(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation Applications_CreateOrUpdate")
    path_params = {}
    query_params = {}
    header_params = {}
    header_params["User-Agent"] = "puppetlabs-azure_arm/0.2.2"

    op_params = [
      self.op_param("api-version", "query", "api_version", "api_version"),
      self.op_param("applicationName", "path", "name", "application_name"),
      self.op_param("id", "body", "id", "id"),
      self.op_param("identity", "body", "identity", "identity"),
      self.op_param("kind", "body", "kind", "kind"),
      self.op_param("location", "body", "location", "location"),
      self.op_param("managedby", "body", "managed_by", "managedby"),
      self.op_param("name", "body", "name", "name"),
      self.op_param("parameters", "body", "parameters", "parameters"),
      self.op_param("plan", "body", "plan", "plan"),
      self.op_param("properties", "body", "properties", "properties"),
      self.op_param("resourceGroupName", "path", "resource_group_name", "resource_group_name"),
      self.op_param("sku", "body", "sku", "sku"),
      self.op_param("subscriptionId", "path", "subscription_id", "subscription_id"),
      self.op_param("tags", "body", "tags", "tags"),
      self.op_param("type", "body", "type", "type"),
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
    self.call_op(path_params, query_params, header_params, body_params, "management.azure.com", "/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Solutions/applications/%{application_name}", "Put", "[application/json]")
  end

  def self.invoke_delete(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation Applications_DeleteById")
    path_params = {}
    query_params = {}
    header_params = {}
    header_params["User-Agent"] = "puppetlabs-azure_arm/0.2.2"

    op_params = [
      self.op_param("api-version", "query", "api_version", "api_version"),
      self.op_param("applicationId", "path", "id", "application_id"),
      self.op_param("id", "body", "id", "id"),
      self.op_param("identity", "body", "identity", "identity"),
      self.op_param("kind", "body", "kind", "kind"),
      self.op_param("location", "body", "location", "location"),
      self.op_param("managedby", "body", "managed_by", "managedby"),
      self.op_param("name", "body", "name", "name"),
      self.op_param("plan", "body", "plan", "plan"),
      self.op_param("properties", "body", "properties", "properties"),
      self.op_param("sku", "body", "sku", "sku"),
      self.op_param("tags", "body", "tags", "tags"),
      self.op_param("type", "body", "type", "type"),
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
    self.call_op(path_params, query_params, header_params, body_params, "management.azure.com", "/%{application_id}", "Delete", "[application/json]")
  end

  def self.invoke_list_with_params(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation Applications_ListByResourceGroup")
    path_params = {}
    query_params = {}
    header_params = {}
    header_params["User-Agent"] = "puppetlabs-azure_arm/0.2.2"

    op_params = [
      self.op_param("api-version", "query", "api_version", "api_version"),
      self.op_param("id", "body", "id", "id"),
      self.op_param("identity", "body", "identity", "identity"),
      self.op_param("kind", "body", "kind", "kind"),
      self.op_param("location", "body", "location", "location"),
      self.op_param("managedby", "body", "managed_by", "managedby"),
      self.op_param("name", "body", "name", "name"),
      self.op_param("plan", "body", "plan", "plan"),
      self.op_param("properties", "body", "properties", "properties"),
      self.op_param("resourceGroupName", "path", "resource_group_name", "resource_group_name"),
      self.op_param("sku", "body", "sku", "sku"),
      self.op_param("subscriptionId", "path", "subscription_id", "subscription_id"),
      self.op_param("tags", "body", "tags", "tags"),
      self.op_param("type", "body", "type", "type"),
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
    self.call_op(path_params, query_params, header_params, body_params, "management.azure.com", "/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Solutions/applications", "Get", "[application/json]")
  end

  def self.invoke_get_one(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation Applications_GetById")
    path_params = {}
    query_params = {}
    header_params = {}
    header_params["User-Agent"] = "puppetlabs-azure_arm/0.2.2"

    op_params = [
      self.op_param("api-version", "query", "api_version", "api_version"),
      self.op_param("applicationId", "path", "id", "application_id"),
      self.op_param("id", "body", "id", "id"),
      self.op_param("identity", "body", "identity", "identity"),
      self.op_param("kind", "body", "kind", "kind"),
      self.op_param("location", "body", "location", "location"),
      self.op_param("managedby", "body", "managed_by", "managedby"),
      self.op_param("name", "body", "name", "name"),
      self.op_param("plan", "body", "plan", "plan"),
      self.op_param("properties", "body", "properties", "properties"),
      self.op_param("sku", "body", "sku", "sku"),
      self.op_param("tags", "body", "tags", "tags"),
      self.op_param("type", "body", "type", "type"),
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
    self.call_op(path_params, query_params, header_params, body_params, "management.azure.com", "/%{application_id}", "Get", "[application/json]")
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
    return_value = @property_hash[:ensure] && @property_hash[:ensure] != :absent
    Puppet.info("Checking if resource #{name} of type <no value> exists, returning #{return_value}")
    return_value
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
