require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_protection_policy_resource) do
  @doc = "The base class for backup policy. Workload-specific backup policies are derived from this class."

  ensurable

  validate do
    required_properties = [
      :policy_name,
      :resource_group_name,
      :resource_protection_policy,
      :vault_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_protection_policy_resource you must provide a value for #{property}"
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
    desc "Resource ID represents the complete path to the resource."
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
    desc "Client API version."
    validate do |value|
      true
    end
  end
  newparam(:policy_name) do
    desc "The backup policy to be created."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group associated with the Recovery Services vault."
    validate do |value|
      true
    end
  end
  newparam(:resource_protection_policy) do
    desc "The resource backup policy."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscription ID."
    validate do |value|
      true
    end
  end
  newparam(:vault_name) do
    desc "The name of the Recovery Services vault."
    validate do |value|
      true
    end
  end
end
