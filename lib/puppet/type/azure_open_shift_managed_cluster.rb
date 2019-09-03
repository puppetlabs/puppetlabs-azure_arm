require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_open_shift_managed_cluster) do
  @doc = "OpenShift Managed cluster."

  ensurable

  validate do
    required_properties = [
      :location,
      :parameters,
      :resource_group_name,
      :resource_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_open_shift_managed_cluster you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Resource Id"
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
    desc "Resource name"
    validate do |value|
      true
    end
  end
  newproperty(:plan) do
    desc "Define the resource plan as required by ARM for billing purposes"
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties of a OpenShift managed cluster."
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
    desc "Resource type"
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
    desc "Parameters supplied to the Create or Update an OpenShift Managed Cluster operation."
    validate do |value|
      true
    end
  end
  newparam(:plan) do
    desc "Define the resource plan as required by ARM for billing purposes"
    validate do |value|
      true
    end
  end
  newparam(:properties) do
    desc "Properties of a OpenShift managed cluster."
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
    desc "The name of the OpenShift managed cluster resource."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
end
