require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_data_connection) do
  @doc = "Class representing an data connection."

  ensurable

  validate do
    required_properties = [
      :kind,
      :cluster_name,
      :database_name,
      :parameters,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_data_connection you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
    validate do |value|
      true
    end
  end
  newproperty(:kind) do
    desc "Kind of the endpoint for the data connection"
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Resource location."
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
  newproperty(:type) do
    desc "The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts."
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
  newparam(:cluster_name) do
    desc "The name of the Kusto cluster."
    validate do |value|
      true
    end
  end
  newparam(:database_name) do
    desc "The name of the database in the Kusto cluster."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "The data connection parameters supplied to the CreateOrUpdate operation."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group containing the Kusto cluster."
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
