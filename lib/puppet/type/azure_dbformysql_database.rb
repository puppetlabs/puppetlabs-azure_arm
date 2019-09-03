require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_dbformysql_database) do
  @doc = "Represents a Database."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_dbformysql_database you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource ID"
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Resource name."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The properties of a database."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Resource type."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The API version to use for the request."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "The required parameters for creating or updating a database."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal."
    validate do |value|
      true
    end
  end
  newparam(:server_name) do
    desc "The name of the server."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscription ID that identifies an Azure subscription."
    validate do |value|
      true
    end
  end
end
