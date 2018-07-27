require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_deployment_extended) do
  @doc = "Deployment information."

  ensurable

  validate do
    required_properties = [
      :name,
      :deployment_name,
      :parameters,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_deployment_extended you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "The ID of the deployment."
    validate do |value|
      true
    end
  end
  newproperty(:location) do
    desc "the location of the deployment."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the deployment."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc "Deployment properties."
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
  newparam(:deployment_name) do
    desc "The name of the deployment."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Additional parameters supplied to the operation."
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
