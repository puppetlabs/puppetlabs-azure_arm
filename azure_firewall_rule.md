Document: "mysql"
Path: "/root/specs/specification/mysql/resource-manager/Microsoft.DBforMySQL/stable/2017-12-01/mysql.json")

## FirewallRule

```puppet
azure_firewall_rule {
  api_version => "api_version",
  id => "id (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_firewall_rule_properties
  resource_group_name => "resource_group_name",
  server_name => "server_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the request. |
|id | String | false | Resource ID |
|name | String | false | Resource name. |
|parameters | Hash | true | The required parameters for creating or updating a firewall rule. |
|properties | [FirewallRuleProperties](#firewallruleproperties) | true | The properties of a firewall rule. |
|resource_group_name | String | true | The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal. |
|server_name | String | true | The name of the server. |
|subscription_id | String | true | The subscription ID that identifies an Azure subscription. |
|type | String | false | Resource type. |
        
## FirewallRuleProperties

```puppet
$azure_firewall_rule_properties = {
  endIpAddress => "endIpAddress",
  startIpAddress => "startIpAddress",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endIpAddress | String | true | The end IP address of the server firewall rule. Must be IPv4 format. |
|startIpAddress | String | true | The start IP address of the server firewall rule. Must be IPv4 format. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the FirewallRule

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforMySQL/servers/%{server_name}/firewallRules/%{firewall_rule_name}`|Put|Creates a new firewall rule or updates an existing firewall rule.|FirewallRules_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforMySQL/servers/%{server_name}/firewallRules/%{firewall_rule_name}`|Get|Gets information about a server firewall rule.|FirewallRules_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforMySQL/servers/%{server_name}/firewallRules`|Get|List all the firewall rules in a given server.|FirewallRules_ListByServer|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforMySQL/servers/%{server_name}/firewallRules/%{firewall_rule_name}`|Put|Creates a new firewall rule or updates an existing firewall rule.|FirewallRules_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforMySQL/servers/%{server_name}/firewallRules/%{firewall_rule_name}`|Delete|Deletes a server firewall rule.|FirewallRules_Delete|