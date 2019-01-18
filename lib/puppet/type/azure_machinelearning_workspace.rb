require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_machinelearning_workspace) do
  @doc = "An object that represents a machine learning workspace."

  ensurable

  validate do
    required_properties = [
      :location,
      :parameters,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_machinelearning_workspace you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The resource ID."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The location of the resource. This cannot be changed after the resource is created."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the resource."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The properties of the machine learning workspace."
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "The tags of the resource."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The type of the resource."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The client API version."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "The parameters for creating or updating a machine learning workspace."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group to which the machine learning workspace belongs."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The Microsoft Azure subscription ID."
    validate do |value|
      true
    end
  end
end
