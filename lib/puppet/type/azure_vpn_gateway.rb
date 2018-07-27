require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_vpn_gateway) do
  @doc = "VpnGateway Resource."

  ensurable

  validate do
    required_properties = [
      :location,
      :gateway_name,
      :resource_group_name,
      :vpn_gateway_parameters,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_vpn_gateway you must provide a value for #{property}"
      end
    end
  end
  newproperty(:etag) do
    desc "Gets a unique read-only string that changes whenever the resource is updated."
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
  newproperty(:location) do
    desc "Resource location."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Resource name."
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
    desc "Resource tags."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Resource type."
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
  newparam(:gateway_name) do
    desc "The name of the gateway."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The resource group name of the VpnGateway."
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
  newparam(:vpn_gateway_parameters) do
    desc "Parameters supplied to create or Update a virtual wan vpn gateway."
    validate do |value|
      true
    end
  end
end
