require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_maps_account) do
  @doc = "An Azure resource which represents access to a suite of Maps REST APIs."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_maps_account you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The fully qualified Maps Account resource identifier."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The location of the resource."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the Maps Account, which is unique within a Resource Group."
    validate do |value|
      true
    end
  end
  newproperty(:sku) do
    desc "The SKU of this account."
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "Gets a list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Azure resource type."
    validate do |value|
      true
    end
  end
  newparam(:account_name) do
    desc "The name of the Maps Account."
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
  newparam(:maps_account_create_parameters) do
    desc "The new or updated parameters for the Maps Account."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the Azure Resource Group."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
end
