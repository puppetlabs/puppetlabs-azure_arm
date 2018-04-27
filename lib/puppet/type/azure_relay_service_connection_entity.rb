require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_relay_service_connection_entity) do
  @doc = "Class that represents a Biztalk Hybrid Connection"

  ensurable

  validate do
    required_properties = [
      :location,
      :connection_envelope,
      :entity_name,
      :resource_group_name,
      :slot,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_relay_service_connection_entity you must provide a value for #{property}"
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
  newparam(:connection_envelope) do
    desc "The details of the Hybrid Connection"
    validate do |value|
      true
    end
  end
  newparam(:entity_name) do
    desc "The name by which the Hybrid Connection is identified"
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The resource group name"
    validate do |value|
      true
    end
  end
  newparam(:slot) do
    desc "The name of the slot for the web app."
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
