require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_resource_group) do
  @doc = "Resource group information."

  ensurable

  validate do
    required_properties = [
      :location,
      :parameters,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_resource_group you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The ID of the resource group."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The location of the resource group. It cannot be changed after the resource group has been created. It must be one of the supported Azure locations."
    validate do |value|
      true
    end
  end
  newproperty(:managed_by) do
    desc "The ID of the resource that manages this resource group."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the resource group."
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
    desc "The tags attached to the resource group."
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
    desc "Parameters supplied to the create or update a resource group."
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
