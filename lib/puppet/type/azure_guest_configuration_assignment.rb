require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_guest_configuration_assignment) do
  @doc = "Guest configuration assignment is an association between a VM and guest configuration."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_guest_configuration_assignment you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "ARM resource id of the guest configuration assignment."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Region where the VM is located."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Name of the guest configuration assignment."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties of the Guest configuration assignment."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The type of the resource."
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
  newparam(:parameters) do
    desc "Parameters supplied to the create or update guest configuration assignment."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The resource group name."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Subscription ID which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
  newparam(:vm_name) do
    desc "The name of the virtual machine."
    validate do |value|
      true
    end
  end
end
