require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_authorization_policy_assignment) do
  @doc = "The policy assignment."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_authorization_policy_assignment you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The ID of the policy assignment."
    validate do |value|
      true
    end
  end
  newproperty(:identity) do
    desc "The managed identity associated with the policy assignment."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The location of the policy assignment. Only required when utilizing managed identity."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the policy assignment."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties for the policy assignment."
    validate do |value|
      true
    end
  end
  newproperty(:sku) do
    desc "The policy sku. This property is optional, obsolete, and will be ignored."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The type of the policy assignment."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The API version to use for the operation."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Parameters for the policy assignment."
    validate do |value|
      true
    end
  end
  newparam(:scope) do
    desc "The scope of the policy assignment. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}', or resource (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/[{parentResourcePath}/]{resourceType}/{resourceName}'"
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The ID of the target subscription."
    validate do |value|
      true
    end
  end
end
