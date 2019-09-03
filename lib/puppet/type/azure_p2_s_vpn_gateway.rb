require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_p2_s_vpn_gateway) do
  @doc = "P2SVpnGateway Resource."

  ensurable

  validate do
    required_properties = [
      :location,
      :gateway_name,
      :p2_s_vpn_gateway_parameters,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_p2_s_vpn_gateway you must provide a value for #{property}"
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
    desc "Properties of the P2SVpnGateway."
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
  newparam(:p2_s_vpn_gateway_parameters) do
    desc "Parameters supplied to create or Update a virtual wan p2s vpn gateway."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The resource group name of the P2SVpnGateway."
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
end
