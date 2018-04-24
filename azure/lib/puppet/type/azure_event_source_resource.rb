require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_event_source_resource) do
  @doc = "An environment receives data from one or more event sources. Each event source has associated connection info that allows the Time Series Insights ingress pipeline to connect to and pull data from the event source"

  ensurable

  validate do
    required_properties = [
      :kind,
      :location,
      :environment_name,
      :event_source_name,
      :parameters,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_event_source_resource you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource Id"
    validate do |value|
      true
    end
  end
  newproperty(:kind) do
    desc "The kind of the event source."
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
    desc "The name of the Time Series Insights environment associated with the specified resource group."
    validate do |value|
      true
    end
  end
  newparam(:event_source_name) do
    desc "Name of the event source."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Parameters for creating an event source resource."
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
