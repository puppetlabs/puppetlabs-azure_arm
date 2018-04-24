require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_virtual_machine_scale_set_extension) do
  @doc = "Describes a Virtual Machine Scale Set Extension."

  ensurable

  validate do
    required_properties = [
      :extension_parameters,
      :resource_group_name,
      :vm_scale_set_name,
      :vmss_extension_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_virtual_machine_scale_set_extension you must provide a value for #{property}"
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
    desc "The name of the extension."
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
  newparam(:api_version) do
    desc "Client Api Version."
    validate do |value|
      true
    end
  end
  newparam(:extension_parameters) do
    desc "Parameters supplied to the Create VM scale set Extension operation."
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
  newparam(:vm_scale_set_name) do
    desc "The name of the VM scale set where the extension should be create or updated."
    validate do |value|
      true
    end
  end
  newparam(:vmss_extension_name) do
    desc "The name of the VM scale set extension."
    validate do |value|
      true
    end
  end
end
