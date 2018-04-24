require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_manager) do
  @doc = "The StorSimple Manager."

  ensurable

  validate do
    required_properties = [
      :location,
      :parameters,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_manager you must provide a value for #{property}"
      end
    end
  end
  newproperty(:etag) do
    desc "The etag of the manager."
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "The resource ID."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The geo location of the resource."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The resource name."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The properties of the StorSimple Manager."
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "The tags attached to the resource."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The resource type."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The api version"
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "The manager."
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
  newparam(:subscription_id) do
    desc "The subscription id"
    validate do |value|
      true
    end
  end
end
