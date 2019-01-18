require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_host_name_binding) do
  @doc = "A hostname binding object."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_host_name_binding you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource Id."
    validate do |value|
      true
    end
  end
  newproperty(:kind) do
    desc "Kind of resource."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Resource Name."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "HostNameBinding resource specific properties"
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Resource type."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "API Version"
    validate do |value|
      true
    end
  end
  newparam(:host_name) do
    desc "Hostname in the hostname binding."
    validate do |value|
      true
    end
  end
  newparam(:host_name_binding) do
    desc "Binding details. This is the JSON representation of a HostNameBinding object."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "Name of the resource group to which the resource belongs."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000)."
    validate do |value|
      true
    end
  end
end
