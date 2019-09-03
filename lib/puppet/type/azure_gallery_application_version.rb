require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_gallery_application_version) do
  @doc = "Specifies information about the gallery Application Version that you want to create or update."

  ensurable

  validate do
    required_properties = [
      :location,
      :gallery_application_name,
      :gallery_application_version,
      :gallery_name,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_gallery_application_version you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource Id"
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
    desc "Resource name"
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
  newproperty(:tags) do
    desc "Resource tags"
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Resource type"
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
  newparam(:gallery_application_name) do
    desc "The name of the gallery Application Definition in which the Application Version is to be created."
    validate do |value|
      true
    end
  end
  newparam(:gallery_application_version) do
    desc "Parameters supplied to the create or update gallery Application Version operation."
    validate do |value|
      true
    end
  end
  newparam(:gallery_name) do
    desc "The name of the Shared Application Gallery in which the Application Definition resides."
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
    desc "Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
end
