require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_virtual_machine_extension) do
  @doc = "Describes a Virtual Machine Extension."

  ensurable

  validate do
    required_properties = [
      :location,
      :extension_parameters,
      :resource_group_name,
      :vm_extension_name,
      :vm_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_virtual_machine_extension you must provide a value for #{property}"
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
    desc "Resource location"
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
    desc ""
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "Resource tags"
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
    desc "Client Api Version."
    validate do |value|
      true
    end
  end
  newparam(:extension_parameters) do
    desc "Parameters supplied to the Create Virtual Machine Extension operation."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
  newparam(:vm_extension_name) do
    desc "The name of the virtual machine extension."
    validate do |value|
      true
    end
  end
  newparam(:vm_name) do
    desc "The name of the virtual machine where the extension should be created or updated."
    validate do |value|
      true
    end
  end
end
