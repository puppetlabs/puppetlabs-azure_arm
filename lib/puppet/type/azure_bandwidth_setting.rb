require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_bandwidth_setting) do
  @doc = "The bandwidth setting."

  ensurable

  validate do
    required_properties = [
      :properties,
      :manager_name,
      :parameters,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_bandwidth_setting you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The path ID that uniquely identifies the object."
    validate do |value|
      true
    end
  end
  newproperty(:kind) do
    desc "The Kind of the object. Currently only Series8000 is supported"
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the object."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The properties of the bandwidth setting."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The hierarchical type of the object."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The api version"
    validate do |value|
      true
    end
  end
  newparam(:manager_name) do
    desc "The manager name"
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "The bandwidth setting to be added or updated."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The resource group name"
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscription id"
    validate do |value|
      true
    end
  end
end
