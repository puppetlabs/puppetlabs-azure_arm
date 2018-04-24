require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_network_mapping) do
  @doc = "Network Mapping model. Ideally it should have been possible to inherit this class from prev version in InheritedModels as long as there is no difference in structure or method signature. Since there were no base Models for certain fields and methods viz NetworkMappingProperties and Load with required return type, the class has been introduced in its entirety with references to base models to facilitate exensions in subsequent versions."

  ensurable

  validate do
    required_properties = [
      :fabric_name,
      :input,
      :network_name,
      :resource_group_name,
      :resource_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_network_mapping you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource Id"
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Resource Location"
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Resource Name"
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The Network Mapping Properties."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Resource Type"
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "Client Api Version."
    validate do |value|
      true
    end
  end
  newparam(:fabric_name) do
    desc "Primary fabric name."
    validate do |value|
      true
    end
  end
  newparam(:input) do
    desc "Create network mapping input."
    validate do |value|
      true
    end
  end
  newparam(:network_name) do
    desc "Primary network name."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group where the recovery services vault is present."
    validate do |value|
      true
    end
  end
  newparam(:resource_name) do
    desc "The name of the recovery services vault."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscription Id."
    validate do |value|
      true
    end
  end
end
