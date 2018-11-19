require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_webhook) do
  @doc = "An object that represents a webhook for a container registry."

  ensurable

  validate do
    required_properties = [
      :location,
      :registry_name,
      :resource_group_name,
      :webhook_create_parameters,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_webhook you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The resource ID."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The location of the resource. This cannot be changed after the resource is created."
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
    desc "The properties of the webhook."
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
    desc "The client API version."
    validate do |value|
      true
    end
  end
  newparam(:registry_name) do
    desc "The name of the container registry."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group to which the container registry belongs."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The Microsoft Azure subscription ID."
    validate do |value|
      true
    end
  end
  newparam(:webhook_create_parameters) do
    desc "The parameters for creating a webhook."
    validate do |value|
      true
    end
  end
end
