require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_role_definition) do
  @doc = "Role definition."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_role_definition you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The role definition ID."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The role definition name."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Role definition properties."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The role definition type."
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
  newparam(:role_definition) do
    desc "The values for the role definition."
    validate do |value|
      true
    end
  end
  newparam(:scope) do
    desc "The scope of the role definition."
    validate do |value|
      true
    end
  end
end
