Document: "account"
Path: "/root/specs/specification/datalake-analytics/resource-manager/Microsoft.DataLakeAnalytics/stable/2016-11-01/account.json")

## FirewallRule

```puppet
azure_firewall_rule {
  account_name => "account_name",
  api_version => "api_version",
  id => "id (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_firewall_rule_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The name of the Data Lake Analytics account. |
|api_version | String | true | Client Api Version. |
|id | String | false | The resource identifier. |
|name | String | false | The resource name. |
|parameters | Hash | true | Parameters supplied to create or update the firewall rule. |
|properties | [FirewallRuleProperties](#firewallruleproperties) | false | The firewall rule properties. |
|resource_group_name | String | true | The name of the Azure resource group. |
|subscription_id | String | true | Get subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | The resource type. |
        
## FirewallRuleProperties

```puppet
$azure_firewall_rule_properties = {
  endIpAddress => "endIpAddress (optional)",
  startIpAddress => "startIpAddress (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endIpAddress | String | false | The end IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol. |
|startIpAddress | String | false | The start IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the FirewallRule

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeAnalytics/accounts/%{account_name}/firewallRules/%{firewall_rule_name}`|Put|Creates or updates the specified firewall rule. During update, the firewall rule with the specified name will be replaced with this new firewall rule.|FirewallRules_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeAnalytics/accounts/%{account_name}/firewallRules/%{firewall_rule_name}`|Get|Gets the specified Data Lake Analytics firewall rule.|FirewallRules_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeAnalytics/accounts/%{account_name}/firewallRules`|Get|Lists the Data Lake Analytics firewall rules within the specified Data Lake Analytics account.|FirewallRules_ListByAccount|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeAnalytics/accounts/%{account_name}/firewallRules/%{firewall_rule_name}`|Put|Creates or updates the specified firewall rule. During update, the firewall rule with the specified name will be replaced with this new firewall rule.|FirewallRules_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeAnalytics/accounts/%{account_name}/firewallRules/%{firewall_rule_name}`|Delete|Deletes the specified firewall rule from the specified Data Lake Analytics account|FirewallRules_Delete|