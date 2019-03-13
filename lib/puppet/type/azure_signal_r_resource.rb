require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_signal_r_resource) do
  @doc = "A class represent a SignalR service resource."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_signal_r_resource you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Fully qualified resource Id for the resource."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The GEO location of the SignalR service. e.g. West US | East US | North Central US | South Central US."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the resource."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The properties of the service."
    validate do |value|
      true
    end
  end
  newproperty(:sku) do
    desc "SKU of the service."
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "Tags of the service which is a list of key value pairs that describe the resource."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The type of the service - e.g. 'Microsoft.SignalRService/SignalR'"
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
  newparam(:resource_group_name) do
    desc "The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal."
    validate do |value|
      true
    end
  end
  newparam(:resource_name) do
    desc "The name of the SignalR resource."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Gets subscription Id which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
end
