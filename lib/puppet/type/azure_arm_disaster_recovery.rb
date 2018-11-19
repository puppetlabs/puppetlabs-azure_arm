require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_arm_disaster_recovery) do
  @doc = "Single item in List or Get Alias(Disaster Recovery configuration) operation"

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_arm_disaster_recovery you must provide a value for #{property}"
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
    desc "Properties required to the Create Or Update Alias(Disaster Recovery configurations)"
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
  newparam(:alias) do
    desc "The Disaster Recovery configuration name"
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "Client API Version."
    validate do |value|
      true
    end
  end
  newparam(:namespace_name) do
    desc "The Namespace name"
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Parameters required to create an Alias(Disaster Recovery configuration)"
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "Name of the resource group within the azure subscription."
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
