require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_resource_link) do
  @doc = "The resource link."

  ensurable

  validate do
    required_properties = [
      :link_id,
      :parameters,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_resource_link you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The fully qualified ID of the resource link."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the resource link."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties for resource link."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The API version to use for the operation."
    validate do |value|
      true
    end
  end
  newparam(:link_id) do
    desc "The fully qualified ID of the resource link. Use the format, /subscriptions/{subscription-id}/resourceGroups/{resource-group-name}/{provider-namespace}/{resource-type}/{resource-name}/Microsoft.Resources/links/{link-name}. For example, /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myGroup/Microsoft.Web/sites/mySite/Microsoft.Resources/links/myLink"
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Parameters for creating or updating a resource link."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The ID of the target subscription."
    validate do |value|
      true
    end
  end
end
