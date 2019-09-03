require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_budget) do
  @doc = "A budget resource."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_budget you must provide a value for #{property}"
      end
    end
  end
  newproperty(:e_tag) do
    desc "eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not."
    validate do |value|
      true
    end
  end
  newproperty(:id) do
    desc "Resource Id."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "Resource name."
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
    desc "Resource type."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "Version of the API to be used with the client request. The current version is 2019-05-01."
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "Parameters supplied to the Create Budget operation."
    validate do |value|
      true
    end
  end
  newparam(:scope) do
    desc "The scope associated with budget operations. This includes '/subscriptions/{subscriptionId}/' for subscription scope, '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for resourceGroup scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}' for Department scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}' for EnrollmentAccount scope, '/providers/Microsoft.Management/managementGroups/{managementGroupId}' for Management Group scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/billingProfiles/{billingProfileId}' for billingProfile scope, 'providers/Microsoft.Billing/billingAccounts/{billingAccountId}/invoiceSections/{invoiceSectionId}' for invoiceSection scope."
    validate do |value|
      true
    end
  end
end
