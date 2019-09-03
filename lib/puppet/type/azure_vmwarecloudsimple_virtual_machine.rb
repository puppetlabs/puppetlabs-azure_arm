require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_vmwarecloudsimple_virtual_machine) do
  @doc = "Virtual machine model"

  ensurable

  validate do
    required_properties = [
      :location,
      :referer,
      :resource_group_name,
      :virtual_machine_request,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_vmwarecloudsimple_virtual_machine you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/virtualMachines/{virtualMachineName}"
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Azure region"
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "{virtualMachineName}"
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Virtual machine properties"
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "The list of tags"
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "{resourceProviderNamespace}/{resourceType}"
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
  newparam(:referer) do
    desc "referer url"
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group"
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscription ID."
    validate do |value|
      true
    end
  end
  newparam(:virtual_machine_request) do
    desc "Create or Update Virtual Machine request"
    validate do |value|
      true
    end
  end
end
