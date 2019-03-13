require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_tag_details) do
  @doc = "Tag details."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_tag_details you must provide a value for #{property}"
      end
    end
  end
  newproperty(:count) do
    desc "The total number of resources that use the resource tag. When a tag is initially created and has no associated resources, the value is 0."
    validate do |value|
      true
    end
  end
  newparam(:id) do
    isnamevar
    desc "The tag ID."
    validate do |value|
      true
    end
  end
  newproperty(:tag_name) do
    desc "The tag name."
    validate do |value|
      true
    end
  end
  newproperty(:values, :array_matching => :all) do
    desc "The list of tag values."
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
  newparam(:subscription_id) do
    desc "The ID of the target subscription."
    validate do |value|
      true
    end
  end
end
