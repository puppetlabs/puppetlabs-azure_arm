require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_domain) do
  @doc = "EventGrid Domain."

  ensurable

  validate do
    required_properties = [
      :location,
      :domain_info,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_domain you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Fully qualified identifier of the resource."
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
    desc "Properties of the domain."
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "Tags of the resource."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Type of the resource."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "Version of the API to be used with the client request."
    validate do |value|
      true
    end
  end
  newparam(:domain_info) do
    desc "Domain information."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group within the user's subscription."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
end
