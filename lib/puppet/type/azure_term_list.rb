require "puppet/parameter/boolean"

Puppet::Type.newtype(:azure_term_list) do
  @doc = "Term List  Properties."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_term_list you must provide a value for #{property}"
      end
    end
  end
  newproperty(:description) do
    desc "Description for term list."
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "Term list Id."
    validate do |value|
      true
    end
  end
  newproperty(:metadata) do
    desc "Term list metadata."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Term list name."
    validate do |value|
      true
    end
  end
  newparam(:body) do
    desc "Schema of the body."
    validate do |value|
      true
    end
  end
  newparam(:content_type) do
    desc "The content type."
    validate do |value|
      true
    end
  end
  newparam(:list_id) do
    desc "List Id of the image list."
    validate do |value|
      true
    end
  end
end
