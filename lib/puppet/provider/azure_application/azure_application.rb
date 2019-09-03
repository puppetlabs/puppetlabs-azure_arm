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

  def allow_guests_sign_in=(value)
    Puppet.info("allow_guests_sign_in setter called to change to #{value}")
    @property_flush[:allow_guests_sign_in] = value
  end

  def allow_passthrough_users=(value)
    Puppet.info("allow_passthrough_users setter called to change to #{value}")
    @property_flush[:allow_passthrough_users] = value
  end

  def app_id=(value)
    Puppet.info("app_id setter called to change to #{value}")
    @property_flush[:app_id] = value
  end

  def app_logo_url=(value)
    Puppet.info("app_logo_url setter called to change to #{value}")
    @property_flush[:app_logo_url] = value
  end

  def app_permissions=(value)
    Puppet.info("app_permissions setter called to change to #{value}")
    @property_flush[:app_permissions] = value
  end

  def app_roles=(value)
    Puppet.info("app_roles setter called to change to #{value}")
    @property_flush[:app_roles] = value
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

  def error_url=(value)
    Puppet.info("error_url setter called to change to #{value}")
    @property_flush[:error_url] = value
  end

  def group_membership_claims=(value)
    Puppet.info("group_membership_claims setter called to change to #{value}")
    @property_flush[:group_membership_claims] = value
  end

  def homepage=(value)
    Puppet.info("homepage setter called to change to #{value}")
    @property_flush[:homepage] = value
  end

  def identifier_uris=(value)
    Puppet.info("identifier_uris setter called to change to #{value}")
    @property_flush[:identifier_uris] = value
  end

  def informational_urls=(value)
    Puppet.info("informational_urls setter called to change to #{value}")
    @property_flush[:informational_urls] = value
  end

  def is_device_only_auth_supported=(value)
    Puppet.info("is_device_only_auth_supported setter called to change to #{value}")
    @property_flush[:is_device_only_auth_supported] = value
  end

  def key_credentials=(value)
    Puppet.info("key_credentials setter called to change to #{value}")
    @property_flush[:key_credentials] = value
  end

  def known_client_applications=(value)
    Puppet.info("known_client_applications setter called to change to #{value}")
    @property_flush[:known_client_applications] = value
  end

  def logout_url=(value)
    Puppet.info("logout_url setter called to change to #{value}")
    @property_flush[:logout_url] = value
  end

  def oauth2_allow_implicit_flow=(value)
    Puppet.info("oauth2_allow_implicit_flow setter called to change to #{value}")
    @property_flush[:oauth2_allow_implicit_flow] = value
  end

  def oauth2_allow_url_path_matching=(value)
    Puppet.info("oauth2_allow_url_path_matching setter called to change to #{value}")
    @property_flush[:oauth2_allow_url_path_matching] = value
  end

  def oauth2_permissions=(value)
    Puppet.info("oauth2_permissions setter called to change to #{value}")
    @property_flush[:oauth2_permissions] = value
  end

  def oauth2_require_post_response=(value)
    Puppet.info("oauth2_require_post_response setter called to change to #{value}")
    @property_flush[:oauth2_require_post_response] = value
  end

  def object_id=(value)
    Puppet.info("object_id setter called to change to #{value}")
    @property_flush[:object_id] = value
  end

  def object_type=(value)
    Puppet.info("object_type setter called to change to #{value}")
    @property_flush[:object_type] = value
  end

  def optional_claims=(value)
    Puppet.info("optional_claims setter called to change to #{value}")
    @property_flush[:optional_claims] = value
  end

  def org_restrictions=(value)
    Puppet.info("org_restrictions setter called to change to #{value}")
    @property_flush[:org_restrictions] = value
  end

  def password_credentials=(value)
    Puppet.info("password_credentials setter called to change to #{value}")
    @property_flush[:password_credentials] = value
  end

  def pre_authorized_applications=(value)
    Puppet.info("pre_authorized_applications setter called to change to #{value}")
    @property_flush[:pre_authorized_applications] = value
  end

  def public_client=(value)
    Puppet.info("public_client setter called to change to #{value}")
    @property_flush[:public_client] = value
  end

  def publisher_domain=(value)
    Puppet.info("publisher_domain setter called to change to #{value}")
    @property_flush[:publisher_domain] = value
  end

  def reply_urls=(value)
    Puppet.info("reply_urls setter called to change to #{value}")
    @property_flush[:reply_urls] = value
  end

  def required_resource_access=(value)
    Puppet.info("required_resource_access setter called to change to #{value}")
    @property_flush[:required_resource_access] = value
  end

  def saml_metadata_url=(value)
    Puppet.info("saml_metadata_url setter called to change to #{value}")
    @property_flush[:saml_metadata_url] = value
  end

  def sign_in_audience=(value)
    Puppet.info("sign_in_audience setter called to change to #{value}")
    @property_flush[:sign_in_audience] = value
  end

  def www_homepage=(value)
    Puppet.info("www_homepage setter called to change to #{value}")
    @property_flush[:www_homepage] = value
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
    application["allowGuestsSignIn"] = resource[:allow_guests_sign_in] unless resource[:allow_guests_sign_in].nil?
    application["allowPassthroughUsers"] = resource[:allow_passthrough_users] unless resource[:allow_passthrough_users].nil?
    application["appId"] = resource[:app_id] unless resource[:app_id].nil?
    application["appLogoUrl"] = resource[:app_logo_url] unless resource[:app_logo_url].nil?
    application["appPermissions"] = resource[:app_permissions] unless resource[:app_permissions].nil?
    application["appRoles"] = resource[:app_roles] unless resource[:app_roles].nil?
    application["availableToOtherTenants"] = resource[:available_to_other_tenants] unless resource[:available_to_other_tenants].nil?
    application["deletionTimestamp"] = resource[:deletion_timestamp] unless resource[:deletion_timestamp].nil?
    application["displayName"] = resource[:display_name] unless resource[:display_name].nil?
    application["errorUrl"] = resource[:error_url] unless resource[:error_url].nil?
    application["groupMembershipClaims"] = resource[:group_membership_claims] unless resource[:group_membership_claims].nil?
    application["homepage"] = resource[:homepage] unless resource[:homepage].nil?
    application["identifierUris"] = resource[:identifier_uris] unless resource[:identifier_uris].nil?
    application["informationalUrls"] = resource[:informational_urls] unless resource[:informational_urls].nil?
    application["isDeviceOnlyAuthSupported"] = resource[:is_device_only_auth_supported] unless resource[:is_device_only_auth_supported].nil?
    application["keyCredentials"] = resource[:key_credentials] unless resource[:key_credentials].nil?
    application["knownClientApplications"] = resource[:known_client_applications] unless resource[:known_client_applications].nil?
    application["logoutUrl"] = resource[:logout_url] unless resource[:logout_url].nil?
    application["oauth2AllowImplicitFlow"] = resource[:oauth2_allow_implicit_flow] unless resource[:oauth2_allow_implicit_flow].nil?
    application["oauth2AllowUrlPathMatching"] = resource[:oauth2_allow_url_path_matching] unless resource[:oauth2_allow_url_path_matching].nil?
    application["oauth2Permissions"] = resource[:oauth2_permissions] unless resource[:oauth2_permissions].nil?
    application["oauth2RequirePostResponse"] = resource[:oauth2_require_post_response] unless resource[:oauth2_require_post_response].nil?
    application["objectId"] = resource[:object_id] unless resource[:object_id].nil?
    application["objectType"] = resource[:object_type] unless resource[:object_type].nil?
    application["optionalClaims"] = resource[:optional_claims] unless resource[:optional_claims].nil?
    application["orgRestrictions"] = resource[:org_restrictions] unless resource[:org_restrictions].nil?
    application["passwordCredentials"] = resource[:password_credentials] unless resource[:password_credentials].nil?
    application["preAuthorizedApplications"] = resource[:pre_authorized_applications] unless resource[:pre_authorized_applications].nil?
    application["publicClient"] = resource[:public_client] unless resource[:public_client].nil?
    application["publisherDomain"] = resource[:publisher_domain] unless resource[:publisher_domain].nil?
    application["replyUrls"] = resource[:reply_urls] unless resource[:reply_urls].nil?
    application["requiredResourceAccess"] = resource[:required_resource_access] unless resource[:required_resource_access].nil?
    application["samlMetadataUrl"] = resource[:saml_metadata_url] unless resource[:saml_metadata_url].nil?
    application["signInAudience"] = resource[:sign_in_audience] unless resource[:sign_in_audience].nil?
    application["wwwHomepage"] = resource[:www_homepage] unless resource[:www_homepage].nil?
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
    header_params["User-Agent"] = "puppetlabs-azure_arm/0.2.2"

    op_params = [
      self.op_param("allowguestssignin", "body", "allow_guests_sign_in", "allowguestssignin"),
      self.op_param("allowpassthroughusers", "body", "allow_passthrough_users", "allowpassthroughusers"),
      self.op_param("api-version", "query", "api_version", "api_version"),
      self.op_param("appid", "body", "app_id", "appid"),
      self.op_param("applogourl", "body", "app_logo_url", "applogourl"),
      self.op_param("apppermissions", "body", "app_permissions", "apppermissions"),
      self.op_param("approles", "body", "app_roles", "approles"),
      self.op_param("availabletoothertenants", "body", "available_to_other_tenants", "availabletoothertenants"),
      self.op_param("deletiontimestamp", "body", "deletion_timestamp", "deletiontimestamp"),
      self.op_param("displayname", "body", "display_name", "displayname"),
      self.op_param("errorurl", "body", "error_url", "errorurl"),
      self.op_param("groupmembershipclaims", "body", "group_membership_claims", "groupmembershipclaims"),
      self.op_param("homepage", "body", "homepage", "homepage"),
      self.op_param("identifieruris", "body", "identifier_uris", "identifieruris"),
      self.op_param("informationalurls", "body", "informational_urls", "informationalurls"),
      self.op_param("isdeviceonlyauthsupported", "body", "is_device_only_auth_supported", "isdeviceonlyauthsupported"),
      self.op_param("keycredentials", "body", "key_credentials", "keycredentials"),
      self.op_param("knownclientapplications", "body", "knownclientapplications", "knownclientapplications"),
      self.op_param("logouturl", "body", "logout_url", "logouturl"),
      self.op_param("oauth2allowimplicitflow", "body", "oauth2_allow_implicit_flow", "oauth2allowimplicitflow"),
      self.op_param("oauth2allowurlpathmatching", "body", "oauth2_allow_url_path_matching", "oauth2allowurlpathmatching"),
      self.op_param("oauth2permissions", "body", "oauth2_permissions", "oauth2permissions"),
      self.op_param("oauth2requirepostresponse", "body", "oauth2_require_post_response", "oauth2requirepostresponse"),
      self.op_param("objectid", "body", "object_id", "objectid"),
      self.op_param("objecttype", "body", "object_type", "objecttype"),
      self.op_param("optionalclaims", "body", "optional_claims", "optionalclaims"),
      self.op_param("orgrestrictions", "body", "org_restrictions", "orgrestrictions"),
      self.op_param("parameters", "body", "parameters", "parameters"),
      self.op_param("passwordcredentials", "body", "password_credentials", "passwordcredentials"),
      self.op_param("preauthorizedapplications", "body", "preauthorizedapplications", "preauthorizedapplications"),
      self.op_param("publicclient", "body", "public_client", "publicclient"),
      self.op_param("publisherdomain", "body", "publisher_domain", "publisherdomain"),
      self.op_param("replyurls", "body", "reply_urls", "replyurls"),
      self.op_param("requiredresourceaccess", "body", "required_resource_access", "requiredresourceaccess"),
      self.op_param("samlmetadataurl", "body", "saml_metadata_url", "samlmetadataurl"),
      self.op_param("signinaudience", "body", "sign_in_audience", "signinaudience"),
      self.op_param("tenantID", "path", "tenant_id", "tenant_id"),
      self.op_param("wwwhomepage", "body", "www_homepage", "wwwhomepage"),
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
    self.call_op(path_params, query_params, header_params, body_params, "graph.windows.net", "/%{tenant_id}/applications", "Post", "[application/json text/json]")
  end

  def self.invoke_update(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation DeletedApplications_Restore")
    path_params = {}
    query_params = {}
    header_params = {}
    header_params["User-Agent"] = "puppetlabs-azure_arm/0.2.2"

    op_params = [
      self.op_param("allowguestssignin", "body", "allow_guests_sign_in", "allowguestssignin"),
      self.op_param("allowpassthroughusers", "body", "allow_passthrough_users", "allowpassthroughusers"),
      self.op_param("api-version", "query", "api_version", "api_version"),
      self.op_param("appid", "body", "app_id", "appid"),
      self.op_param("applogourl", "body", "app_logo_url", "applogourl"),
      self.op_param("apppermissions", "body", "app_permissions", "apppermissions"),
      self.op_param("approles", "body", "app_roles", "approles"),
      self.op_param("availabletoothertenants", "body", "available_to_other_tenants", "availabletoothertenants"),
      self.op_param("deletiontimestamp", "body", "deletion_timestamp", "deletiontimestamp"),
      self.op_param("displayname", "body", "display_name", "displayname"),
      self.op_param("errorurl", "body", "error_url", "errorurl"),
      self.op_param("groupmembershipclaims", "body", "group_membership_claims", "groupmembershipclaims"),
      self.op_param("homepage", "body", "homepage", "homepage"),
      self.op_param("identifieruris", "body", "identifier_uris", "identifieruris"),
      self.op_param("informationalurls", "body", "informational_urls", "informationalurls"),
      self.op_param("isdeviceonlyauthsupported", "body", "is_device_only_auth_supported", "isdeviceonlyauthsupported"),
      self.op_param("keycredentials", "body", "key_credentials", "keycredentials"),
      self.op_param("knownclientapplications", "body", "knownclientapplications", "knownclientapplications"),
      self.op_param("logouturl", "body", "logout_url", "logouturl"),
      self.op_param("oauth2allowimplicitflow", "body", "oauth2_allow_implicit_flow", "oauth2allowimplicitflow"),
      self.op_param("oauth2allowurlpathmatching", "body", "oauth2_allow_url_path_matching", "oauth2allowurlpathmatching"),
      self.op_param("oauth2permissions", "body", "oauth2_permissions", "oauth2permissions"),
      self.op_param("oauth2requirepostresponse", "body", "oauth2_require_post_response", "oauth2requirepostresponse"),
      self.op_param("object_id", "path", "object_id", "object_id"),
      self.op_param("objectid", "body", "object_id", "objectid"),
      self.op_param("objecttype", "body", "object_type", "objecttype"),
      self.op_param("optionalclaims", "body", "optional_claims", "optionalclaims"),
      self.op_param("orgrestrictions", "body", "org_restrictions", "orgrestrictions"),
      self.op_param("passwordcredentials", "body", "password_credentials", "passwordcredentials"),
      self.op_param("preauthorizedapplications", "body", "preauthorizedapplications", "preauthorizedapplications"),
      self.op_param("publicclient", "body", "public_client", "publicclient"),
      self.op_param("publisherdomain", "body", "publisher_domain", "publisherdomain"),
      self.op_param("replyurls", "body", "reply_urls", "replyurls"),
      self.op_param("requiredresourceaccess", "body", "required_resource_access", "requiredresourceaccess"),
      self.op_param("samlmetadataurl", "body", "saml_metadata_url", "samlmetadataurl"),
      self.op_param("signinaudience", "body", "sign_in_audience", "signinaudience"),
      self.op_param("tenantID", "path", "tenant_id", "tenant_id"),
      self.op_param("wwwhomepage", "body", "www_homepage", "wwwhomepage"),
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
    self.call_op(path_params, query_params, header_params, body_params, "graph.windows.net", "/%{tenant_id}/deletedApplications/%{object_id}/restore", "Post", "[application/json text/json]")
  end

  def self.invoke_delete(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation DeletedApplications_HardDelete")
    path_params = {}
    query_params = {}
    header_params = {}
    header_params["User-Agent"] = "puppetlabs-azure_arm/0.2.2"

    op_params = [
      self.op_param("allowguestssignin", "body", "allow_guests_sign_in", "allowguestssignin"),
      self.op_param("allowpassthroughusers", "body", "allow_passthrough_users", "allowpassthroughusers"),
      self.op_param("api-version", "query", "api_version", "api_version"),
      self.op_param("appid", "body", "app_id", "appid"),
      self.op_param("applicationObjectId", "path", "object_id", "application_object_id"),
      self.op_param("applogourl", "body", "app_logo_url", "applogourl"),
      self.op_param("apppermissions", "body", "app_permissions", "apppermissions"),
      self.op_param("approles", "body", "app_roles", "approles"),
      self.op_param("availabletoothertenants", "body", "available_to_other_tenants", "availabletoothertenants"),
      self.op_param("deletiontimestamp", "body", "deletion_timestamp", "deletiontimestamp"),
      self.op_param("displayname", "body", "display_name", "displayname"),
      self.op_param("errorurl", "body", "error_url", "errorurl"),
      self.op_param("groupmembershipclaims", "body", "group_membership_claims", "groupmembershipclaims"),
      self.op_param("homepage", "body", "homepage", "homepage"),
      self.op_param("identifieruris", "body", "identifier_uris", "identifieruris"),
      self.op_param("informationalurls", "body", "informational_urls", "informationalurls"),
      self.op_param("isdeviceonlyauthsupported", "body", "is_device_only_auth_supported", "isdeviceonlyauthsupported"),
      self.op_param("keycredentials", "body", "key_credentials", "keycredentials"),
      self.op_param("knownclientapplications", "body", "knownclientapplications", "knownclientapplications"),
      self.op_param("logouturl", "body", "logout_url", "logouturl"),
      self.op_param("oauth2allowimplicitflow", "body", "oauth2_allow_implicit_flow", "oauth2allowimplicitflow"),
      self.op_param("oauth2allowurlpathmatching", "body", "oauth2_allow_url_path_matching", "oauth2allowurlpathmatching"),
      self.op_param("oauth2permissions", "body", "oauth2_permissions", "oauth2permissions"),
      self.op_param("oauth2requirepostresponse", "body", "oauth2_require_post_response", "oauth2requirepostresponse"),
      self.op_param("objectid", "body", "object_id", "objectid"),
      self.op_param("objecttype", "body", "object_type", "objecttype"),
      self.op_param("optionalclaims", "body", "optional_claims", "optionalclaims"),
      self.op_param("orgrestrictions", "body", "org_restrictions", "orgrestrictions"),
      self.op_param("passwordcredentials", "body", "password_credentials", "passwordcredentials"),
      self.op_param("preauthorizedapplications", "body", "preauthorizedapplications", "preauthorizedapplications"),
      self.op_param("publicclient", "body", "public_client", "publicclient"),
      self.op_param("publisherdomain", "body", "publisher_domain", "publisherdomain"),
      self.op_param("replyurls", "body", "reply_urls", "replyurls"),
      self.op_param("requiredresourceaccess", "body", "required_resource_access", "requiredresourceaccess"),
      self.op_param("samlmetadataurl", "body", "saml_metadata_url", "samlmetadataurl"),
      self.op_param("signinaudience", "body", "sign_in_audience", "signinaudience"),
      self.op_param("tenantID", "path", "tenant_id", "tenant_id"),
      self.op_param("wwwhomepage", "body", "www_homepage", "wwwhomepage"),
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
    self.call_op(path_params, query_params, header_params, body_params, "graph.windows.net", "/%{tenant_id}/deletedApplications/%{application_object_id}", "Delete", "[application/json text/json]")
  end

  def self.invoke_list_with_params(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation DeletedApplications_List")
    path_params = {}
    query_params = {}
    header_params = {}
    header_params["User-Agent"] = "puppetlabs-azure_arm/0.2.2"

    op_params = [
      self.op_param("allowguestssignin", "body", "allow_guests_sign_in", "allowguestssignin"),
      self.op_param("allowpassthroughusers", "body", "allow_passthrough_users", "allowpassthroughusers"),
      self.op_param("api-version", "query", "api_version", "api_version"),
      self.op_param("appid", "body", "app_id", "appid"),
      self.op_param("applogourl", "body", "app_logo_url", "applogourl"),
      self.op_param("apppermissions", "body", "app_permissions", "apppermissions"),
      self.op_param("approles", "body", "app_roles", "approles"),
      self.op_param("availabletoothertenants", "body", "available_to_other_tenants", "availabletoothertenants"),
      self.op_param("deletiontimestamp", "body", "deletion_timestamp", "deletiontimestamp"),
      self.op_param("displayname", "body", "display_name", "displayname"),
      self.op_param("errorurl", "body", "error_url", "errorurl"),
      self.op_param("groupmembershipclaims", "body", "group_membership_claims", "groupmembershipclaims"),
      self.op_param("homepage", "body", "homepage", "homepage"),
      self.op_param("identifieruris", "body", "identifier_uris", "identifieruris"),
      self.op_param("informationalurls", "body", "informational_urls", "informationalurls"),
      self.op_param("isdeviceonlyauthsupported", "body", "is_device_only_auth_supported", "isdeviceonlyauthsupported"),
      self.op_param("keycredentials", "body", "key_credentials", "keycredentials"),
      self.op_param("knownclientapplications", "body", "knownclientapplications", "knownclientapplications"),
      self.op_param("logouturl", "body", "logout_url", "logouturl"),
      self.op_param("oauth2allowimplicitflow", "body", "oauth2_allow_implicit_flow", "oauth2allowimplicitflow"),
      self.op_param("oauth2allowurlpathmatching", "body", "oauth2_allow_url_path_matching", "oauth2allowurlpathmatching"),
      self.op_param("oauth2permissions", "body", "oauth2_permissions", "oauth2permissions"),
      self.op_param("oauth2requirepostresponse", "body", "oauth2_require_post_response", "oauth2requirepostresponse"),
      self.op_param("objectid", "body", "object_id", "objectid"),
      self.op_param("objecttype", "body", "object_type", "objecttype"),
      self.op_param("optionalclaims", "body", "optional_claims", "optionalclaims"),
      self.op_param("orgrestrictions", "body", "org_restrictions", "orgrestrictions"),
      self.op_param("passwordcredentials", "body", "password_credentials", "passwordcredentials"),
      self.op_param("preauthorizedapplications", "body", "preauthorizedapplications", "preauthorizedapplications"),
      self.op_param("publicclient", "body", "public_client", "publicclient"),
      self.op_param("publisherdomain", "body", "publisher_domain", "publisherdomain"),
      self.op_param("replyurls", "body", "reply_urls", "replyurls"),
      self.op_param("requiredresourceaccess", "body", "required_resource_access", "requiredresourceaccess"),
      self.op_param("samlmetadataurl", "body", "saml_metadata_url", "samlmetadataurl"),
      self.op_param("signinaudience", "body", "sign_in_audience", "signinaudience"),
      self.op_param("tenantID", "path", "tenant_id", "tenant_id"),
      self.op_param("wwwhomepage", "body", "www_homepage", "wwwhomepage"),
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
    self.call_op(path_params, query_params, header_params, body_params, "graph.windows.net", "/%{tenant_id}/deletedApplications", "Get", "[application/json text/json]")
  end

  def self.invoke_get_one(resource = nil, body_params = nil)
    key_values = self.build_key_values
    Puppet.info("Calling operation Applications_Get")
    path_params = {}
    query_params = {}
    header_params = {}
    header_params["User-Agent"] = "puppetlabs-azure_arm/0.2.2"

    op_params = [
      self.op_param("allowguestssignin", "body", "allow_guests_sign_in", "allowguestssignin"),
      self.op_param("allowpassthroughusers", "body", "allow_passthrough_users", "allowpassthroughusers"),
      self.op_param("api-version", "query", "api_version", "api_version"),
      self.op_param("appid", "body", "app_id", "appid"),
      self.op_param("applicationObjectId", "path", "object_id", "application_object_id"),
      self.op_param("applogourl", "body", "app_logo_url", "applogourl"),
      self.op_param("apppermissions", "body", "app_permissions", "apppermissions"),
      self.op_param("approles", "body", "app_roles", "approles"),
      self.op_param("availabletoothertenants", "body", "available_to_other_tenants", "availabletoothertenants"),
      self.op_param("deletiontimestamp", "body", "deletion_timestamp", "deletiontimestamp"),
      self.op_param("displayname", "body", "display_name", "displayname"),
      self.op_param("errorurl", "body", "error_url", "errorurl"),
      self.op_param("groupmembershipclaims", "body", "group_membership_claims", "groupmembershipclaims"),
      self.op_param("homepage", "body", "homepage", "homepage"),
      self.op_param("identifieruris", "body", "identifier_uris", "identifieruris"),
      self.op_param("informationalurls", "body", "informational_urls", "informationalurls"),
      self.op_param("isdeviceonlyauthsupported", "body", "is_device_only_auth_supported", "isdeviceonlyauthsupported"),
      self.op_param("keycredentials", "body", "key_credentials", "keycredentials"),
      self.op_param("knownclientapplications", "body", "knownclientapplications", "knownclientapplications"),
      self.op_param("logouturl", "body", "logout_url", "logouturl"),
      self.op_param("oauth2allowimplicitflow", "body", "oauth2_allow_implicit_flow", "oauth2allowimplicitflow"),
      self.op_param("oauth2allowurlpathmatching", "body", "oauth2_allow_url_path_matching", "oauth2allowurlpathmatching"),
      self.op_param("oauth2permissions", "body", "oauth2_permissions", "oauth2permissions"),
      self.op_param("oauth2requirepostresponse", "body", "oauth2_require_post_response", "oauth2requirepostresponse"),
      self.op_param("objectid", "body", "object_id", "objectid"),
      self.op_param("objecttype", "body", "object_type", "objecttype"),
      self.op_param("optionalclaims", "body", "optional_claims", "optionalclaims"),
      self.op_param("orgrestrictions", "body", "org_restrictions", "orgrestrictions"),
      self.op_param("passwordcredentials", "body", "password_credentials", "passwordcredentials"),
      self.op_param("preauthorizedapplications", "body", "preauthorizedapplications", "preauthorizedapplications"),
      self.op_param("publicclient", "body", "public_client", "publicclient"),
      self.op_param("publisherdomain", "body", "publisher_domain", "publisherdomain"),
      self.op_param("replyurls", "body", "reply_urls", "replyurls"),
      self.op_param("requiredresourceaccess", "body", "required_resource_access", "requiredresourceaccess"),
      self.op_param("samlmetadataurl", "body", "saml_metadata_url", "samlmetadataurl"),
      self.op_param("signinaudience", "body", "sign_in_audience", "signinaudience"),
      self.op_param("tenantID", "path", "tenant_id", "tenant_id"),
      self.op_param("wwwhomepage", "body", "www_homepage", "wwwhomepage"),
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
    self.call_op(path_params, query_params, header_params, body_params, "graph.windows.net", "/%{tenant_id}/applications/%{application_object_id}", "Get", "[application/json text/json]")
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
