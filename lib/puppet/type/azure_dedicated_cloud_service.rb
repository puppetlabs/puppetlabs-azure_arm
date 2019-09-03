require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_dedicated_cloud_service) do
  @doc = "Dedicated cloud service model"

  ensurable

  validate do
    required_properties = [
      :location,
      :dedicated_cloud_service_request,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_dedicated_cloud_service you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/dedicatedCloudServices/{dedicatedCloudServiceName}"
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
    desc "{dedicatedCloudServiceName}"
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The properties of Dedicated Node Service"
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "The list of tags"
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
  newparam(:dedicated_cloud_service_request) do
    desc "Create Dedicated Cloud Service request"
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
