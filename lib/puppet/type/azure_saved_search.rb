require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_saved_search) do
  @doc = "Value object for saved search results."

  ensurable

  validate do
    required_properties = [
      :properties,
      :parameters,
      :resource_group_name,
      :workspace_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_saved_search you must provide a value for #{property}"
      end
    end
  end
  newproperty(:e_tag) do
    desc "The ETag of the saved search."
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "The id of the saved search."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the saved search."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The properties of the saved search."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The type of the saved search."
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
    desc "The parameters required to save a search."
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
