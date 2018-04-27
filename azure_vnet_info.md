Document: "service"
Path: "/root/specs/specification/web/resource-manager/Microsoft.Web/stable/2015-08-01/service.json")

## VnetInfo

```puppet
azure_vnet_info {
  api_version => "api_version",
  connection_envelope => "connectionEnvelope",
  id => "id (optional)",
  kind => "kind (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
  vnet_name => "vnet_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|connection_envelope | Hash | true | The properties of this Virtual Network Connection |
|id | String | false | Resource Id |
|kind | String | false | Kind of resource |
|location | String | false | Resource Location |
|name | String | false | Resource Name |
|properties | String | false |  |
|resource_group_name | String | true | The resource group name |
|subscription_id | String | true | Subscription Id |
|tags | Hash | false | Resource tags |
|type | String | false | Resource type |
|vnet_name | String | true | The name of the Virtual Network |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the VnetInfo

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/virtualNetworkConnections/%{vnet_name}`|Put||Sites_CreateOrUpdateSiteVNETConnection|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/serverfarms/%{name}/virtualNetworkConnections/%{vnet_name}`|Get||ServerFarms_GetVnetFromServerFarm|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/serverfarms/%{name}/virtualNetworkConnections`|Get||ServerFarms_GetVnetsForServerFarm|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/virtualNetworkConnections/%{vnet_name}`|Put||Sites_CreateOrUpdateSiteVNETConnection|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/virtualNetworkConnections/%{vnet_name}`|Delete||Sites_DeleteSiteVNETConnection|