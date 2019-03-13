require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_connection_gateway_definition) do
  @doc = "The gateway definition"

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_connection_gateway_definition you must provide a value for #{property}"
      end
    end
  end
  newproperty(:etag) do
    desc "Resource ETag"
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "Resource id"
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
    desc ""
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
  newparam(:connection_gateway) do
    desc "The connection gateway"
    validate do |value|
      true
    end
  end
  newparam(:connection_gateway_name) do
    desc "The connection gateway name"
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The resource group"
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
end
