require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_migration_config_properties) do
  @doc = "Single item in List or Get Migration Config operation"

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_migration_config_properties you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource Id"
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Resource name"
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties required to the Create Migration Configuration"
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Resource type"
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
  newparam(:config_name) do
    desc "The configuration name. Should always be '$default'."
    validate do |value|
      true
    end
  end
  newparam(:namespace_name) do
    desc "The namespace name"
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Parameters required to create Migration Configuration"
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "Name of the Resource group within the Azure subscription."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
end
