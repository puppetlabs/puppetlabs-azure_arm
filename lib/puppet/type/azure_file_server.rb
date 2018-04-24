require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_file_server) do
  @doc = "Contains information about the File Server."

  ensurable

  validate do
    required_properties = [
      :parameters,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_file_server you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The ID of the resource"
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The location of the resource"
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the resource"
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The properties associated with the File Server."
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "The tags of the resource"
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The type of the resource"
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "Specifies the version of API used for this request."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "The parameters to provide for file server creation."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "Name of the resource group to which the resource belongs."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscriptionID for the Azure user."
    validate do |value|
      true
    end
  end
end
