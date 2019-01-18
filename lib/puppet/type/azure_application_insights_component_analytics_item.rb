require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_application_insights_component_analytics_item) do
  @doc = "Properties that define an Analytics item that is associated to an Application Insights component."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_application_insights_component_analytics_item you must provide a value for #{property}"
      end
    end
  end
  newproperty(:content) do
    desc "The content of this item"
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "Internally assigned unique id of the item definition."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The user-defined name of the item."
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
  newproperty(:scope) do
    desc "Enum indicating if this item definition is owned by a specific user or is shared between all users with access to the Application Insights component."
    validate do |value|
      true
    end
  end
  newproperty(:time_created) do
    desc "Date and time in UTC when this item was created."
    validate do |value|
      true
    end
  end
  newproperty(:time_modified) do
    desc "Date and time in UTC of the last modification that was made to this item."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Enum indicating the type of the Analytics item."
    validate do |value|
      true
    end
  end
  newproperty(:version) do
    desc "This instance's version of the data model. This can change as new features are added."
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
  newparam(:item_properties) do
    desc "Properties that need to be specified to create a new item and add it to an Application Insights component."
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
  newparam(:resource_name) do
    desc "The name of the Application Insights component resource."
    validate do |value|
      true
    end
  end
  newparam(:scope_path) do
    desc "Enum indicating if this item definition is owned by a specific user or is shared between all users with access to the Application Insights component."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The Azure subscription ID."
    validate do |value|
      true
    end
  end
end
