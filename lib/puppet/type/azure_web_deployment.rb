require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_web_deployment) do
  @doc = "Represents user crendentials used for publishing activity"

  ensurable

  validate do
    required_properties = [
      :location,
      :deployment,
      :instance_id,
      :resource_group_name,
      :slot,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_web_deployment you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource Id"
    validate do |value|
      true
    end
  end
  newproperty(:kind) do
    desc "Kind of resource"
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Resource Location"
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Resource Name"
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
    desc "API Version"
    validate do |value|
      true
    end
  end
  newparam(:deployment) do
    desc "Details of deployment"
    validate do |value|
      true
    end
  end
  newparam(:instance_id) do
    desc "Id of web app instance"
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "Name of resource group"
    validate do |value|
      true
    end
  end
  newparam(:slot) do
    desc "Name of web app slot. If not specified then will default to production slot."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Subscription Id"
    validate do |value|
      true
    end
  end
end
