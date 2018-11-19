require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_media_service) do
  @doc = "The properties of a Media Service resource."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_media_service you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The id of the resource."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The geographic location of the resource. This must be one of the supported and registered Azure Geo Regions (for example, West US, East US, Southeast Asia, and so forth)."
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
    desc "The additional properties of a Media Service resource."
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
    desc "The type of the resource"
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "Version of the API to be used with the client request. The current version is 2015-10-01."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Media Service properties needed for creation."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "Name of the resource group within the Azure subscription."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The unique identifier for a Microsoft Azure subscription."
    validate do |value|
      true
    end
  end
end
