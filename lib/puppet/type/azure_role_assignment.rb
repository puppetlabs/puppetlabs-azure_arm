require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_role_assignment) do
  @doc = "Role Assignments"

  ensurable

  validate do
    required_properties = [
      :parameters,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_role_assignment you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The role assignment ID."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The role assignment name."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Role assignment properties."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The role assignment type."
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
    desc "Parameters for the role assignment."
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
