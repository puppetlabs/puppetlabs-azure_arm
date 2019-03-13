require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_topic) do
  @doc = "EventGrid Topic"

  ensurable

  validate do
    required_properties = [
      :location,
      :resource_group_name,
      :topic_info,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_topic you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Fully qualified identifier of the resource"
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Location of the resource"
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Name of the resource"
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties of the topic"
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "Tags of the resource"
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Type of the resource"
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
  newparam(:resource_group_name) do
    desc "The name of the resource group within the user's subscription."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
  newparam(:topic_info) do
    desc "Topic information"
    validate do |value|
      true
    end
  end
end
