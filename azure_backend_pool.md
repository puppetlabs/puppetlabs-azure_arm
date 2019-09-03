Document: "frontdoor"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/frontdoor/resource-manager/Microsoft.Network/stable/2019-05-01/frontdoor.json")

## BackendPool

A backend pool is a collection of backends that can be routed to.

```puppet
azure_backend_pool {
  api_version => "api_version",
  backend_pool_parameters => "backendPoolParameters",
  front_door_name => "front_door_name",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_backend_pool_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|backend_pool_parameters | Hash | true | Backend Pool properties needed to create a new Pool. |
|front_door_name | String | true | Name of the Front Door which is globally unique. |
|id | String | false | Resource ID. |
|name | String | false | Resource name. |
|properties | [BackendPoolProperties](#backendpoolproperties) | false | Properties of the Front Door Backend Pool |
|resource_group_name | String | true | Name of the Resource group within the Azure subscription. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## BackendPoolProperties

The JSON object that contains the properties required to create a routing rule.

```puppet
$azure_backend_pool_properties = {
  backends => "backends (optional)",
  healthProbeSettings => "healthProbeSettings (optional)",
  loadBalancingSettings => "loadBalancingSettings (optional)",
  resourceState => $azure_resource_state
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|backends | Array | false | The set of backends for this pool |
|healthProbeSettings | String | false | L7 health probe settings for a backend pool |
|loadBalancingSettings | String | false | Load balancing settings for a backend pool |
|resourceState | [ResourceState](#resourcestate) | false | Resource status. |
        
## ResourceState



```puppet
$azure_resource_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the BackendPool

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/backendPools/%{backend_pool_name}`|Put|Creates a new Backend Pool with the specified Pool name within the specified Front Door.|BackendPools_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/backendPools/%{backend_pool_name}`|Get|Gets a Backend Pool with the specified Pool name within the specified Front Door.|BackendPools_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/backendPools`|Get|Lists all of the Backend Pools within a Front Door.|BackendPools_ListByFrontDoor|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/backendPools/%{backend_pool_name}`|Put|Creates a new Backend Pool with the specified Pool name within the specified Front Door.|BackendPools_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/backendPools/%{backend_pool_name}`|Delete|Deletes an existing Backend Pool with the specified parameters.|BackendPools_Delete|
