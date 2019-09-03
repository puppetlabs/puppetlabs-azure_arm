require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_data_manager) do
  @doc = "The DataManager resource."

  ensurable

  validate do
    required_properties = [
      :location,
      :data_manager,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_data_manager you must provide a value for #{property}"
      end
    end
  end
  newproperty(:etag) do
    desc "Etag of the Resource."
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "The Resource Id."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The location of the resource. This will be one of the supported and registered Azure Geo Regions (e.g. West US, EastUS, Southeast Asia, etc.). The geo region of a resource cannot be changed once it is created, but if an identical georegion is specified on update the request will succeed."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The Resource Name."
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
    desc "The list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource(across resource groups)."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The Resource type."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The API Version"
    validate do |value|
      true
    end
  end
  newparam(:data_manager) do
    desc "Data manager resource details from request body."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The Resource Group Name"
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The Subscription Id"
    validate do |value|
      true
    end
  end
end
