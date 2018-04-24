Document: "routeTable"
Path: "/root/specs/specification/network/resource-manager/Microsoft.Network/stable/2018-02-01/routeTable.json")

## Route

```puppet
azure_route {
  api_version => "api_version",
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_route_properties_format
  resource_group_name => "resource_group_name",
  route_parameters => "routeParameters",
  route_table_name => "route_table_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [RoutePropertiesFormat](#routepropertiesformat) | false | Properties of the route. |
|resource_group_name | String | true | The name of the resource group. |
|route_parameters | Hash | true | Parameters supplied to the create or update route operation. |
|route_table_name | String | true | The name of the route table. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## RoutePropertiesFormat

```puppet
$azure_route_properties_format = {
  addressPrefix => "addressPrefix (optional)",
  nextHopIpAddress => "nextHopIpAddress (optional)",
  nextHopType => "nextHopType",
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|addressPrefix | String | false | The destination CIDR to which the route applies. |
|nextHopIpAddress | String | false | The IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance. |
|nextHopType | String | true | The type of Azure hop the packet should be sent to. Possible values are: 'VirtualNetworkGateway', 'VnetLocal', 'Internet', 'VirtualAppliance', and 'None' |
|provisioningState | String | false | The provisioning state of the resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Route

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/routeTables/%{route_table_name}/routes/%{route_name}`|Put|Creates or updates a route in the specified route table.|Routes_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/routeTables/%{route_table_name}/routes/%{route_name}`|Get|Gets the specified route from a route table.|Routes_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/routeTables/%{route_table_name}/routes`|Get|Gets all routes in a route table.|Routes_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/routeTables/%{route_table_name}/routes/%{route_name}`|Put|Creates or updates a route in the specified route table.|Routes_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/routeTables/%{route_table_name}/routes/%{route_name}`|Delete|Deletes the specified route from a route table.|Routes_Delete|