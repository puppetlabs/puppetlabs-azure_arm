require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_access_policy_resource) do
  @doc = "An access policy is used to grant users and applications access to the environment. Roles are assigned to service principals in Azure Active Directory. These roles define the actions the principal can perform through the Time Series Insights data plane APIs."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_access_policy_resource you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource Id"
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Resource name"
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
  newproperty(:type) do
    desc "Resource type"
    validate do |value|
      true
    end
  end
  newparam(:access_policy_name) do
    desc "Name of the access policy."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "Version of the API to be used with the client request."
    validate do |value|
      true
    end
  end
  newparam(:environment_name) do
    desc "The name of the Time Series Insights environment associated with the specified resource group."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Parameters for creating an access policy."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "Name of an Azure Resource group."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Azure Subscription ID."
    validate do |value|
      true
    end
  end
end
