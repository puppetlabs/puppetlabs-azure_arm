require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_blob_container) do
  @doc = "Properties of the blob container, including Id, resource name, resource type, Etag."

  ensurable

  validate do
    required_properties = [
      :account_name,
      :blob_container,
      :container_name,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_blob_container you must provide a value for #{property}"
      end
    end
  end
  newproperty(:etag) do
    desc "Resource Etag."
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the resource"
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties of the blob container."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts."
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
    desc "The API version to use for this operation."
    validate do |value|
      true
    end
  end
  newparam(:blob_container) do
    desc "Properties of the blob container to create."
    validate do |value|
      true
    end
  end
  newparam(:container_name) do
    desc "The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number."
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
    desc "The ID of the target subscription."
    validate do |value|
      true
    end
  end
end
