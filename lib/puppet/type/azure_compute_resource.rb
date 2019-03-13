require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_compute_resource) do
  @doc = "Machine Learning compute object wrapped into ARM resource envelope."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_compute_resource you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Specifies the resource ID."
    validate do |value|
      true
    end
  end
  newproperty(:identity) do
    desc "The identity of the resource."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Specifies the location of the resource."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Specifies the name of the resource."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Compute properties"
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "Contains resource tags defined as key/value pairs."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Specifies the type of the resource."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "Version of Azure Machine Learning resource provider API."
    validate do |value|
      true
    end
  end
  newparam(:compute_name) do
    desc "Name of the Azure Machine Learning compute."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Payload with Machine Learning compute definition."
    validate do |value|
      true
    end
  end
  newparam(:properties) do
    desc "Compute properties"
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "Name of the resource group in which workspace is located."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "Azure subscription identifier."
    validate do |value|
      true
    end
  end
  newparam(:underlying_resource_action) do
    desc "Delete the underlying compute if 'Delete', or detach the underlying compute from workspace if 'Detach'."
    validate do |value|
      true
    end
  end
  newparam(:workspace_name) do
    desc "Name of Azure Machine Learning workspace."
    validate do |value|
      true
    end
  end
end
