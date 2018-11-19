require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_generic_resource) do
  @doc = "Resource information."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_generic_resource you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource ID"
    validate do |value|
      true
    end
  end
  newproperty(:identity) do
    desc "The identity of the resource."
    validate do |value|
      true
    end
  end
  newproperty(:kind) do
    desc "The kind of the resource."
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
  newproperty(:managed_by) do
    desc "ID of the resource that manages this resource."
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
  newproperty(:plan) do
    desc "The plan of the resource."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The resource properties."
    validate do |value|
      true
    end
  end
  newproperty(:sku) do
    desc "The SKU of the resource."
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
    desc "The API version to use for the operation."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Parameters for creating or updating the resource."
    validate do |value|
      true
    end
  end
  newparam(:parent_resource_path) do
    desc "The parent resource identity."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group for the resource. The name is case insensitive."
    validate do |value|
      true
    end
  end
  newparam(:resource_name) do
    desc "The name of the resource to create."
    validate do |value|
      true
    end
  end
  newparam(:resource_provider_namespace) do
    desc "The namespace of the resource provider."
    validate do |value|
      true
    end
  end
  newparam(:resource_type) do
    desc "The resource type of the resource to create."
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
