require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_group) do
  @doc = "A group created in a Migration project."

  ensurable

  validate do
    required_properties = [
      :properties,
      :project_name,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_group you must provide a value for #{property}"
      end
    end
  end
  newproperty(:e_tag) do
    desc "For optimistic concurrency control."
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "Path reference to this group. /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/projects/{projectName}/groups/{groupName}"
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Name of the group."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties of the group."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Type of the object = [Microsoft.Migrate/projects/groups]."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "Standard request header. Used by service to identify API version used by client."
    validate do |value|
      true
    end
  end
  newparam(:project_name) do
    desc "Name of the Azure Migrate project."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "Name of the Azure Resource Group that project is part of."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Azure Subscription Id in which project was created."
    validate do |value|
      true
    end
  end
end
