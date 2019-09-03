Document: "firewallPolicy"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/network/resource-manager/Microsoft.Network/stable/2019-06-01/firewallPolicy.json")

## FirewallPolicyRuleGroup

Rule Group resource

```puppet
azure_firewall_policy_rule_group {
  api_version => "api_version",
  firewall_policy_name => "firewall_policy_name",
  id => "id (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_firewall_policy_rule_group_properties
  resource_group_name => "resource_group_name",
  rule_group_name => "rule_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|firewall_policy_name | String | true | The name of the Firewall Policy. |
|id | String | false | Resource ID. |
|name | String | false | Gets name of the resource that is unique within a resource group. This name can be used to access the resource. |
|parameters | Hash | true | Parameters supplied to the create or update FirewallPolicyRuleGroup operation. |
|properties | [FirewallPolicyRuleGroupProperties](#firewallpolicyrulegroupproperties) | false | The properties of the firewall policy rule group. |
|resource_group_name | String | true | The name of the resource group. |
|rule_group_name | String | true | The name of the FirewallPolicyRuleGroup. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## FirewallPolicyRuleGroupProperties

Properties of the rule group.

```puppet
$azure_firewall_policy_rule_group_properties = {
  priority => "1234 (optional)",
  provisioningState => $azure_provisioning_state
  rules => $azure_firewall_policy_rule
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|priority | Integer | false | Priority of the Firewall Policy Rule Group resource. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | The provisioning state of the resource. |
|rules | [FirewallPolicyRule](#firewallpolicyrule) | false | Group of Firewall Policy rules. |
        
## ProvisioningState

The current provisioning state.

```puppet
$azure_provisioning_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## FirewallPolicyRule

Properties of the rule.

```puppet
$azure_firewall_policy_rule = {
  name => "name (optional)",
  priority => "1234 (optional)",
  ruleType => "ruleType",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | Name of the Rule |
|priority | Integer | false | Priority of the Firewall Policy Rule resource. |
|ruleType | String | true |  The type of the rule |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the FirewallPolicyRuleGroup

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/firewallPolicies/%{firewall_policy_name}/ruleGroups/%{rule_group_name}`|Put|Creates or updates the specified FirewallPolicyRuleGroup.|FirewallPolicyRuleGroups_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/firewallPolicies/%{firewall_policy_name}/ruleGroups/%{rule_group_name}`|Get|Gets the specified FirewallPolicyRuleGroup.|FirewallPolicyRuleGroups_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/firewallPolicies/%{firewall_policy_name}/ruleGroups`|Get|Lists all FirewallPolicyRuleGroups in a FirewallPolicy resource.|FirewallPolicyRuleGroups_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/firewallPolicies/%{firewall_policy_name}/ruleGroups/%{rule_group_name}`|Put|Creates or updates the specified FirewallPolicyRuleGroup.|FirewallPolicyRuleGroups_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/firewallPolicies/%{firewall_policy_name}/ruleGroups/%{rule_group_name}`|Delete|Deletes the specified FirewallPolicyRuleGroup.|FirewallPolicyRuleGroups_Delete|
