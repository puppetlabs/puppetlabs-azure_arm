require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_storage_insight) do
  @doc = "The top level storage insight resource container."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_storage_insight you must provide a value for #{property}"
      end
    end
  end
  newproperty(:e_tag) do
    desc "The ETag of the storage insight."
    validate do |value|
      true
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
    desc "Storage insight properties."
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
    desc "Resource type."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The client API version."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "The parameters required to create or update a storage insight."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The Resource Group name."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The Subscription ID."
    validate do |value|
      true
    end
  end
  newparam(:workspace_name) do
    desc "The Log Analytics Workspace name."
    validate do |value|
      true
    end
  end
end
