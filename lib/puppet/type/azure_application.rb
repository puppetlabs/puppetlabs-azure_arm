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
  newproperty(:app_id) do
    desc "The application ID."
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
    desc "Whether the application is be available to other tenants."
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
  newproperty(:key_credentials, :array_matching => :all) do
    desc "A collection of KeyCredential objects."
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
    desc "A collection of PasswordCredential objects"
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
