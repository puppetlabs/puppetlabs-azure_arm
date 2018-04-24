require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_data_lake_analytics_account) do
  @doc = "A Data Lake Analytics account object, containing all information associated with the named Data Lake Analytics account."

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
        raise Puppet::Error, "In azure_data_lake_analytics_account you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The resource identifer."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The resource location."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The resource name."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The properties defined by Data Lake Analytics all properties are specific to each resource provider."
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "The resource tags."
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
  newparam(:account_name) do
    desc "The name of the Data Lake Analytics account."
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
    desc "Parameters supplied to create a new Data Lake Analytics account."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the Azure resource group."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Get subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
end
