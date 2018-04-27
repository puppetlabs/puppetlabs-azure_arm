Document: "expressRouteCircuit"
Path: "/root/specs/specification/network/resource-manager/Microsoft.Network/stable/2018-04-01/expressRouteCircuit.json")

## ExpressRouteCircuitConnection

```puppet
azure_express_route_circuit_connection {
  api_version => "api_version",
  circuit_name => "circuit_name",
  connection_name => "connection_name",
  etag => "etag (optional)",
  express_route_circuit_connection_parameters => "expressRouteCircuitConnectionParameters",
  id => "id (optional)",
  name => "name (optional)",
  peering_name => "peering_name",
  properties => $azure_express_route_circuit_connection_properties_format
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|circuit_name | String | true | The name of the express route circuit. |
|connection_name | String | true | The name of the express route circuit connection. |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|express_route_circuit_connection_parameters | Hash | true | Parameters supplied to the create or update express route circuit circuit connection operation. |
|id | String | false | Resource ID. |
|name | String | false | Gets name of the resource that is unique within a resource group. This name can be used to access the resource. |
|peering_name | String | true | The name of the peering. |
|properties | [ExpressRouteCircuitConnectionPropertiesFormat](#expressroutecircuitconnectionpropertiesformat) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## ExpressRouteCircuitConnectionPropertiesFormat

```puppet
$azure_express_route_circuit_connection_properties_format = {
  addressPrefix => "addressPrefix (optional)",
  authorizationKey => "authorizationKey (optional)",
  circuitConnectionStatus => "circuitConnectionStatus (optional)",
  expressRouteCircuitPeering => $azure_sub_resource
  peerExpressRouteCircuitPeering => $azure_sub_resource
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|addressPrefix | String | false | /29 IP address space to carve out Customer addresses for tunnels. |
|authorizationKey | String | false | The authorization key. |
|circuitConnectionStatus | String | false | Express Route Circuit Connection State. Possible values are: 'Connected' and 'Disconnected'. |
|expressRouteCircuitPeering | [SubResource](#subresource) | false | Reference to Express Route Circuit Private Peering Resource of the circuit initiating connection. |
|peerExpressRouteCircuitPeering | [SubResource](#subresource) | false | Reference to Express Route Circuit Private Peering Resource of the peered circuit. |
|provisioningState | String | false | Provisioning state of the circuit connection resource. Possible values are: 'Succeded', 'Updating', 'Deleting', and 'Failed'. |
        
## SubResource

```puppet
$azure_sub_resource = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ExpressRouteCircuitConnection

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteCircuits/%{circuit_name}/peerings/%{peering_name}/connections/%{connection_name}`|Put|Creates or updates a Express Route Circuit Connection in the specified express route circuits.|ExpressRouteCircuitConnections_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteCircuits/%{circuit_name}/peerings/%{peering_name}/connections/%{connection_name}`|Get|Gets the specified Express Route Circuit Connection from the specified express route circuit.|ExpressRouteCircuitConnections_Get|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteCircuits/%{circuit_name}/peerings/%{peering_name}/connections/%{connection_name}`|Put|Creates or updates a Express Route Circuit Connection in the specified express route circuits.|ExpressRouteCircuitConnections_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteCircuits/%{circuit_name}/peerings/%{peering_name}/connections/%{connection_name}`|Delete|Deletes the specified Express Route Circuit Connection from the specified express route circuit.|ExpressRouteCircuitConnections_Delete|