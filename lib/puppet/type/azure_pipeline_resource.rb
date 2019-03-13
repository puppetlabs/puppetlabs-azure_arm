require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_pipeline_resource) do
  @doc = "Pipeline resource type."

  ensurable

  validate do
    required_properties = [
      :properties,
      :factory_name,
      :pipeline,
      :pipeline_name,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_pipeline_resource you must provide a value for #{property}"
      end
    end
  end
  newproperty(:etag) do
    desc "Etag identifies change in the resource."
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "The resource identifier."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The resource name."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties of the pipeline."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The resource type."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The API version."
    validate do |value|
      true
    end
  end
  newparam(:factory_name) do
    desc "The factory name."
    validate do |value|
      true
    end
  end
  newparam(:pipeline) do
    desc "Pipeline resource definition."
    validate do |value|
      true
    end
  end
  newparam(:pipeline_name) do
    desc "The pipeline name."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The resource group name."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscription identifier."
    validate do |value|
      true
    end
  end
end
