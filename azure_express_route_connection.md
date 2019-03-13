Document: "expressRouteGateway"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/expressRouteGateway.json")

## ExpressRouteConnection

ExpressRouteConnection resource.

```puppet
azure_express_route_connection {
  api_version => "api_version",
  connection_name => "connection_name",
  express_route_gateway_name => "express_route_gateway_name",
  id => "id (optional)",
  name => "name",
  properties => $azure_express_route_connection_properties
  put_express_route_connection_parameters => "putExpressRouteConnectionParameters",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|connection_name | String | true | The name of the connection subresource. |
|express_route_gateway_name | String | true | The name of the ExpressRoute gateway. |
|id | String | false | Resource ID. |
|name | String | true | The name of the resource. |
|properties | [ExpressRouteConnectionProperties](#expressrouteconnectionproperties) | false |  |
|put_express_route_connection_parameters | Hash | true | Parameters required in an ExpressRouteConnection PUT operation. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## ExpressRouteConnectionProperties

Properties of the ExpressRouteConnection subresource.

```puppet
$azure_express_route_connection_properties = {
  authorizationKey => "authorizationKey (optional)",
  expressRouteCircuitPeering => $azure_express_route_circuit_peering_id
  routingWeight => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|authorizationKey | String | false | Authorization key to establish the connection. |
|expressRouteCircuitPeering | [ExpressRouteCircuitPeeringId](#expressroutecircuitpeeringid) | true | The ExpressRoute circuit peering. |
|routingWeight | Integer | false | The routing weight associated to the connection. |
        
## ExpressRouteCircuitPeeringId

ExpressRoute circuit peering identifier.

```puppet
$azure_express_route_circuit_peering_id = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | The ID of the ExpressRoute circuit peering. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ExpressRouteConnection

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteGateways/%{express_route_gateway_name}/expressRouteConnections/%{connection_name}`|Put|Creates a connection between an ExpressRoute gateway and an ExpressRoute circuit.|ExpressRouteConnections_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteGateways/%{express_route_gateway_name}/expressRouteConnections/%{connection_name}`|Get|Gets the specified ExpressRouteConnection.|ExpressRouteConnections_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteGateways/%{express_route_gateway_name}/expressRouteConnections`|Get|Lists ExpressRouteConnections.|ExpressRouteConnections_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteGateways/%{express_route_gateway_name}/expressRouteConnections/%{connection_name}`|Put|Creates a connection between an ExpressRoute gateway and an ExpressRoute circuit.|ExpressRouteConnections_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteGateways/%{express_route_gateway_name}/expressRouteConnections/%{connection_name}`|Delete|Deletes a connection to a ExpressRoute circuit.|ExpressRouteConnections_Delete|
