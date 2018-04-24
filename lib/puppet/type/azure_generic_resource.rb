require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_generic_resource) do
  @doc = "Resource information."

  ensurable

  validate do
    required_properties = [
      :api_version,
      :parameters,
      :resource_id,
    ]
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
    desc "Create or update resource parameters."
    validate do |value|
      true
    end
  end
  newparam(:resource_id) do
    desc "The fully qualified ID of the resource, including the resource name and resource type. Use the format, /subscriptions/{guid}/resourceGroups/{resource-group-name}/{resource-provider-namespace}/{resource-type}/{resource-name}"
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
