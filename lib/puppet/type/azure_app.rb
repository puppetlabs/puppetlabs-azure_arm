require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_app) do
  @doc = "The IoT Central application."

  ensurable

  validate do
    required_properties = [
      :location,
      :sku,
      :app,
      :resource_group_name,
      :resource_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_app you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The ARM resource identifier."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The resource location."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The ARM resource name."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The common properties of an IoT Central application."
    validate do |value|
      true
    end
  end
  newproperty(:sku) do
    desc "A valid instance SKU."
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "The resource tags."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The resource type."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The version of the API."
    validate do |value|
      true
    end
  end
  newparam(:app) do
    desc "The IoT Central application metadata and security metadata."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group that contains the IoT Central application."
    validate do |value|
      true
    end
  end
  newparam(:resource_name) do
    desc "The ARM resource name of the IoT Central application."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscription identifier."
    validate do |value|
      true
    end
  end
end
