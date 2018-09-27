require "puppet/parameter/boolean"

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
  newproperty(:reply_urls, :array_matching => :all) do
    desc "A collection of reply URLs for the application."
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
