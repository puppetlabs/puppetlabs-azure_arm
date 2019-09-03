Document: "firewallPolicy"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/network/resource-manager/Microsoft.Network/stable/2019-06-01/firewallPolicy.json")

## FirewallPolicy

FirewallPolicy Resource.

```puppet
azure_firewall_policy {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_firewall_policy_properties_format
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|parameters | Hash | true | Parameters supplied to the create or update Firewall Policy operation. |
|properties | [FirewallPolicyPropertiesFormat](#firewallpolicypropertiesformat) | false | Properties of the firewall policy. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
        
## FirewallPolicyPropertiesFormat

Firewall Policy definition

```puppet
$azure_firewall_policy_properties_format = {
  basePolicy => $azure_sub_resource
  childPolicies => $azure_sub_resource
  firewalls => $azure_sub_resource
  provisioningState => $azure_provisioning_state
  ruleGroups => $azure_sub_resource
  threatIntelMode => $azure_azure_firewall_threat_intel_mode
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|basePolicy | [SubResource](#subresource) | false | The parent firewall policy from which rules are inherited. |
|childPolicies | [SubResource](#subresource) | false | List of references to Child Firewall Policies |
|firewalls | [SubResource](#subresource) | false | List of references to Azure Firewalls that this Firewall Policy is associated with |
|provisioningState | [ProvisioningState](#provisioningstate) | false | The provisioning state of the resource. |
|ruleGroups | [SubResource](#subresource) | false | List of references to FirewallPolicyRuleGroups |
|threatIntelMode | [AzureFirewallThreatIntelMode](#azurefirewallthreatintelmode) | false | The operation mode for Threat Intelligence. |
        
## SubResource

Reference to another subresource.

```puppet
$azure_sub_resource = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
        
        
        
## ProvisioningState

The current provisioning state.

```puppet
$azure_provisioning_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
## AzureFirewallThreatIntelMode

The operation mode for Threat Intel.

```puppet
$azure_azure_firewall_threat_intel_mode = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the FirewallPolicy

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/firewallPolicies/%{firewall_policy_name}`|Put|Creates or updates the specified Firewall Policy.|FirewallPolicies_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/firewallPolicies`|Get|Gets all the Firewall Policies in a subscription.|FirewallPolicies_ListAll|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/firewallPolicies/%{firewall_policy_name}`|Get|Gets the specified Firewall Policy.|FirewallPolicies_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/firewallPolicies`|Get|Lists all Firewall Policies in a resource group.|FirewallPolicies_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/firewallPolicies/%{firewall_policy_name}`|Put|Creates or updates the specified Firewall Policy.|FirewallPolicies_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/firewallPolicies/%{firewall_policy_name}`|Delete|Deletes the specified Firewall Policy.|FirewallPolicies_Delete|
