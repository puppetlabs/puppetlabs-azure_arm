require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_environment_resource) do
  @doc = "An environment is a set of time-series data avaliable for query, and is the top level Azure Time Series Insights resource."

  ensurable

  validate do
    required_properties = [
      :location,
      :environment_name,
      :parameters,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_environment_resource you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource Id"
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
    desc ""
    validate do |value|
      true
    end
  end
  newproperty(:sku) do
    desc "The sku determines the capacity of the environment, the SLA (in queries-per-minute and total capacity), and the billing rate."
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "Resource tags"
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
  newparam(:api_version) do
    desc "Version of the API to be used with the client request."
    validate do |value|
      true
    end
  end
  newparam(:environment_name) do
    desc "Name of the environment"
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Parameters for creating an environment resource."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "Name of an Azure Resource group."
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
