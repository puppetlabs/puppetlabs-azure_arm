require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_network_endpoint) do
  @doc = "Class representing a Traffic Manager endpoint."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_network_endpoint you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficManagerProfiles/{resourceName}"
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the resource"
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The properties of the Traffic Manager endpoint."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The type of the resource. Ex- Microsoft.Network/trafficManagerProfiles."
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
    desc "The Traffic Manager endpoint parameters supplied to the CreateOrUpdate operation."
    validate do |value|
      true
    end
  end
  newparam(:profile_name) do
    desc "The name of the Traffic Manager profile."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group containing the Traffic Manager endpoint to be created or updated."
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
end
