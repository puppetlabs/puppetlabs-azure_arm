require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_services_description) do
  @doc = "The description of the service."

  ensurable

  validate do
    required_properties = [
      :kind,
      :location,
      :resource_group_name,
      :resource_name,
      :service_description,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_services_description you must provide a value for #{property}"
      end
    end
  end
  newproperty(:etag) do
    desc "An etag associated with the resource, used for optimistic concurrency when editing it."
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "The resource identifier."
    validate do |value|
      true
    end
  end
  newproperty(:kind) do
    desc "The kind of the service."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The resource location."
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
    desc "The common properties of a service."
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "The resource tags."
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
    desc "Client Api Version."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group that contains the service instance."
    validate do |value|
      true
    end
  end
  newparam(:resource_name) do
    desc "The name of the service instance."
    validate do |value|
      true
    end
  end
  newparam(:service_description) do
    desc "The service instance metadata."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscription identifier."
    validate do |value|
      true
    end
  end
end
