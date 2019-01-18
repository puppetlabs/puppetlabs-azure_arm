require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_site) do
  @doc = "Represents a web app"

  ensurable

  validate do
    required_properties = [
      :location,
      :resource_group_name,
      :site_envelope,
      :slot,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_site you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource Id"
    validate do |value|
      true
    end
  end
  newproperty(:kind) do
    desc "Kind of resource"
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Resource Location"
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Resource Name"
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
    desc "API Version"
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "Name of the resource group"
    validate do |value|
      true
    end
  end
  newparam(:site_envelope) do
    desc "Details of web app if it exists already"
    validate do |value|
      true
    end
  end
  newparam(:slot) do
    desc "Name of web app slot. If not specified then will default to production slot."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Subscription Id"
    validate do |value|
      true
    end
  end
end
