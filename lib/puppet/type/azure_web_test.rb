require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_web_test) do
  @doc = "An Application Insights web test definition."

  ensurable

  validate do
    required_properties = [
      :location,
      :web_test_definition,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_web_test you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Azure resource Id"
    validate do |value|
      true
    end
  end
  newproperty(:kind) do
    desc "The kind of web test that this web test watches. Choices are ping and multistep."
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
    desc "Metadata describing a web test for an Azure resource."
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
    desc "The Azure subscription ID."
    validate do |value|
      true
    end
  end
  newparam(:web_test_definition) do
    desc "Properties that need to be specified to create or update an Application Insights web test definition."
    validate do |value|
      true
    end
  end
end
