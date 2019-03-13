require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_event_subscription) do
  @doc = "Event Subscription"

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_event_subscription you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Fully qualified identifier of the resource"
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
    desc "Properties of the event subscription"
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
  newparam(:event_subscription_info) do
    desc "Event subscription properties containing the destination and filter information"
    validate do |value|
      true
    end
  end
  newparam(:scope) do
    desc "The identifier of the resource to which the event subscription needs to be created or updated. The scope can be a subscription, or a resource group, or a top level resource belonging to a resource provider namespace, or an EventGrid topic. For example, use '/subscriptions/{subscriptionId}/' for a subscription, '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for a resource group, and '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}' for a resource, and '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/topics/{topicName}' for an EventGrid topic."
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
end
