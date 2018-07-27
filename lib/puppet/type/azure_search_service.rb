require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_search_service) do
  @doc = "Describes an Azure Search service and its current state."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_search_service you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The ID of the resource. This can be used with the Azure Resource Manager to link resources together."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The geographic location of the resource. This must be one of the supported and registered Azure Geo Regions (for example, West US, East US, Southeast Asia, and so forth). This property is required when creating a new resource."
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
    desc "Properties of the Search service."
    validate do |value|
      true
    end
  end
  newproperty(:sku) do
    desc "The SKU of the Search Service, which determines price tier and capacity limits. This property is required when creating a new Search Service."
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "Tags to help categorize the resource in the Azure portal."
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
    desc "The API version to use for each request. The current version is 2015-08-19."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group within the current subscription. You can obtain this value from the Azure Resource Manager API or the portal."
    validate do |value|
      true
    end
  end
  newparam(:service) do
    desc "The definition of the Search service to create or update."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The unique identifier for a Microsoft Azure subscription. You can obtain this value from the Azure Resource Manager API or the portal."
    validate do |value|
      true
    end
  end
end
