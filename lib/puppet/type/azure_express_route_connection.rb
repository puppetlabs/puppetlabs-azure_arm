require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_express_route_connection) do
  @doc = "ExpressRouteConnection resource."

  ensurable

  validate do
    required_properties = [
      :name,
      :connection_name,
      :express_route_gateway_name,
      :put_express_route_connection_parameters,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_express_route_connection you must provide a value for #{property}"
      end
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
    desc "The name of the resource."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties of the express route connection."
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
  newparam(:connection_name) do
    desc "The name of the connection subresource."
    validate do |value|
      true
    end
  end
  newparam(:express_route_gateway_name) do
    desc "The name of the ExpressRoute gateway."
    validate do |value|
      true
    end
  end
  newparam(:put_express_route_connection_parameters) do
    desc "Parameters required in an ExpressRouteConnection PUT operation."
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
end
