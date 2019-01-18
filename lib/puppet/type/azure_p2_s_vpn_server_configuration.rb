require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_p2_s_vpn_server_configuration) do
  @doc = "P2SVpnServerConfiguration Resource."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_p2_s_vpn_server_configuration you must provide a value for #{property}"
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
  newparam(:name) do
    isnamevar
    desc "The name of the resource that is unique within a resource group. This name can be used to access the resource."
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
    desc "Client API version."
    validate do |value|
      true
    end
  end
  newparam(:p2_s_vpn_server_configuration_parameters) do
    desc "Parameters supplied to create or Update a P2SVpnServerConfiguration."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The resource group name of the VirtualWan."
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
  newparam(:virtual_wan_name) do
    desc "The name of the VirtualWan."
    validate do |value|
      true
    end
  end
end
