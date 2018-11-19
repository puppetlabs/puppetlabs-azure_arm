require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_provisioning_service_description) do
  @doc = "The description of the provisioning service."

  ensurable

  validate do
    required_properties = [
      :location,
      :properties,
      :sku,
      :iot_dps_description,
      :provisioning_service_name,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_provisioning_service_description you must provide a value for #{property}"
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
    desc "Service specific properties for a provisioning service"
    validate do |value|
      true
    end
  end
  newproperty(:sku) do
    desc "Sku info for a provisioning Service."
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
  newparam(:iot_dps_description) do
    desc "Description of the provisioning service to create or update."
    validate do |value|
      true
    end
  end
  newparam(:provisioning_service_name) do
    desc "Name of provisioning service to create or update."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "Resource group identifier."
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
