require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_record_set) do
  @doc = "Describes a DNS record set (a collection of DNS records with the same name and type)."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_record_set you must provide a value for #{property}"
      end
    end
  end
  newproperty(:etag) do
    desc "The etag of the record set."
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "The ID of the record set."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the record set."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "The properties of the record set."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The type of the record set."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The API version to use for this operation."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Parameters supplied to the CreateOrUpdate operation."
    validate do |value|
      true
    end
  end
  newparam(:record_type) do
    desc "The type of DNS record in this record set. Record sets of type SOA can be updated but not created (they are created when the DNS zone is created)."
    validate do |value|
      true
    end
  end
  newparam(:relative_record_set_name) do
    desc "The name of the record set, relative to the name of the zone."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group. The name is case insensitive."
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
  newparam(:zone_name) do
    desc "The name of the DNS zone (without a terminating dot)."
    validate do |value|
      true
    end
  end
end
