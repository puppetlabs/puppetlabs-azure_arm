require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_iot_hub_description) do
  @doc = "The description of the IoT hub."

  ensurable

  validate do
    required_properties = [
      :location,
      :sku,
      :iot_hub_description,
      :resource_group_name,
      :resource_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_iot_hub_description you must provide a value for #{property}"
      end
    end
  end
  newproperty(:etag) do
    desc "The Etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal ETag convention."
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "The resource identifier."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The resource location."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The resource name."
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
  newproperty(:sku) do
    desc ""
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "The resource tags."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The resource type."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The version of the API."
    validate do |value|
      true
    end
  end
  newparam(:iot_hub_description) do
    desc "The IoT hub metadata and security metadata."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group that contains the IoT hub."
    validate do |value|
      true
    end
  end
  newparam(:resource_name) do
    desc "The name of the IoT hub."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscription identifier."
    validate do |value|
      true
    end
  end
end
