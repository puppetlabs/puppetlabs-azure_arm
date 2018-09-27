require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_suppression_contract) do
  @doc = "The details of the snoozed or dismissed rule; for example, the duration, name, and GUID associated with the rule."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_suppression_contract you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The resource ID."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the resource."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The properties of the suppression."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The type of the resource."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The version of the API to be used with the client request."
    validate do |value|
      true
    end
  end
  newparam(:recommendation_id) do
    desc "The recommendation ID."
    validate do |value|
      true
    end
  end
  newparam(:resource_uri) do
    desc "The fully qualified Azure Resource Manager identifier of the resource to which the recommendation applies."
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
  newparam(:suppression_contract) do
    desc "The snoozed or dismissed attribute; for example, the snooze duration."
    validate do |value|
      true
    end
  end
end
