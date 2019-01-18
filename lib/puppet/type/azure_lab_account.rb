require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_lab_account) do
  @doc = "Represents a lab account."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_lab_account you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The identifier of the resource."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The location of the resource."
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
    desc "The properties of the resource."
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
    desc "Client API version."
    validate do |value|
      true
    end
  end
  newparam(:lab_account) do
    desc "Represents a lab account."
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
    desc "The subscription ID."
    validate do |value|
      true
    end
  end
end
