require "puppet/parameter/boolean"

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
    desc "The etag of the saved search."
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
    desc "Gets or sets properties of the saved search."
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
    desc "Client Api Version."
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
    desc "The name of the resource group to get. The name is case insensitive."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
  newparam(:workspace_name) do
    desc "Log Analytics workspace name"
    validate do |value|
      true
    end
  end
end
