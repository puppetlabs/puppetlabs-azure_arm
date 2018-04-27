Document: "logicAppsManagementClient"
Path: "/root/specs/specification/web/resource-manager/Microsoft.Web/stable/2016-06-01/logicAppsManagementClient.json")

## ConnectionGatewayDefinition

```puppet
azure_connection_gateway_definition {
  api_version => "api_version",
  connection_gateway => "connectionGateway",
  connection_gateway_name => "connection_gateway_name",
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|connection_gateway | Hash | true | The connection gateway |
|connection_gateway_name | String | true | The connection gateway name |
|etag | String | false | Resource ETag |
|id | String | false | Resource id |
|location | String | false | Resource location |
|name | String | false | Resource name |
|properties | String | false |  |
|resource_group_name | String | true | The resource group |
|subscription_id | String | true | Subscription Id |
|tags | String | false |  |
|type | String | false | Resource type |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ConnectionGatewayDefinition

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/connectionGateways/%{connection_gateway_name}`|Put|Creates or updates a specific gateway for under a subscription and in a specific resource group|ConnectionGateways_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Web/connectionGateways`|Get|Gets a list of gateways under a subscription|ConnectionGateways_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/connectionGateways/%{connection_gateway_name}`|Get|Gets a specific gateway under a subscription and in a specific resource group|ConnectionGateways_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Web/connectionGateways`|Get|Gets a list of gateways under a subscription|ConnectionGateways_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/connectionGateways/%{connection_gateway_name}`|Put|Creates or updates a specific gateway for under a subscription and in a specific resource group|ConnectionGateways_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/connectionGateways/%{connection_gateway_name}`|Delete|Deletes a specific gateway for under a subscription and in a specific resource group|ConnectionGateways_Delete|