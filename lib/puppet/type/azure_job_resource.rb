require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_job_resource) do
  @doc = "Job Resource."

  ensurable

  validate do
    required_properties = [
      :location,
      :properties,
      :sku,
      :job_name,
      :job_resource,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_job_resource you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Id of the object."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "The location of the resource. This will be one of the supported and registered Azure Regions (e.g. West US, East US, Southeast Asia, etc.). The region of a resource cannot be changed once it is created, but if an identical region is specified on update the request will succeed."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Name of the object."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Properties of a job."
    validate do |value|
      true
    end
  end
  newproperty(:sku) do
    desc "The sku type."
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "The list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups)."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Type of the object."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The API Version"
    validate do |value|
      true
    end
  end
  newparam(:job_name) do
    desc "The name of the job Resource within the specified resource group. job names must be between 3 and 24 characters in length and use any alphanumeric and underscore only"
    validate do |value|
      true
    end
  end
  newparam(:job_resource) do
    desc "Job details from request body."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The Resource Group Name"
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The Subscription Id"
    validate do |value|
      true
    end
  end
end
