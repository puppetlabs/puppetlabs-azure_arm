require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_servicefabric_cluster) do
  @doc = "The cluster resource
"

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
        raise Puppet::Error, "In azure_servicefabric_cluster you must provide a value for #{property}"
      end
    end
  end
  newproperty(:etag) do
    desc "Azure resource etag."
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "Azure resource identifier."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Azure resource location."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Azure resource name."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The cluster resource properties"
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "Azure resource tags."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Azure resource type."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The version of the Service Fabric resource provider API. This is a required parameter and it's value must be '2019-03-01' for this specification."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "The cluster resource."
    validate do |value|
      true
    end
  end
  newparam(:properties) do
    desc "The cluster resource properties"
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
    desc "The customer subscription identifier."
    validate do |value|
      true
    end
  end
end
