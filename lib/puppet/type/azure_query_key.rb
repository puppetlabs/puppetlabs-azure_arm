require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_query_key) do
  @doc = "Describes an API key for a given Azure Search service that has permissions for query operations only."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_query_key you must provide a value for #{property}"
      end
    end
  end
  newproperty(:key) do
    desc "The value of the query API key."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the query API key; may be empty."
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
  newparam(:search_service_name) do
    desc "The name of the Azure Search service associated with the specified resource group."
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
