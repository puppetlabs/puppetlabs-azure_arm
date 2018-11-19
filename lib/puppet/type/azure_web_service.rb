require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_web_service) do
  @doc = "Instance of an Azure ML web service resource."

  ensurable

  validate do
    required_properties = [
      :location,
      :properties,
      :create_or_update_payload,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_web_service you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Specifies the resource ID."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Specifies the location of the resource."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Specifies the name of the resource."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Contains the property payload that describes the web service."
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "Contains resource tags defined as key/value pairs."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Specifies the type of the resource."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The version of the Microsoft.MachineLearning resource provider API to use."
    validate do |value|
      true
    end
  end
  newparam(:create_or_update_payload) do
    desc "The payload that is used to create or update the web service."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "Name of the resource group in which the web service is located."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The Azure subscription ID."
    validate do |value|
      true
    end
  end
end
