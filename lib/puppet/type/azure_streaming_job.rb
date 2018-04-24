require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_streaming_job) do
  @doc = "A streamng job object, containing all information associated with the named streaming job."

  ensurable

  validate do
    required_properties = [
      :job_name,
      :resource_group_name,
      :streaming_job,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_streaming_job you must provide a value for #{property}"
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
    desc "Resource location. Required on PUT (CreateOrReplace) requests."
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
  newproperty(:properties) do
    desc "The properties that are associated with a streaming job.  Required on PUT (CreateOrReplace) requests."
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
  newparam(:job_name) do
    desc "The name of the streaming job."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal."
    validate do |value|
      true
    end
  end
  newparam(:streaming_job) do
    desc "The definition of the streaming job that will be used to create a new streaming job or replace the existing one."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "GUID which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call."
    validate do |value|
      true
    end
  end
end
