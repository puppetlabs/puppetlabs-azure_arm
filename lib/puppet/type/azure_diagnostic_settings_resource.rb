require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_diagnostic_settings_resource) do
  @doc = "The diagnostic setting resource."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_diagnostic_settings_resource you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Azure resource Id"
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Azure resource name"
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties of a Diagnostic Settings Resource."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Azure resource type"
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
  newparam(:parameters) do
    desc "Parameters supplied to the operation."
    validate do |value|
      true
    end
  end
end
