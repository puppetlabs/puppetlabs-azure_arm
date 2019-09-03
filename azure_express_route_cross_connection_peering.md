Document: "expressRouteCrossConnection"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/network/resource-manager/Microsoft.Network/stable/2019-06-01/expressRouteCrossConnection.json")

## ExpressRouteCrossConnectionPeering

Peering in an ExpressRoute Cross Connection resource.

```puppet
azure_express_route_cross_connection_peering {
  api_version => "api_version",
  cross_connection_name => "cross_connection_name",
  id => "id (optional)",
  name => "name (optional)",
  peering_name => "peering_name",
  peering_parameters => "peeringParameters",
  properties => $azure_express_route_cross_connection_peering_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|cross_connection_name | String | true | The name of the ExpressRouteCrossConnection. |
|id | String | false | Resource ID. |
|name | String | false | Gets name of the resource that is unique within a resource group. This name can be used to access the resource. |
|peering_name | String | true | The name of the peering. |
|peering_parameters | Hash | true | Parameters supplied to the create or update ExpressRouteCrossConnection peering operation. |
|properties | [ExpressRouteCrossConnectionPeeringProperties](#expressroutecrossconnectionpeeringproperties) | false | Properties of the express route cross connection peering. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## ExpressRouteCrossConnectionPeeringProperties

Properties of express route cross connection peering.

```puppet
$azure_express_route_cross_connection_peering_properties = {
  gatewayManagerEtag => "gatewayManagerEtag (optional)",
  ipv6PeeringConfig => $azure_ipv6_express_route_circuit_peering_config
  lastModifiedBy => "lastModifiedBy (optional)",
  microsoftPeeringConfig => $azure_express_route_circuit_peering_config
  peerASN => "1234 (optional)",
  peeringType => $azure_express_route_peering_type
  primaryPeerAddressPrefix => "primaryPeerAddressPrefix (optional)",
  secondaryPeerAddressPrefix => "secondaryPeerAddressPrefix (optional)",
  sharedKey => "sharedKey (optional)",
  state => $azure_express_route_peering_state
  vlanId => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|gatewayManagerEtag | String | false | The GatewayManager Etag. |
|ipv6PeeringConfig | [Ipv6ExpressRouteCircuitPeeringConfig](#ipv6expressroutecircuitpeeringconfig) | false | The IPv6 peering configuration. |
|lastModifiedBy | String | false | Gets whether the provider or the customer last modified the peering. |
|microsoftPeeringConfig | [ExpressRouteCircuitPeeringConfig](#expressroutecircuitpeeringconfig) | false | The Microsoft peering configuration. |
|peerASN | Integer | false | The peer ASN. |
|peeringType | [ExpressRoutePeeringType](#expressroutepeeringtype) | false | The peering type. |
|primaryPeerAddressPrefix | String | false | The primary address prefix. |
|secondaryPeerAddressPrefix | String | false | The secondary address prefix. |
|sharedKey | String | false | The shared key. |
|state | [ExpressRoutePeeringState](#expressroutepeeringstate) | false | The peering state. |
|vlanId | Integer | false | The VLAN ID. |
        
## Ipv6ExpressRouteCircuitPeeringConfig

Contains IPv6 peering config.

```puppet
$azure_ipv6_express_route_circuit_peering_config = {
  microsoftPeeringConfig => $azure_express_route_circuit_peering_config
  primaryPeerAddressPrefix => "primaryPeerAddressPrefix (optional)",
  routeFilter => $azure_sub_resource
  secondaryPeerAddressPrefix => "secondaryPeerAddressPrefix (optional)",
  state => "state (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|microsoftPeeringConfig | [ExpressRouteCircuitPeeringConfig](#expressroutecircuitpeeringconfig) | false | The Microsoft peering configuration. |
|primaryPeerAddressPrefix | String | false | The primary address prefix. |
|routeFilter | [SubResource](#subresource) | false | The reference of the RouteFilter resource. |
|secondaryPeerAddressPrefix | String | false | The secondary address prefix. |
|state | String | false | The state of peering. |
        
## ExpressRouteCircuitPeeringConfig

Specifies the peering configuration.

```puppet
$azure_express_route_circuit_peering_config = {
  advertisedCommunities => "advertisedCommunities (optional)",
  advertisedPublicPrefixes => "advertisedPublicPrefixes (optional)",
  advertisedPublicPrefixesState => "advertisedPublicPrefixesState (optional)",
  customerASN => "1234 (optional)",
  legacyMode => "1234 (optional)",
  routingRegistryName => "routingRegistryName (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|advertisedCommunities | Array | false | The communities of bgp peering. Specified for microsoft peering. |
|advertisedPublicPrefixes | Array | false | The reference of AdvertisedPublicPrefixes. |
|advertisedPublicPrefixesState | String | false | The advertised public prefix state of the Peering resource. |
|customerASN | Integer | false | The CustomerASN of the peering. |
|legacyMode | Integer | false | The legacy mode of the peering. |
|routingRegistryName | String | false | The RoutingRegistryName of the configuration. |
        
## SubResource

Reference to another subresource.

```puppet
$azure_sub_resource = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
        
        
## ExpressRoutePeeringType

The peering type.

```puppet
$azure_express_route_peering_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ExpressRoutePeeringState

The state of peering.

```puppet
$azure_express_route_peering_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ExpressRouteCrossConnectionPeering

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteCrossConnections/%{cross_connection_name}/peerings/%{peering_name}`|Put|Creates or updates a peering in the specified ExpressRouteCrossConnection.|ExpressRouteCrossConnectionPeerings_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteCrossConnections/%{cross_connection_name}/peerings/%{peering_name}`|Get|Gets the specified peering for the ExpressRouteCrossConnection.|ExpressRouteCrossConnectionPeerings_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteCrossConnections/%{cross_connection_name}/peerings`|Get|Gets all peerings in a specified ExpressRouteCrossConnection.|ExpressRouteCrossConnectionPeerings_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteCrossConnections/%{cross_connection_name}/peerings/%{peering_name}`|Put|Creates or updates a peering in the specified ExpressRouteCrossConnection.|ExpressRouteCrossConnectionPeerings_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteCrossConnections/%{cross_connection_name}/peerings/%{peering_name}`|Delete|Deletes the specified peering from the ExpressRouteCrossConnection.|ExpressRouteCrossConnectionPeerings_Delete|
