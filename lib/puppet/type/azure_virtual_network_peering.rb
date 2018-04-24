require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_virtual_network_peering) do
  @doc = "Peerings in a virtual network resource."

  ensurable

  validate do
    required_properties = [
      :virtual_network_peering_parameters,
      :resource_group_name,
      :virtual_network_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_virtual_network_peering you must provide a value for #{property}"
      end
    end
  end
  newproperty(:etag) do
    desc "A unique read-only string that changes whenever the resource is updated."
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "Resource ID."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the resource that is unique within a resource group. This name can be used to access the resource."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties of the virtual network peering."
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
  newparam(:resource_group_name) do
    desc "The name of the resource group."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
  newparam(:virtual_network_name) do
    desc "The name of the virtual network."
    validate do |value|
      true
    end
  end
  newparam(:virtual_network_peering_parameters) do
    desc "Parameters supplied to the create or update virtual network peering operation."
    validate do |value|
      true
    end
  end
end
