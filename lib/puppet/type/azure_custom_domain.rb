require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_custom_domain) do
  @doc = "Friendly domain name mapping to the endpoint hostname that the customer provides for branding purposes, e.g. www.consoto.com."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_custom_domain you must provide a value for #{property}"
      end
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
    desc ""
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
    desc "Version of the API to be used with the client request. Current version is 2017-04-02."
    validate do |value|
      true
    end
  end
  newparam(:endpoint_name) do
    desc "Name of the endpoint under the profile which is unique globally."
    validate do |value|
      true
    end
  end
  newparam(:profile_name) do
    desc "Name of the CDN profile which is unique within the resource group."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "Name of the Resource group within the Azure subscription."
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
