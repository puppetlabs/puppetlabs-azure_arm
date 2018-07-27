require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_customer_subscription) do
  @doc = "Customer subcription."

  ensurable

  validate do
    required_properties = [
      :location,
      :customer_creation_parameters,
      :registration_name,
      :resource_group,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_customer_subscription you must provide a value for #{property}"
      end
    end
  end
  newproperty(:etag) do
    desc "The entity tag used for optimistic concurency when modifying the resource."
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "ID of the resource."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Location of the resource."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Name of the resource."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Customer subscription properties."
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "Custom tags for the resource."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Type of Resource."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "Client API Version."
    validate do |value|
      true
    end
  end
  newparam(:customer_creation_parameters) do
    desc "Parameters use to create a customer subscription."
    validate do |value|
      true
    end
  end
  newparam(:registration_name) do
    desc "Name of the Azure Stack registration."
    validate do |value|
      true
    end
  end
  newparam(:resource_group) do
    desc "Name of the resource group."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Subscription credentials that uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
end
