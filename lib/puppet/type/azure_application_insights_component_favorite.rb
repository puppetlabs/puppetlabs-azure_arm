require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_application_insights_component_favorite) do
  @doc = "Properties that define a favorite that is associated to an Application Insights component."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_application_insights_component_favorite you must provide a value for #{property}"
      end
    end
  end
  newproperty(:category) do
    desc "Favorite category, as defined by the user at creation time."
    validate do |value|
      true
    end
  end
  newproperty(:config) do
    desc "Configuration of this particular favorite, which are driven by the Azure portal UX. Configuration data is a string containing valid JSON"
    validate do |value|
      true
    end
  end
  newproperty(:favorite_id) do
    desc "Internally assigned unique id of the favorite definition."
    validate do |value|
      true
    end
  end
  newproperty(:favorite_type) do
    desc "Enum indicating if this favorite definition is owned by a specific user or is shared between all users with access to the Application Insights component."
    validate do |value|
      true
    end
  end
  newproperty(:is_generated_from_template) do
    desc "Flag denoting wether or not this favorite was generated from a template."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The user-defined name of the favorite."
    validate do |value|
      true
    end
  end
  newproperty(:source_type) do
    desc "The source of the favorite definition."
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "A list of 0 or more tags that are associated with this favorite definition"
    validate do |value|
      true
    end
  end
  newproperty(:time_modified) do
    desc "Date and time in UTC of the last modification that was made to this favorite definition."
    validate do |value|
      true
    end
  end
  newproperty(:user_id) do
    desc "Unique user id of the specific user that owns this favorite."
    validate do |value|
      true
    end
  end
  newproperty(:version) do
    desc "This instance's version of the data model. This can change as new features are added that can be marked favorite. Current examples include MetricsExplorer (ME) and Search."
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
  newparam(:favorite_properties) do
    desc "Properties that need to be specified to create a new favorite and add it to an Application Insights component."
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
  newparam(:subscription_id) do
    desc "The Azure subscription ID."
    validate do |value|
      true
    end
  end
end
