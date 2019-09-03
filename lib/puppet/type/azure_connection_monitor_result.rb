require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_connection_monitor_result) do
  @doc = "Information about the connection monitor."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_connection_monitor_result you must provide a value for #{property}"
      end
    end
  end
  newproperty(:etag) do
    desc "A unique read-only string that changes whenever the resource is updated."
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "ID of the connection monitor."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Connection monitor location."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Name of the connection monitor."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties of the connection monitor result."
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "Connection monitor tags."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Connection monitor type."
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
  newparam(:connection_monitor_name) do
    desc "The name of the connection monitor."
    validate do |value|
      true
    end
  end
  newparam(:network_watcher_name) do
    desc "The name of the Network Watcher resource."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Parameters that define the operation to create a connection monitor."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group containing Network Watcher."
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
