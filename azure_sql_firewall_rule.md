Document: "firewallRules"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/sql/resource-manager/Microsoft.Sql/stable/2014-04-01/firewallRules.json")

## FirewallRule

Represents a server firewall rule.

```puppet
azure_sql_firewall_rule {
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_firewall_rule_properties
  resource_group_name => "resource_group_name",
  server_name => "server_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the request. |
|parameters | Hash | true | The required parameters for creating or updating a firewall rule. |
|properties | [FirewallRuleProperties](#firewallruleproperties) | false | The properties representing the resource. |
|resource_group_name | String | true | The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal. |
|server_name | String | true | The name of the server. |
|subscription_id | String | true | The subscription ID that identifies an Azure subscription. |
        
## FirewallRuleProperties

Represents the properties of a server firewall rule.

```puppet
$azure_firewall_rule_properties = {
  endIpAddress => "endIpAddress",
  startIpAddress => "startIpAddress",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endIpAddress | String | true | The end IP address of the firewall rule. Must be IPv4 format. Must be greater than or equal to startIpAddress. Use value '0.0.0.0' to represent all Azure-internal IP addresses. |
|startIpAddress | String | true | The start IP address of the firewall rule. Must be IPv4 format. Use value '0.0.0.0' to represent all Azure-internal IP addresses. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the FirewallRule

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/firewallRules/%{firewall_rule_name}`|Put|Creates or updates a firewall rule.|FirewallRules_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/firewallRules/%{firewall_rule_name}`|Get|Gets a firewall rule.|FirewallRules_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/firewallRules`|Get|Returns a list of firewall rules.|FirewallRules_ListByServer|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/firewallRules/%{firewall_rule_name}`|Put|Creates or updates a firewall rule.|FirewallRules_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/firewallRules/%{firewall_rule_name}`|Delete|Deletes a firewall rule.|FirewallRules_Delete|
