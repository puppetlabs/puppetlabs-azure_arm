# require "pry"
# require "pry-rescue"
require "json"

Puppet::Type.type(:azure_site).provide(:arm) do
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

  def kind=(value)
    Puppet.info("kind setter called to change to #{value}")
    @property_flush[:kind] = value
  end

  def location=(value)
    Puppet.info("location setter called to change to #{value}")
    @property_flush[:location] = value
  end

  def name=(value)
    Puppet.info("name setter called to change to #{value}")
    @property_flush[:name] = value
  end

  def properties=(value)
    Puppet.info("properties setter called to change to #{value}")
    @property_flush[:properties] = value
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
          kind: item["kind"],
          location: item["location"],
          name: item["name"],
          properties: item["properties"],
          resource_group_name: item["resourceGroupName"],
          site_envelope: item["siteEnvelope"],
          slot: item["slot"],
          subscription_id: item["subscriptionId"],
          tags: item["tags"],
          type: item["type"],
          ensure: :present,
        }
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
      kind: instance.kind.respond_to?(:to_hash) ? instance.kind.to_hash : instance.kind,
      location: instance.location.respond_to?(:to_hash) ? instance.location.to_hash : instance.location,
      name: instance.name.respond_to?(:to_hash) ? instance.name.to_hash : instance.name,
      properties: instance.properties.respond_to?(:to_hash) ? instance.properties.to_hash : instance.properties,
      resource_group_name: instance.resource_group_name.respond_to?(:to_hash) ? instance.resource_group_name.to_hash : instance.resource_group_name,
      site_envelope: instance.site_envelope.respond_to?(:to_hash) ? instance.site_envelope.to_hash : instance.site_envelope,
      slot: instance.slot.respond_to?(:to_hash) ? instance.slot.to_hash : instance.slot,
      subscription_id: instance.subscription_id.respond_to?(:to_hash) ? instance.subscription_id.to_hash : instance.subscription_id,
      tags: instance.tags.respond_to?(:to_hash) ? instance.tags.to_hash : instance.tags,
      type: instance.type.respond_to?(:to_hash) ? instance.type.to_hash : instance.type,
      object: instance,
    }
  end

  def create
    @is_create = true
    Puppet.info("Entered create for resource #{name} of type Site")
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
    Puppet.info("Entered flush for resource #{name} of type Site - creating ? #{@is_create}, deleting ? #{@is_delete}")
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
    site = {}
    site["id"] = resource[:id] unless resource[:id].nil?
    site["kind"] = resource[:kind] unless resource[:kind].nil?
    site["location"] = resource[:location] unless resource[:location].nil?
    site["name"] = resource[:name] unless resource[:name].nil?
    site["properties"] = resource[:properties] unless resource[:properties].nil?
    site["tags"] = resource[:tags] unless resource[:tags].nil?
    site["type"] = resource[:type] unless resource[:type].nil?
    return site
  end

  def self.build_key_values
    key_values = {}
    key_values["api-version"] = "2015-08-01"
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
    Puppet.info("Calling operation Global_GetAllSites")
    path_params = {}
    query_params = {}
    header_params = {}
    query_params["api-version"] = key_values["api-version"] unless key_values["api-version"].nil?
    query_params["api-version"] = ENV["azure_api_version"] unless ENV["azure_api_version"].nil?
    query_params["api-version"] = resource[:api_version] unless resource.nil? or resource[:api_version].nil?
    path_params[:subscription_id] = key_values["subscriptionId"] unless key_values["subscriptionId"].nil?
    path_params[:subscription_id] = ENV["azure_subscription_id"] unless ENV["azure_subscription_id"].nil?
    path_params[:subscription_id] = resource[:subscription_id] unless resource.nil? or resource[:subscription_id].nil?
    uri_string = "https://management.azure.com/subscriptions/%{subscription_id}/providers/Microsoft.Web/sites" % path_params
    uri_string = uri_string + "?" + to_query(query_params)
    header_params['Content-Type'] = 'application/json' # first of []
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

  def self.invoke_create(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation Sites_CreateOrUpdateSiteSlot")
    path_params = {}
    query_params = {}
    header_params = {}
    query_params["api-version"] = key_values["api-version"] unless key_values["api-version"].nil?
    query_params["api-version"] = ENV["azure_api_version"] unless ENV["azure_api_version"].nil?
    query_params["api-version"] = resource[:api_version] unless resource.nil? or resource[:api_version].nil?
    query_params["forceDnsRegistration"] = key_values["forceDnsRegistration"] unless key_values["forceDnsRegistration"].nil?
    query_params["forceDnsRegistration"] = ENV["azure_force_dns_registration"] unless ENV["azure_force_dns_registration"].nil?
    query_params["forceDnsRegistration"] = resource[:force_dns_registration] unless resource.nil? or resource[:force_dns_registration].nil?
    path_params[:name] = key_values["name"] unless key_values["name"].nil?
    path_params[:name] = ENV["azure_name"] unless ENV["azure_name"].nil?
    path_params[:name] = resource[:name] unless resource.nil? or resource[:name].nil?
    path_params[:resource_group_name] = key_values["resourceGroupName"] unless key_values["resourceGroupName"].nil?
    path_params[:resource_group_name] = ENV["azure_resource_group_name"] unless ENV["azure_resource_group_name"].nil?
    path_params[:resource_group_name] = resource[:resource_group_name] unless resource.nil? or resource[:resource_group_name].nil?
    path_params[:site_envelope] = key_values["siteEnvelope"] unless key_values["siteEnvelope"].nil?
    path_params[:site_envelope] = ENV["azure_site_envelope"] unless ENV["azure_site_envelope"].nil?
    path_params[:site_envelope] = resource[:site_envelope] unless resource.nil? or resource[:site_envelope].nil?
    query_params["skipCustomDomainVerification"] = key_values["skipCustomDomainVerification"] unless key_values["skipCustomDomainVerification"].nil?
    query_params["skipCustomDomainVerification"] = ENV["azure_skip_custom_domain_verification"] unless ENV["azure_skip_custom_domain_verification"].nil?
    query_params["skipCustomDomainVerification"] = resource[:skip_custom_domain_verification] unless resource.nil? or resource[:skip_custom_domain_verification].nil?
    query_params["skipDnsRegistration"] = key_values["skipDnsRegistration"] unless key_values["skipDnsRegistration"].nil?
    query_params["skipDnsRegistration"] = ENV["azure_skip_dns_registration"] unless ENV["azure_skip_dns_registration"].nil?
    query_params["skipDnsRegistration"] = resource[:skip_dns_registration] unless resource.nil? or resource[:skip_dns_registration].nil?
    path_params[:slot] = key_values["slot"] unless key_values["slot"].nil?
    path_params[:slot] = ENV["azure_slot"] unless ENV["azure_slot"].nil?
    path_params[:slot] = resource[:slot] unless resource.nil? or resource[:slot].nil?
    path_params[:subscription_id] = key_values["subscriptionId"] unless key_values["subscriptionId"].nil?
    path_params[:subscription_id] = ENV["azure_subscription_id"] unless ENV["azure_subscription_id"].nil?
    path_params[:subscription_id] = resource[:subscription_id] unless resource.nil? or resource[:subscription_id].nil?
    query_params["ttlInSeconds"] = key_values["ttlInSeconds"] unless key_values["ttlInSeconds"].nil?
    query_params["ttlInSeconds"] = ENV["azure_ttl_in_seconds"] unless ENV["azure_ttl_in_seconds"].nil?
    query_params["ttlInSeconds"] = resource[:ttl_in_seconds] unless resource.nil? or resource[:ttl_in_seconds].nil?
    uri_string = "https://management.azure.com/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}" % path_params
    uri_string = uri_string + "?" + to_query(query_params)
    header_params['Content-Type'] = 'application/json' # first of []
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
    Puppet.info("Calling operation Sites_CreateOrUpdateSiteSlot")
    path_params = {}
    query_params = {}
    header_params = {}
    query_params["api-version"] = key_values["api-version"] unless key_values["api-version"].nil?
    query_params["api-version"] = ENV["azure_api_version"] unless ENV["azure_api_version"].nil?
    query_params["api-version"] = resource[:api_version] unless resource.nil? or resource[:api_version].nil?
    query_params["forceDnsRegistration"] = key_values["forceDnsRegistration"] unless key_values["forceDnsRegistration"].nil?
    query_params["forceDnsRegistration"] = ENV["azure_force_dns_registration"] unless ENV["azure_force_dns_registration"].nil?
    query_params["forceDnsRegistration"] = resource[:force_dns_registration] unless resource.nil? or resource[:force_dns_registration].nil?
    path_params[:name] = key_values["name"] unless key_values["name"].nil?
    path_params[:name] = ENV["azure_name"] unless ENV["azure_name"].nil?
    path_params[:name] = resource[:name] unless resource.nil? or resource[:name].nil?
    path_params[:resource_group_name] = key_values["resourceGroupName"] unless key_values["resourceGroupName"].nil?
    path_params[:resource_group_name] = ENV["azure_resource_group_name"] unless ENV["azure_resource_group_name"].nil?
    path_params[:resource_group_name] = resource[:resource_group_name] unless resource.nil? or resource[:resource_group_name].nil?
    path_params[:site_envelope] = key_values["siteEnvelope"] unless key_values["siteEnvelope"].nil?
    path_params[:site_envelope] = ENV["azure_site_envelope"] unless ENV["azure_site_envelope"].nil?
    path_params[:site_envelope] = resource[:site_envelope] unless resource.nil? or resource[:site_envelope].nil?
    query_params["skipCustomDomainVerification"] = key_values["skipCustomDomainVerification"] unless key_values["skipCustomDomainVerification"].nil?
    query_params["skipCustomDomainVerification"] = ENV["azure_skip_custom_domain_verification"] unless ENV["azure_skip_custom_domain_verification"].nil?
    query_params["skipCustomDomainVerification"] = resource[:skip_custom_domain_verification] unless resource.nil? or resource[:skip_custom_domain_verification].nil?
    query_params["skipDnsRegistration"] = key_values["skipDnsRegistration"] unless key_values["skipDnsRegistration"].nil?
    query_params["skipDnsRegistration"] = ENV["azure_skip_dns_registration"] unless ENV["azure_skip_dns_registration"].nil?
    query_params["skipDnsRegistration"] = resource[:skip_dns_registration] unless resource.nil? or resource[:skip_dns_registration].nil?
    path_params[:slot] = key_values["slot"] unless key_values["slot"].nil?
    path_params[:slot] = ENV["azure_slot"] unless ENV["azure_slot"].nil?
    path_params[:slot] = resource[:slot] unless resource.nil? or resource[:slot].nil?
    path_params[:subscription_id] = key_values["subscriptionId"] unless key_values["subscriptionId"].nil?
    path_params[:subscription_id] = ENV["azure_subscription_id"] unless ENV["azure_subscription_id"].nil?
    path_params[:subscription_id] = resource[:subscription_id] unless resource.nil? or resource[:subscription_id].nil?
    query_params["ttlInSeconds"] = key_values["ttlInSeconds"] unless key_values["ttlInSeconds"].nil?
    query_params["ttlInSeconds"] = ENV["azure_ttl_in_seconds"] unless ENV["azure_ttl_in_seconds"].nil?
    query_params["ttlInSeconds"] = resource[:ttl_in_seconds] unless resource.nil? or resource[:ttl_in_seconds].nil?
    uri_string = "https://management.azure.com/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}" % path_params
    uri_string = uri_string + "?" + to_query(query_params)
    header_params['Content-Type'] = 'application/json' # first of []
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
    Puppet.info("Calling operation Sites_DeleteSiteSlot")
    path_params = {}
    query_params = {}
    header_params = {}
    query_params["api-version"] = key_values["api-version"] unless key_values["api-version"].nil?
    query_params["api-version"] = ENV["azure_api_version"] unless ENV["azure_api_version"].nil?
    query_params["api-version"] = resource[:api_version] unless resource.nil? or resource[:api_version].nil?
    query_params["deleteAllSlots"] = key_values["deleteAllSlots"] unless key_values["deleteAllSlots"].nil?
    query_params["deleteAllSlots"] = ENV["azure_delete_all_slots"] unless ENV["azure_delete_all_slots"].nil?
    query_params["deleteAllSlots"] = resource[:delete_all_slots] unless resource.nil? or resource[:delete_all_slots].nil?
    query_params["deleteEmptyServerFarm"] = key_values["deleteEmptyServerFarm"] unless key_values["deleteEmptyServerFarm"].nil?
    query_params["deleteEmptyServerFarm"] = ENV["azure_delete_empty_server_farm"] unless ENV["azure_delete_empty_server_farm"].nil?
    query_params["deleteEmptyServerFarm"] = resource[:delete_empty_server_farm] unless resource.nil? or resource[:delete_empty_server_farm].nil?
    query_params["deleteMetrics"] = key_values["deleteMetrics"] unless key_values["deleteMetrics"].nil?
    query_params["deleteMetrics"] = ENV["azure_delete_metrics"] unless ENV["azure_delete_metrics"].nil?
    query_params["deleteMetrics"] = resource[:delete_metrics] unless resource.nil? or resource[:delete_metrics].nil?
    path_params[:name] = key_values["name"] unless key_values["name"].nil?
    path_params[:name] = ENV["azure_name"] unless ENV["azure_name"].nil?
    path_params[:name] = resource[:name] unless resource.nil? or resource[:name].nil?
    path_params[:resource_group_name] = key_values["resourceGroupName"] unless key_values["resourceGroupName"].nil?
    path_params[:resource_group_name] = ENV["azure_resource_group_name"] unless ENV["azure_resource_group_name"].nil?
    path_params[:resource_group_name] = resource[:resource_group_name] unless resource.nil? or resource[:resource_group_name].nil?
    query_params["skipDnsRegistration"] = key_values["skipDnsRegistration"] unless key_values["skipDnsRegistration"].nil?
    query_params["skipDnsRegistration"] = ENV["azure_skip_dns_registration"] unless ENV["azure_skip_dns_registration"].nil?
    query_params["skipDnsRegistration"] = resource[:skip_dns_registration] unless resource.nil? or resource[:skip_dns_registration].nil?
    path_params[:slot] = key_values["slot"] unless key_values["slot"].nil?
    path_params[:slot] = ENV["azure_slot"] unless ENV["azure_slot"].nil?
    path_params[:slot] = resource[:slot] unless resource.nil? or resource[:slot].nil?
    path_params[:subscription_id] = key_values["subscriptionId"] unless key_values["subscriptionId"].nil?
    path_params[:subscription_id] = ENV["azure_subscription_id"] unless ENV["azure_subscription_id"].nil?
    path_params[:subscription_id] = resource[:subscription_id] unless resource.nil? or resource[:subscription_id].nil?
    uri_string = "https://management.azure.com/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}" % path_params
    uri_string = uri_string + "?" + to_query(query_params)
    header_params['Content-Type'] = 'application/json' # first of []
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
    Puppet.info("Calling operation Global_GetAllSites")
    path_params = {}
    query_params = {}
    header_params = {}
    query_params["api-version"] = key_values["api-version"] unless key_values["api-version"].nil?
    query_params["api-version"] = ENV["azure_api_version"] unless ENV["azure_api_version"].nil?
    query_params["api-version"] = resource[:api_version] unless resource.nil? or resource[:api_version].nil?
    path_params[:subscription_id] = key_values["subscriptionId"] unless key_values["subscriptionId"].nil?
    path_params[:subscription_id] = ENV["azure_subscription_id"] unless ENV["azure_subscription_id"].nil?
    path_params[:subscription_id] = resource[:subscription_id] unless resource.nil? or resource[:subscription_id].nil?
    uri_string = "https://management.azure.com/subscriptions/%{subscription_id}/providers/Microsoft.Web/sites" % path_params
    uri_string = uri_string + "?" + to_query(query_params)
    header_params['Content-Type'] = 'application/json' # first of []
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
    Puppet.info("Calling operation Sites_GetSiteSlot")
    path_params = {}
    query_params = {}
    header_params = {}
    query_params["api-version"] = key_values["api-version"] unless key_values["api-version"].nil?
    query_params["api-version"] = ENV["azure_api_version"] unless ENV["azure_api_version"].nil?
    query_params["api-version"] = resource[:api_version] unless resource.nil? or resource[:api_version].nil?
    path_params[:name] = key_values["name"] unless key_values["name"].nil?
    path_params[:name] = ENV["azure_name"] unless ENV["azure_name"].nil?
    path_params[:name] = resource[:name] unless resource.nil? or resource[:name].nil?
    query_params["propertiesToInclude"] = key_values["propertiesToInclude"] unless key_values["propertiesToInclude"].nil?
    query_params["propertiesToInclude"] = ENV["azure_properties_to_include"] unless ENV["azure_properties_to_include"].nil?
    query_params["propertiesToInclude"] = resource[:properties_to_include] unless resource.nil? or resource[:properties_to_include].nil?
    path_params[:resource_group_name] = key_values["resourceGroupName"] unless key_values["resourceGroupName"].nil?
    path_params[:resource_group_name] = ENV["azure_resource_group_name"] unless ENV["azure_resource_group_name"].nil?
    path_params[:resource_group_name] = resource[:resource_group_name] unless resource.nil? or resource[:resource_group_name].nil?
    path_params[:slot] = key_values["slot"] unless key_values["slot"].nil?
    path_params[:slot] = ENV["azure_slot"] unless ENV["azure_slot"].nil?
    path_params[:slot] = resource[:slot] unless resource.nil? or resource[:slot].nil?
    path_params[:subscription_id] = key_values["subscriptionId"] unless key_values["subscriptionId"].nil?
    path_params[:subscription_id] = ENV["azure_subscription_id"] unless ENV["azure_subscription_id"].nil?
    path_params[:subscription_id] = resource[:subscription_id] unless resource.nil? or resource[:subscription_id].nil?
    uri_string = "https://management.azure.com/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}" % path_params
    uri_string = uri_string + "?" + to_query(query_params)
    header_params['Content-Type'] = 'application/json' # first of []
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
end # this is the end of the ruby class

