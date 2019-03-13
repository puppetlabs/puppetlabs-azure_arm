require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_shared_access_authorization_rule_resource) do
  @doc = "Description of a Namespace AuthorizationRules."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_shared_access_authorization_rule_resource you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource Id"
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
  newparam(:name) do
    isnamevar
    desc "Resource name"
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties of the Namespace AuthorizationRule."
    validate do |value|
      true
    end
  end
  newproperty(:sku) do
    desc "The sku of the created namespace"
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
    desc "Client Api Version."
    validate do |value|
      true
    end
  end
  newparam(:authorization_rule_name) do
    desc "Authorization Rule Name."
    validate do |value|
      true
    end
  end
  newparam(:namespace_name) do
    desc "The namespace name."
    validate do |value|
      true
    end
  end
  newparam(:notification_hub_name) do
    desc "The notification hub name."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "The shared access authorization rule."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
end
