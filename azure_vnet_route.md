Document: "service"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/web/resource-manager/Microsoft.Web/stable/2015-08-01/service.json")

## VnetRoute

VnetRoute contract used to pass routing information for a vnet.

```puppet
azure_vnet_route {
  api_version => "api_version",
  id => "id (optional)",
  kind => "kind (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  route => "route",
  route_name => "route_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
  vnet_name => "vnet_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|id | String | false | Resource Id |
|kind | String | false | Kind of resource |
|location | String | false | Resource Location |
|name | String | false | Resource Name |
|properties | String | false |  |
|resource_group_name | String | true | Name of resource group |
|route | Hash | true | The route object |
|route_name | String | true | Name of the virtual network route |
|subscription_id | String | true | Subscription Id |
|tags | Hash | false | Resource tags |
|type | String | false | Resource type |
|vnet_name | String | true | Name of virtual network |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the VnetRoute

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/serverfarms/%{name}/virtualNetworkConnections/%{vnet_name}/routes/%{route_name}`|Put||ServerFarms_CreateOrUpdateVnetRoute|
|List - list all|``||||
|List - get one|``||||
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/serverfarms/%{name}/virtualNetworkConnections/%{vnet_name}/routes/%{route_name}`|Get||ServerFarms_GetRouteForVnet|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/serverfarms/%{name}/virtualNetworkConnections/%{vnet_name}/routes/%{route_name}`|Put||ServerFarms_CreateOrUpdateVnetRoute|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/serverfarms/%{name}/virtualNetworkConnections/%{vnet_name}/routes/%{route_name}`|Delete||ServerFarms_DeleteVnetRoute|
