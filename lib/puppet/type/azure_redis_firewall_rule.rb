require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_redis_firewall_rule) do
  @doc = "A firewall rule on a redis cache has a name, and describes a contiguous range of IP addresses permitted to connect"

  ensurable

  validate do
    required_properties = [
      :properties,
      :cache_name,
      :parameters,
      :resource_group_name,
      :rule_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_redis_firewall_rule you must provide a value for #{property}"
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
    desc "redis cache firewall rule properties"
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
    desc "Client Api Version."
    validate do |value|
      true
    end
  end
  newparam(:cache_name) do
    desc "The name of the Redis cache."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Parameters supplied to the create or update redis firewall rule operation."
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
  newparam(:rule_name) do
    desc "The name of the firewall rule."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Gets subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
end
