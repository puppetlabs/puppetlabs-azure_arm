Document: "postgresql"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/postgresql/resource-manager/Microsoft.DBforPostgreSQL/stable/2017-12-01/postgresql.json")

## VirtualNetworkRule

A virtual network rule.

```puppet
azure_dbforpostgresql_virtual_network_rule {
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_virtual_network_rule_properties
  resource_group_name => "resource_group_name",
  server_name => "server_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the request. |
|parameters | Hash | true | The requested virtual Network Rule Resource state. |
|properties | [VirtualNetworkRuleProperties](#virtualnetworkruleproperties) | false | Resource properties. |
|resource_group_name | String | true | The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal. |
|server_name | String | true | The name of the server. |
|subscription_id | String | true | The subscription ID that identifies an Azure subscription. |
        
## VirtualNetworkRuleProperties

Properties of a virtual network rule.

```puppet
$azure_virtual_network_rule_properties = {
  ignoreMissingVnetServiceEndpoint => "ignoreMissingVnetServiceEndpoint (optional)",
  virtualNetworkSubnetId => "virtualNetworkSubnetId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|ignoreMissingVnetServiceEndpoint | Boolean | false | Create firewall rule before the virtual network has vnet service endpoint enabled. |
|virtualNetworkSubnetId | String | true | The ARM resource id of the virtual network subnet. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the VirtualNetworkRule

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforPostgreSQL/servers/%{server_name}/virtualNetworkRules/%{virtual_network_rule_name}`|Put|Creates or updates an existing virtual network rule.|VirtualNetworkRules_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforPostgreSQL/servers/%{server_name}/virtualNetworkRules/%{virtual_network_rule_name}`|Get|Gets a virtual network rule.|VirtualNetworkRules_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforPostgreSQL/servers/%{server_name}/virtualNetworkRules`|Get|Gets a list of virtual network rules in a server.|VirtualNetworkRules_ListByServer|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforPostgreSQL/servers/%{server_name}/virtualNetworkRules/%{virtual_network_rule_name}`|Put|Creates or updates an existing virtual network rule.|VirtualNetworkRules_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforPostgreSQL/servers/%{server_name}/virtualNetworkRules/%{virtual_network_rule_name}`|Delete|Deletes the virtual network rule with the given name.|VirtualNetworkRules_Delete|
