require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_cluster) do
  @doc = "The cluster resource"

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
        raise Puppet::Error, "In azure_cluster you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource ID."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Resource location."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Resource name."
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
    desc "Resource tags."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Resource type."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The version of the ServiceFabric resouce provider api"
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Put Request"
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group to which the resource belongs or get created"
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The customer subscription identifier"
    validate do |value|
      true
    end
  end
end
