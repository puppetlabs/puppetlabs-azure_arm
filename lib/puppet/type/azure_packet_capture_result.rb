require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_packet_capture_result) do
  @doc = "Information about packet capture session."

  ensurable

  validate do
    required_properties = [
      :network_watcher_name,
      :packet_capture_name,
      :parameters,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_packet_capture_result you must provide a value for #{property}"
      end
    end
  end
  newproperty(:etag) do
    desc ""
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "ID of the packet capture operation."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Name of the packet capture session."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc ""
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
  newparam(:network_watcher_name) do
    desc "The name of the network watcher."
    validate do |value|
      true
    end
  end
  newparam(:packet_capture_name) do
    desc "The name of the packet capture session."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Parameters that define the create packet capture operation."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group."
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
