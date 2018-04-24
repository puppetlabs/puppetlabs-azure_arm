require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_storage_account) do
  @doc = "The storage account."

  ensurable

  validate do
    required_properties = [
      :account_name,
      :parameters,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_storage_account you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource Id"
    validate do |value|
      true
    end
  end
  newproperty(:identity) do
    desc "The identity of the resource."
    validate do |value|
      true
    end
  end
  newproperty(:kind) do
    desc "Gets the Kind."
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
    desc "Properties of the storage account."
    validate do |value|
      true
    end
  end
  newproperty(:sku) do
    desc "Gets the SKU."
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "Tags assigned to a resource; can be used for viewing and grouping a resource (across resource groups)."
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
    desc "The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "Client Api Version."
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
    desc "The name of the resource group within the user's subscription. The name is case insensitive."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Gets subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
end
