Document: "expressRouteGateway"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/network/resource-manager/Microsoft.Network/stable/2019-06-01/expressRouteGateway.json")

## ExpressRouteGateway

ExpressRoute gateway resource.

```puppet
azure_express_route_gateway {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  properties => $azure_express_route_gateway_properties
  put_express_route_gateway_parameters => "putExpressRouteGatewayParameters",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|properties | [ExpressRouteGatewayProperties](#expressroutegatewayproperties) | false | Properties of the express route gateway. |
|put_express_route_gateway_parameters | Hash | true | Parameters required in an ExpressRoute gateway PUT operation. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
        
## ExpressRouteGatewayProperties

ExpressRoute gateway resource properties.

```puppet
$azure_express_route_gateway_properties = {
  autoScaleConfiguration => "autoScaleConfiguration (optional)",
  expressRouteConnections => $azure_express_route_connection
  provisioningState => $azure_provisioning_state
  virtualHub => $azure_virtual_hub_id
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|autoScaleConfiguration | String | false | Configuration for auto scaling. |
|expressRouteConnections | [ExpressRouteConnection](#expressrouteconnection) | false | List of ExpressRoute connections to the ExpressRoute gateway. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | The provisioning state of the resource. |
|virtualHub | [VirtualHubId](#virtualhubid) | true | The Virtual Hub where the ExpressRoute gateway is or will be deployed. |
        
## ExpressRouteConnection

ExpressRouteConnection resource.

```puppet
$azure_express_route_connection = {
  api-version => "api-version",
  connectionName => "connectionName",
  expressRouteGatewayName => "expressRouteGatewayName",
  id => "id (optional)",
  name => "name",
  properties => $azure_express_route_connection_properties
  putExpressRouteConnectionParameters => "putExpressRouteConnectionParameters",
  resourceGroupName => "resourceGroupName",
  subscriptionId => "subscriptionId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api-version | String | true | Client API version. |
|connectionName | String | true | The name of the connection subresource. |
|expressRouteGatewayName | String | true | The name of the ExpressRoute gateway. |
|id | String | false | Resource ID. |
|name | String | true | The name of the resource. |
|properties | [ExpressRouteConnectionProperties](#expressrouteconnectionproperties) | false | Properties of the express route connection. |
|putExpressRouteConnectionParameters | Hash | true | Parameters required in an ExpressRouteConnection PUT operation. |
|resourceGroupName | String | true | The name of the resource group. |
|subscriptionId | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## ExpressRouteConnectionProperties

Properties of the ExpressRouteConnection subresource.

```puppet
$azure_express_route_connection_properties = {
  authorizationKey => "authorizationKey (optional)",
  expressRouteCircuitPeering => $azure_express_route_circuit_peering_id
  provisioningState => $azure_provisioning_state
  routingWeight => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|authorizationKey | String | false | Authorization key to establish the connection. |
|expressRouteCircuitPeering | [ExpressRouteCircuitPeeringId](#expressroutecircuitpeeringid) | true | The ExpressRoute circuit peering. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | The provisioning state of the resource. |
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
        
## ProvisioningState

The current provisioning state.

```puppet
$azure_provisioning_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
## VirtualHubId

Virtual Hub identifier.

```puppet
$azure_virtual_hub_id = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | The resource URI for the Virtual Hub where the ExpressRoute gateway is or will be deployed. The Virtual Hub resource and the ExpressRoute gateway resource reside in the same subscription. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ExpressRouteGateway

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteGateways/%{express_route_gateway_name}`|Put|Creates or updates a ExpressRoute gateway in a specified resource group.|ExpressRouteGateways_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/expressRouteGateways`|Get|Lists ExpressRoute gateways under a given subscription.|ExpressRouteGateways_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteGateways/%{express_route_gateway_name}`|Get|Fetches the details of a ExpressRoute gateway in a resource group.|ExpressRouteGateways_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/expressRouteGateways`|Get|Lists ExpressRoute gateways under a given subscription.|ExpressRouteGateways_ListBySubscription|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteGateways/%{express_route_gateway_name}`|Put|Creates or updates a ExpressRoute gateway in a specified resource group.|ExpressRouteGateways_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteGateways/%{express_route_gateway_name}`|Delete|Deletes the specified ExpressRoute gateway in a resource group. An ExpressRoute gateway resource can only be deleted when there are no connection subresources.|ExpressRouteGateways_Delete|
