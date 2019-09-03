require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_health_probe_settings_model) do
  @doc = "Load balancing settings for a backend pool"

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_health_probe_settings_model you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource ID."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Resource name."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties of the health probe settings"
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
    desc "Client API version."
    validate do |value|
      true
    end
  end
  newparam(:front_door_name) do
    desc "Name of the Front Door which is globally unique."
    validate do |value|
      true
    end
  end
  newparam(:health_probe_settings_name) do
    desc "Name of the health probe settings which is unique within the Front Door."
    validate do |value|
      true
    end
  end
  newparam(:health_probe_settings_parameters) do
    desc "HealthProbeSettings properties needed to create a new Front Door."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "Name of the Resource group within the Azure subscription."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
end
