require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_data_store) do
  @doc = "Data store."

  ensurable

  validate do
    required_properties = [
      :properties,
      :data_manager_name,
      :data_store,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_data_store you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Id of the object."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Name of the object."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "DataStore properties."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Type of the object."
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
  newparam(:data_manager_name) do
    desc "The name of the DataManager Resource within the specified resource group. DataManager names must be between 3 and 24 characters in length and use any alphanumeric and underscore only"
    validate do |value|
      true
    end
  end
  newparam(:data_store) do
    desc "The data store/repository object to be created or updated."
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
