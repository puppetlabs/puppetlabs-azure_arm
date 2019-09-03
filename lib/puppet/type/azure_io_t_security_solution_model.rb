require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_io_t_security_solution_model) do
  @doc = "Security Solution"

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_io_t_security_solution_model you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource Id"
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
    desc "Resource name"
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Security Solution data"
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
    desc "API version for the operation"
    validate do |value|
      true
    end
  end
  newparam(:iot_security_solution_data) do
    desc "The security solution data"
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group within the user's subscription. The name is case insensitive."
    validate do |value|
      true
    end
  end
  newparam(:solution_name) do
    desc "The solution manager name"
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Azure subscription ID"
    validate do |value|
      true
    end
  end
end
