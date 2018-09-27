require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_vnet_info) do
  @doc = "VNETInfo contract. This contract is public and is a stripped down version of VNETInfoInternal"

  ensurable

  validate do
    required_properties = [
      :location,
      :connection_envelope,
      :resource_group_name,
      :vnet_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_vnet_info you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource Id"
    validate do |value|
      true
    end
  end
  newproperty(:kind) do
    desc "Kind of resource"
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
    desc "API Version"
    validate do |value|
      true
    end
  end
  newparam(:connection_envelope) do
    desc "The properties of this Virtual Network Connection"
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
    desc "Subscription Id"
    validate do |value|
      true
    end
  end
  newparam(:vnet_name) do
    desc "The name of the Virtual Network"
    validate do |value|
      true
    end
  end
end
