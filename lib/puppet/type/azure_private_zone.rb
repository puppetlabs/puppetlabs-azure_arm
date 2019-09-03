require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_private_zone) do
  @doc = "Describes a Private DNS zone."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_private_zone you must provide a value for #{property}"
      end
    end
  end
  newproperty(:etag) do
    desc "The ETag of the zone."
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "Fully qualified resource Id for the resource. Example - '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/privateDnsZones/{privateDnsZoneName}'."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The Azure Region where the resource lives"
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the resource"
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties of the Private DNS zone."
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "Resource tags."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The type of the resource. Example - 'Microsoft.Network/privateDnsZones'."
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
    desc "Parameters supplied to the CreateOrUpdate operation."
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
    desc "Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
end
