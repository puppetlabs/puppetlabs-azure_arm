require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_graphrbac_user) do
  @doc = "Active Directory user information."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_graphrbac_user you must provide a value for #{property}"
      end
    end
  end
  newproperty(:account_enabled) do
    desc "Whether the account is enabled."
    validate do |value|
      true
    end
  end
  newproperty(:deletion_timestamp) do
    desc "The time at which the directory object was deleted."
    validate do |value|
      true
    end
  end
  newparam(:display_name) do
    isnamevar
    desc "The display name of the user."
    validate do |value|
      true
    end
  end
  newproperty(:given_name) do
    desc "The given name for the user."
    validate do |value|
      true
    end
  end
  newproperty(:immutable_id) do
    desc "This must be specified if you are using a federated domain for the user's userPrincipalName (UPN) property when creating a new user account. It is used to associate an on-premises Active Directory user account with their Azure AD user object."
    validate do |value|
      true
    end
  end
  newproperty(:mail) do
    desc "The primary email address of the user."
    validate do |value|
      true
    end
  end
  newproperty(:mail_nickname) do
    desc "The mail alias for the user."
    validate do |value|
      true
    end
  end
  newproperty(:object_id) do
    desc "The object ID."
    validate do |value|
      true
    end
  end
  newproperty(:object_type) do
    desc "The object type."
    validate do |value|
      true
    end
  end
  newproperty(:sign_in_names, :array_matching => :all) do
    desc "The sign-in names of the user."
    validate do |value|
      true
    end
  end
  newproperty(:surname) do
    desc "The user's surname (family name or last name)."
    validate do |value|
      true
    end
  end
  newproperty(:usage_location) do
    desc "A two letter country code (ISO standard 3166). Required for users that will be assigned licenses due to legal requirement to check for availability of services in countries. Examples include: 'US', 'JP', and 'GB'."
    validate do |value|
      true
    end
  end
  newproperty(:user_principal_name) do
    desc "The principal name of the user."
    validate do |value|
      true
    end
  end
  newproperty(:user_type) do
    desc "A string value that can be used to classify user types in your directory, such as 'Member' and 'Guest'."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "Client API version."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Parameters to create a user."
    validate do |value|
      true
    end
  end
  newparam(:tenant_id) do
    desc "The tenant ID."
    validate do |value|
      true
    end
  end
  newparam(:upn_or_object_id) do
    desc "The object ID or principal name of the user to delete."
    validate do |value|
      true
    end
  end
end
