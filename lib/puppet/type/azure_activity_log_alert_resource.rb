require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_activity_log_alert_resource) do
  @doc = "An activity log alert resource."

  ensurable

  validate do
    required_properties = [
      :location,
      :activity_log_alert,
      :activity_log_alert_name,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_activity_log_alert_resource you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Azure resource Id"
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Resource location"
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Azure resource name"
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The activity log alert properties of the resource."
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
    desc "Azure resource type"
    validate do |value|
      true
    end
  end
  newparam(:activity_log_alert) do
    desc "The activity log alert to create or use for the update."
    validate do |value|
      true
    end
  end
  newparam(:activity_log_alert_name) do
    desc "The name of the activity log alert."
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
    desc "The name of the resource group."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The Azure subscription Id."
    validate do |value|
      true
    end
  end
end
