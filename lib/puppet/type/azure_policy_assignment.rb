require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_policy_assignment) do
  @doc = "The policy assignment."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_policy_assignment you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The ID of the policy assignment."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the policy assignment."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties for the policy assignment."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The type of the policy assignment."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The API version to use for the operation."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Parameters for policy assignment."
    validate do |value|
      true
    end
  end
  newparam(:scope) do
    desc "The scope of the policy assignment."
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
