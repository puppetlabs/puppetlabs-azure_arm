require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_controller) do
  @doc = ""

  ensurable

  validate do
    required_properties = [
      :location,
      :properties,
      :sku,
      :controller,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_controller you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Fully qualified resource Id for the resource."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Region where the Azure resource is located."
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
    desc ""
    validate do |value|
      true
    end
  end
  newproperty(:sku) do
    desc ""
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "Tags for the Azure resource."
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
    desc "Client API version."
    validate do |value|
      true
    end
  end
  newparam(:controller) do
    desc "Controller create parameters."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "Resource group to which the resource belongs."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Azure subscription ID."
    validate do |value|
      true
    end
  end
end
