require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_vault) do
  @doc = "Resource information with extended details."

  ensurable

  validate do
    required_properties = [
      :location,
      :properties,
      :parameters,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_vault you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The Azure Resource Manager resource ID for the key vault."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The supported Azure location where the key vault should be created."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the key vault."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties of the vault"
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "The tags that will be assigned to the key vault. "
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The resource type of the key vault."
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
  newparam(:parameters) do
    desc "Parameters to create or update the vault"
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the Resource Group to which the server belongs."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
end
