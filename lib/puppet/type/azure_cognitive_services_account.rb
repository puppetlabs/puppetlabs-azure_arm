require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_cognitive_services_account) do
  @doc = "Cognitive Services Account is an Azure resource representing the provisioned account, its type, location and SKU."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_cognitive_services_account you must provide a value for #{property}"
      end
    end
  end
  newproperty(:etag) do
    desc "Entity Tag"
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "The id of the created account"
    validate do |value|
      true
    end
  end
  newproperty(:kind) do
    desc "Type of cognitive service account."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The location of the resource"
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the created account"
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties of Cognitive Services account."
    validate do |value|
      true
    end
  end
  newproperty(:sku) do
    desc "The SKU of Cognitive Services account."
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "Gets or sets a list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters."
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
  newparam(:account_name) do
    desc "The name of Cognitive Services account."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "Version of the API to be used with the client request. Current version is 2017-04-18"
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "The parameters to provide for the created account."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group within the user's subscription."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Azure Subscription ID."
    validate do |value|
      true
    end
  end
end
