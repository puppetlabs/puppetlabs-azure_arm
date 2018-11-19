require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_solutions_application) do
  @doc = "Information about managed application."

  ensurable

  validate do
    required_properties = [
      :kind,
      :properties,
      :parameters,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_solutions_application you must provide a value for #{property}"
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
    desc "The kind of the managed application. Allowed values are MarketPlace and ServiceCatalog."
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
    desc "The plan information."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The managed application properties."
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
    desc "The API version to use for this operation."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Parameters supplied to the create or update a managed application."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group. The name is case insensitive."
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
