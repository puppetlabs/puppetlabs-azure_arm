require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_dedicated_capacity) do
  @doc = "Represents an instance of a Dedicated Capacity resource."

  ensurable

  validate do
    required_properties = [
      :location,
      :sku,
      :capacity_parameters,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_dedicated_capacity you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "An identifier that represents the PowerBI Dedicated resource."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Location of the PowerBI Dedicated resource."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the PowerBI Dedicated resource."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties of the provision operation request."
    validate do |value|
      true
    end
  end
  newproperty(:sku) do
    desc "The SKU of the PowerBI Dedicated resource."
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "Key-value pairs of additional resource provisioning properties."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The type of the PowerBI Dedicated resource."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The client API version."
    validate do |value|
      true
    end
  end
  newparam(:capacity_parameters) do
    desc "Contains the information used to provision the Dedicated capacity."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the Azure Resource group of which a given PowerBIDedicated capacity is part. This name must be at least 1 character in length, and no more than 90."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "A unique identifier for a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
end
