require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_integration_account) do
  @doc = "The integration account."

  ensurable

  validate do
    required_properties = [
      :integration_account,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_integration_account you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The resource id."
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
    desc "Gets the resource name."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The integration account properties."
    validate do |value|
      true
    end
  end
  newproperty(:sku) do
    desc "The sku."
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
    desc "Gets the resource type."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The API version."
    validate do |value|
      true
    end
  end
  newparam(:integration_account) do
    desc "The integration account."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The resource group name."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscription id."
    validate do |value|
      true
    end
  end
end
