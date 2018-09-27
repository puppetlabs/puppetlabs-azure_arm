require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_authorization_rule) do
  @doc = "Single item in a List or Get AuthorizationRule operation"

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_authorization_rule you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource Id"
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
  newproperty(:properties) do
    desc "Properties supplied to create or update AuthorizationRule"
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
    desc "Client API Version."
    validate do |value|
      true
    end
  end
  newparam(:event_hub_name) do
    desc "The Event Hub name"
    validate do |value|
      true
    end
  end
  newparam(:namespace_name) do
    desc "The Namespace name"
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "The shared access AuthorizationRule."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "Name of the resource group within the azure subscription."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
end
