require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_deployment) do
  @doc = "User crendentials used for publishing activity."

  ensurable

  validate do
    required_properties = [
      :deployment,
      :resource_group_name,
      :slot,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_deployment you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource Id."
    validate do |value|
      true
    end
  end
  newproperty(:kind) do
    desc "Kind of resource."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Resource Name."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Deployment resource specific properties"
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
    desc "API Version"
    validate do |value|
      true
    end
  end
  newparam(:deployment) do
    desc "Deployment details."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "Name of the resource group to which the resource belongs."
    validate do |value|
      true
    end
  end
  newparam(:slot) do
    desc "Name of the deployment slot. If a slot is not specified, the API creates a deployment for the production slot."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000)."
    validate do |value|
      true
    end
  end
end
