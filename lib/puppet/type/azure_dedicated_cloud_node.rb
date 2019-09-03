require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_dedicated_cloud_node) do
  @doc = "Dedicated cloud node model"

  ensurable

  validate do
    required_properties = [
      :location,
      :referer,
      :dedicated_cloud_node_request,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_dedicated_cloud_node you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/dedicatedCloudNodes/{dedicatedCloudNodeName}"
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Azure region"
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "{dedicatedCloudNodeName}"
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Dedicated Cloud Nodes properties"
    validate do |value|
      true
    end
  end
  newproperty(:sku) do
    desc "Dedicated Cloud Nodes SKU"
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "Dedicated Cloud Nodes tags"
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "{resourceProviderNamespace}/{resourceType}"
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "Client API version."
    validate do |value|
      true
    end
  end
  newparam(:dedicated_cloud_node_request) do
    desc "Create Dedicated Cloud Node request"
    validate do |value|
      true
    end
  end
  newparam(:referer) do
    desc "referer url"
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group"
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscription ID."
    validate do |value|
      true
    end
  end
end
