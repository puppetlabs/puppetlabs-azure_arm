require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_event_hub_consumer_group_info) do
  @doc = "The properties of the EventHubConsumerGroupInfo object."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_event_hub_consumer_group_info you must provide a value for #{property}"
      end
    end
  end
  newproperty(:etag) do
    desc "The etag."
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "The Event Hub-compatible consumer group identifier."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The Event Hub-compatible consumer group name."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The tags."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "the resource type."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The version of the API."
    validate do |value|
      true
    end
  end
  newparam(:event_hub_endpoint_name) do
    desc "The name of the Event Hub-compatible endpoint in the IoT hub."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group that contains the IoT hub."
    validate do |value|
      true
    end
  end
  newparam(:resource_name) do
    desc "The name of the IoT hub."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscription identifier."
    validate do |value|
      true
    end
  end
end
