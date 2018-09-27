require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_policy_set_definition) do
  @doc = "The policy set definition."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_policy_set_definition you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The ID of the policy set definition."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the policy set definition."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The policy definition properties."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The type of the resource (Microsoft.Authorization/policySetDefinitions)."
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
  newparam(:management_group_id) do
    desc "The ID of the management group."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "The policy set definition properties."
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
