require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_data_box_edge_device) do
  @doc = "The Data Box Edge/Gateway device."

  ensurable

  validate do
    required_properties = [
      :location,
      :data_box_edge_device,
      :device_name,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_data_box_edge_device you must provide a value for #{property}"
      end
    end
  end
  newproperty(:etag) do
    desc "The etag of the devices."
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "The path ID that uniquely identifies the object."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The location of the device. This will be one of the supported and registered Azure Geo Regions (e.g. West US, East US, Southeast Asia, etc.). The geo region of a device cannot be changed once it is created, but if an identical geo region is specified on update the request will succeed."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the object."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The properties of the Data Box Edge/Gateway device."
    validate do |value|
      true
    end
  end
  newproperty(:sku) do
    desc "The sku type."
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "The list of tags that describe the device. These tags can be used in viewing and grouping this device (across resource groups)."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The hierarchical type of the object."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The API version."
    validate do |value|
      true
    end
  end
  newparam(:data_box_edge_device) do
    desc "The resource object."
    validate do |value|
      true
    end
  end
  newparam(:device_name) do
    desc "The device name."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The resource group name."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscription ID."
    validate do |value|
      true
    end
  end
end
