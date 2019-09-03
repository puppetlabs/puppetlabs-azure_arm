require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_application) do
  @doc = "Active Directory application information."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_application you must provide a value for #{property}"
      end
    end
  end
  newproperty(:allow_guests_sign_in) do
    desc "A property on the application to indicate if the application accepts other IDPs or not or partially accepts."
    validate do |value|
      true
    end
  end
  newproperty(:allow_passthrough_users) do
    desc "Indicates that the application supports pass through users who have no presence in the resource tenant."
    validate do |value|
      true
    end
  end
  newproperty(:app_id) do
    desc "The application ID."
    validate do |value|
      true
    end
  end
  newproperty(:app_logo_url) do
    desc "The url for the application logo image stored in a CDN."
    validate do |value|
      true
    end
  end
  newproperty(:app_permissions, :array_matching => :all) do
    desc "The application permissions."
    validate do |value|
      true
    end
  end
  newproperty(:app_roles, :array_matching => :all) do
    desc "The collection of application roles that an application may declare. These roles can be assigned to users, groups or service principals."
    validate do |value|
      true
    end
  end
  newproperty(:available_to_other_tenants) do
    desc "Whether the application is available to other tenants."
    validate do |value|
      true
    end
  end
  newproperty(:deletion_timestamp) do
    desc "The time at which the directory object was deleted."
    validate do |value|
      true
    end
  end
  newparam(:display_name) do
    isnamevar
    desc "The display name of the application."
    validate do |value|
      true
    end
  end
  newproperty(:error_url) do
    desc "A URL provided by the author of the application to report errors when using the application."
    validate do |value|
      true
    end
  end
  newproperty(:group_membership_claims) do
    desc "Configures the groups claim issued in a user or OAuth 2.0 access token that the app expects."
    validate do |value|
      true
    end
  end
  newproperty(:homepage) do
    desc "The home page of the application."
    validate do |value|
      true
    end
  end
  newproperty(:identifier_uris, :array_matching => :all) do
    desc "A collection of URIs for the application."
    validate do |value|
      true
    end
  end
  newproperty(:informational_urls) do
    desc "URLs with more information about the application."
    validate do |value|
      true
    end
  end
  newproperty(:is_device_only_auth_supported) do
    desc "Specifies whether this application supports device authentication without a user. The default is false."
    validate do |value|
      true
    end
  end
  newproperty(:key_credentials, :array_matching => :all) do
    desc "A collection of KeyCredential objects."
    validate do |value|
      true
    end
  end
  newproperty(:known_client_applications, :array_matching => :all) do
    desc "Client applications that are tied to this resource application. Consent to any of the known client applications will result in implicit consent to the resource application through a combined consent dialog (showing the OAuth permission scopes required by the client and the resource)."
    validate do |value|
      true
    end
  end
  newproperty(:logout_url) do
    desc "the url of the logout page"
    validate do |value|
      true
    end
  end
  newproperty(:oauth2_allow_implicit_flow) do
    desc "Whether to allow implicit grant flow for OAuth2"
    validate do |value|
      true
    end
  end
  newproperty(:oauth2_allow_url_path_matching) do
    desc "Specifies whether during a token Request Azure AD will allow path matching of the redirect URI against the applications collection of replyURLs. The default is false."
    validate do |value|
      true
    end
  end
  newproperty(:oauth2_permissions, :array_matching => :all) do
    desc "The collection of OAuth 2.0 permission scopes that the web API (resource) application exposes to client applications. These permission scopes may be granted to client applications during consent."
    validate do |value|
      true
    end
  end
  newproperty(:oauth2_require_post_response) do
    desc "Specifies whether, as part of OAuth 2.0 token requests, Azure AD will allow POST requests, as opposed to GET requests. The default is false, which specifies that only GET requests will be allowed."
    validate do |value|
      true
    end
  end
  newproperty(:object_id) do
    desc "The object ID."
    validate do |value|
      true
    end
  end
  newproperty(:object_type) do
    desc "The object type."
    validate do |value|
      true
    end
  end
  newproperty(:optional_claims) do
    desc ""
    validate do |value|
      true
    end
  end
  newproperty(:org_restrictions, :array_matching => :all) do
    desc "A list of tenants allowed to access application."
    validate do |value|
      true
    end
  end
  newproperty(:password_credentials, :array_matching => :all) do
    desc "A collection of PasswordCredential objects"
    validate do |value|
      true
    end
  end
  newproperty(:pre_authorized_applications, :array_matching => :all) do
    desc "list of pre-authorized applications."
    validate do |value|
      true
    end
  end
  newproperty(:public_client) do
    desc "Specifies whether this application is a public client (such as an installed application running on a mobile device). Default is false."
    validate do |value|
      true
    end
  end
  newproperty(:publisher_domain) do
    desc "Reliable domain which can be used to identify an application."
    validate do |value|
      true
    end
  end
  newproperty(:reply_urls, :array_matching => :all) do
    desc "A collection of reply URLs for the application."
    validate do |value|
      true
    end
  end
  newproperty(:required_resource_access, :array_matching => :all) do
    desc "Specifies resources that this application requires access to and the set of OAuth permission scopes and application roles that it needs under each of those resources. This pre-configuration of required resource access drives the consent experience."
    validate do |value|
      true
    end
  end
  newproperty(:saml_metadata_url) do
    desc "The URL to the SAML metadata for the application."
    validate do |value|
      true
    end
  end
  newproperty(:sign_in_audience) do
    desc "Audience for signing in to the application (AzureADMyOrganization, AzureADAllOrganizations, AzureADAndMicrosoftAccounts)."
    validate do |value|
      true
    end
  end
  newproperty(:www_homepage) do
    desc "The primary Web page."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "Client API version."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "The parameters for creating an application."
    validate do |value|
      true
    end
  end
  newparam(:tenant_id) do
    desc "The tenant ID."
    validate do |value|
      true
    end
  end
end
