require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_log_profile_resource) do
  @doc = "The log profile resource."

  ensurable

  validate do
    required_properties = [
      :location,
      :properties,
      :log_profile_name,
      :parameters,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_log_profile_resource you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Azure resource Id"
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Resource location"
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
    desc "The log profile properties of the resource."
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
  newparam(:log_profile_name) do
    desc "The name of the log profile."
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
  newparam(:subscription_id) do
    desc "The Azure subscription Id."
    validate do |value|
      true
    end
  end
end
