require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_identity) do
  @doc = "Describes an identity resource."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_identity you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The id of the created identity."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The Azure region where the identity lives."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the created identity."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The properties associated with the identity."
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
    desc "The type of resource i.e. Microsoft.ManagedIdentity/userAssignedIdentities"
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "Version of API to invoke."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Parameters to create or update the identity"
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the Resource Group to which the identity belongs."
    validate do |value|
      true
    end
  end
  newparam(:resource_name) do
    desc "The name of the identity resource."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The Id of the Subscription to which the identity belongs."
    validate do |value|
      true
    end
  end
end
