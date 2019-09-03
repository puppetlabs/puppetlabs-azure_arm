require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_service_principal) do
  @doc = "Active Directory service principal information."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_service_principal you must provide a value for #{property}"
      end
    end
  end
  newproperty(:account_enabled) do
    desc "whether or not the service principal account is enabled"
    validate do |value|
      true
    end
  end
  newproperty(:alternative_names, :array_matching => :all) do
    desc "alternative names"
    validate do |value|
      true
    end
  end
  newproperty(:app_display_name) do
    desc "The display name exposed by the associated application."
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
  newproperty(:app_owner_tenant_id) do
    desc ""
    validate do |value|
      true
    end
  end
  newproperty(:app_role_assignment_required) do
    desc "Specifies whether an AppRoleAssignment to a user or group is required before Azure AD will issue a user or access token to the application."
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
  newproperty(:deletion_timestamp) do
    desc "The time at which the directory object was deleted."
    validate do |value|
      true
    end
  end
  newparam(:display_name) do
    isnamevar
    desc "The display name of the service principal."
    validate do |value|
      true
    end
  end
  newproperty(:error_url) do
    desc "A URL provided by the author of the associated application to report errors when using the application."
    validate do |value|
      true
    end
  end
  newproperty(:homepage) do
    desc "The URL to the homepage of the associated application."
    validate do |value|
      true
    end
  end
  newproperty(:key_credentials, :array_matching => :all) do
    desc "The collection of key credentials associated with the service principal."
    validate do |value|
      true
    end
  end
  newproperty(:logout_url) do
    desc "A URL provided by the author of the associated application to logout"
    validate do |value|
      true
    end
  end
  newproperty(:oauth2_permissions, :array_matching => :all) do
    desc "The OAuth 2.0 permissions exposed by the associated application."
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
  newproperty(:password_credentials, :array_matching => :all) do
    desc "The collection of password credentials associated with the service principal."
    validate do |value|
      true
    end
  end
  newproperty(:preferred_token_signing_key_thumbprint) do
    desc "The thumbprint of preferred certificate to sign the token"
    validate do |value|
      true
    end
  end
  newproperty(:publisher_name) do
    desc "The publisher's name of the associated application"
    validate do |value|
      true
    end
  end
  newproperty(:reply_urls, :array_matching => :all) do
    desc "The URLs that user tokens are sent to for sign in with the associated application.  The redirect URIs that the oAuth 2.0 authorization code and access tokens are sent to for the associated application."
    validate do |value|
      true
    end
  end
  newproperty(:saml_metadata_url) do
    desc "The URL to the SAML metadata of the associated application"
    validate do |value|
      true
    end
  end
  newproperty(:service_principal_names, :array_matching => :all) do
    desc "A collection of service principal names."
    validate do |value|
      true
    end
  end
  newproperty(:service_principal_type) do
    desc "the type of the service principal"
    validate do |value|
      true
    end
  end
  newproperty(:tags, :array_matching => :all) do
    desc "Optional list of tags that you can apply to your service principals. Not nullable."
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
    desc "Parameters to create a service principal."
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
