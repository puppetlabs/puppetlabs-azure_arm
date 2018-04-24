require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_property_contract) do
  @doc = "Property details."

  ensurable

  validate do
    required_properties = [
      :if_match,
      :parameters,
      :prop_id,
      :resource_group_name,
      :service_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_property_contract you must provide a value for #{property}"
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
    desc "Property entity contract properties."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Resource type for API Management resource."
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
  newparam(:if_match) do
    desc "The entity state (Etag) version of the property to delete. A value of '*' can be used for If-Match to unconditionally apply the operation."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Create parameters."
    validate do |value|
      true
    end
  end
  newparam(:prop_id) do
    desc "Identifier of the property."
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
  newparam(:service_name) do
    desc "The name of the API Management service."
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
