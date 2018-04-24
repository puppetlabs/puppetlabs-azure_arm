require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_replication_protected_item) do
  @doc = "Replication protected item."

  ensurable

  validate do
    required_properties = [
      :fabric_name,
      :input,
      :protection_container_name,
      :replicated_protected_item_name,
      :resource_group_name,
      :resource_name,
      :update_mobility_service_request,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_replication_protected_item you must provide a value for #{property}"
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
    desc "Resource Location"
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Resource Name"
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The custom data."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Resource Type"
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
  newparam(:fabric_name) do
    desc "Name of the fabric."
    validate do |value|
      true
    end
  end
  newparam(:input) do
    desc "Enable Protection Input."
    validate do |value|
      true
    end
  end
  newparam(:protection_container_name) do
    desc "Protection container name."
    validate do |value|
      true
    end
  end
  newparam(:replicated_protected_item_name) do
    desc "A name for the replication protected item."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group where the recovery services vault is present."
    validate do |value|
      true
    end
  end
  newparam(:resource_name) do
    desc "The name of the recovery services vault."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscription Id."
    validate do |value|
      true
    end
  end
  newparam(:update_mobility_service_request) do
    desc "Request to update the mobility service on the protected item."
    validate do |value|
      true
    end
  end
end
