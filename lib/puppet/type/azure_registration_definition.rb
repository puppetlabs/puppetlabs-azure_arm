require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_registration_definition) do
  @doc = "Registration definition."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_registration_definition you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Fully qualified path of the registration definition."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Name of the registration definition."
    validate do |value|
      true
    end
  end
  newproperty(:plan) do
    desc "Plan details for the managed services."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties of a registration definition."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Type of the resource."
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
  newparam(:request_body) do
    desc "The parameters required to create new registration definition."
    validate do |value|
      true
    end
  end
  newparam(:scope) do
    desc "Scope of the resource."
    validate do |value|
      true
    end
  end
end
