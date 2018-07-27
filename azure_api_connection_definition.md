Document: "logicAppsManagementClient"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/web/resource-manager/Microsoft.Web/stable/2016-06-01/logicAppsManagementClient.json")

## ApiConnectionDefinition

API connection

```puppet
azure_api_connection_definition {
  api_version => "api_version",
  connection => "connection",
  connection_name => "connection_name",
  etag => "etag (optional)",
  location => "location (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|connection | Hash | true | The connection |
|connection_name | String | true | Connection name |
|etag | String | false | Resource ETag |
|location | String | false | Resource location |
|properties | String | false |  |
|resource_group_name | String | true | The resource group |
|subscription_id | String | true | Subscription Id |
|tags | String | false |  |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ApiConnectionDefinition

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/connections/%{connection_name}`|Put|Creates or updates a connection|Connections_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/connections/%{connection_name}`|Get|Get a specific connection|Connections_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/connections`|Get|Gets a list of connections|Connections_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/connections/%{connection_name}`|Put|Creates or updates a connection|Connections_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/connections/%{connection_name}`|Delete|Deletes a connection|Connections_Delete|
