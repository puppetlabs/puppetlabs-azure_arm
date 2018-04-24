require 'puppet/parameter/boolean'

Puppet::Type.newtype(:azure_certificate_description) do
  @doc = "The X509 Certificate."

  ensurable

  validate do
    required_properties = [
      :if_match,
      :certificate_description,
      :certificate_name,
      :resource_group_name,
      :resource_name,
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_certificate_description you must provide a value for #{property}"
      end
    end
  end
  newproperty(:etag) do
    desc "The entity tag."
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
    desc "The name of the certificate."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc ""
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
    desc "The version of the API."
    validate do |value|
      true
    end
  end
  newparam(:certificate_description) do
    desc "The certificate body."
    validate do |value|
      true
    end
  end
  newparam(:certificate_name) do
    desc "The name of the certificate"
    validate do |value|
      true
    end
  end
  newparam(:if_match) do
    desc "ETag of the Certificate."
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group that contains the IoT hub."
    validate do |value|
      true
    end
  end
  newparam(:resource_name) do
    desc "The name of the IoT hub."
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
