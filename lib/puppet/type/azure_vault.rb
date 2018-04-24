require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_vault) do
  @doc = "Resource information, as returned by the resource provider."

  ensurable

  validate do
    required_properties = [
      :location,
      :resource_group_name,
      :vault,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_vault you must provide a value for #{property}"
      end
    end
  end
  newproperty(:e_tag) do
    desc "Optional ETag."
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "Resource Id represents the complete path to the resource."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Resource location."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Resource name associated with the resource."
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
    desc "Resource tags."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/..."
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
  newparam(:resource_group_name) do
    desc "The name of the resource group where the recovery services vault is present."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscription Id."
    validate do |value|
      true
    end
  end
  newparam(:vault) do
    desc "Recovery Services Vault to be created."
    validate do |value|
      true
    end
  end
end
