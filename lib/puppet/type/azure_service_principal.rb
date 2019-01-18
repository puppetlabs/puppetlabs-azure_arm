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
  newproperty(:app_id) do
    desc "The application ID."
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
  newproperty(:service_principal_names, :array_matching => :all) do
    desc "A collection of service principal names."
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
