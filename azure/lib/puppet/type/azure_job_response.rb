require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_job_response) do
  @doc = "Contains the job information."

  ensurable

  validate do
    required_properties = [
      :body,
      :job_name,
      :resource_group_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_job_response you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Specifies the resource identifier of the job."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "Specifies the Azure location where the job is created."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Specifies the name of the job."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Specifies the job properties"
    validate do |value|
      true
    end
  end
  newproperty(:tags) do
    desc "Specifies the tags that are assigned to the job."
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "Specifies the type of the job resource."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "Specifies the API version to use for this request."
    validate do |value|
      true
    end
  end
  newparam(:body) do
    desc "The parameters used for creating the job"
    validate do |value|
      true
    end
  end
  newparam(:job_name) do
    desc "The name of the import/export job."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The resource group name uniquely identifies the resource group within the user subscription."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The subscription ID for the Azure user."
    validate do |value|
      true
    end
  end
end
