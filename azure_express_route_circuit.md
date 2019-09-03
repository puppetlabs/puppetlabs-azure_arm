Document: "expressRouteCircuit"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/network/resource-manager/Microsoft.Network/stable/2019-06-01/expressRouteCircuit.json")

## ExpressRouteCircuit

ExpressRouteCircuit resource.

```puppet
azure_express_route_circuit {
  api_version => "api_version",
  circuit_name => "circuit_name",
  id => "id (optional)",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_express_route_circuit_properties_format
  resource_group_name => "resource_group_name",
  sku => $azure_express_route_circuit_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|circuit_name | String | true | The name of the circuit. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|parameters | Hash | true | Parameters supplied to the create or update express route circuit operation. |
|properties | [ExpressRouteCircuitPropertiesFormat](#expressroutecircuitpropertiesformat) | false | Properties of the express route circuit. |
|resource_group_name | String | true | The name of the resource group. |
|sku | [ExpressRouteCircuitSku](#expressroutecircuitsku) | false | The SKU. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
        
## ExpressRouteCircuitPropertiesFormat

Properties of ExpressRouteCircuit.

```puppet
$azure_express_route_circuit_properties_format = {
  allowClassicOperations => "allowClassicOperations (optional)",
  authorizations => $azure_express_route_circuit_authorization
  bandwidthInGbps => "bandwidthInGbps (optional)",
  circuitProvisioningState => "circuitProvisioningState (optional)",
  expressRoutePort => $azure_sub_resource
  gatewayManagerEtag => "gatewayManagerEtag (optional)",
  globalReachEnabled => "globalReachEnabled (optional)",
  peerings => $azure_express_route_circuit_peering
  provisioningState => "provisioningState (optional)",
  serviceKey => "serviceKey (optional)",
  serviceProviderNotes => "serviceProviderNotes (optional)",
  serviceProviderProperties => $azure_express_route_circuit_service_provider_properties
  serviceProviderProvisioningState => $azure_service_provider_provisioning_state
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|allowClassicOperations | Boolean | false | Allow classic operations. |
|authorizations | [ExpressRouteCircuitAuthorization](#expressroutecircuitauthorization) | false | The list of authorizations. |
|bandwidthInGbps | Numeric | false | The bandwidth of the circuit when the circuit is provisioned on an ExpressRoutePort resource. |
|circuitProvisioningState | String | false | The CircuitProvisioningState state of the resource. |
|expressRoutePort | [SubResource](#subresource) | false | The reference to the ExpressRoutePort resource when the circuit is provisioned on an ExpressRoutePort resource. |
|gatewayManagerEtag | String | false | The GatewayManager Etag. |
|globalReachEnabled | Boolean | false | Flag denoting Global reach status. |
|peerings | [ExpressRouteCircuitPeering](#expressroutecircuitpeering) | false | The list of peerings. |
|provisioningState | String | false | Gets the provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|serviceKey | String | false | The ServiceKey. |
|serviceProviderNotes | String | false | The ServiceProviderNotes. |
|serviceProviderProperties | [ExpressRouteCircuitServiceProviderProperties](#expressroutecircuitserviceproviderproperties) | false | The ServiceProviderProperties. |
|serviceProviderProvisioningState | [ServiceProviderProvisioningState](#serviceproviderprovisioningstate) | false | The ServiceProviderProvisioningState state of the resource. |
        
## ExpressRouteCircuitAuthorization

Authorization in an ExpressRouteCircuit resource.

```puppet
$azure_express_route_circuit_authorization = {
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_authorization_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
|name | String | false | Gets name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [AuthorizationPropertiesFormat](#authorizationpropertiesformat) | false | Properties of the express route circuit authorization. |
        
## AuthorizationPropertiesFormat

Properties of ExpressRouteCircuitAuthorization.

```puppet
$azure_authorization_properties_format = {
  authorizationKey => "authorizationKey (optional)",
  authorizationUseStatus => "authorizationUseStatus (optional)",
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|authorizationKey | String | false | The authorization key. |
|authorizationUseStatus | String | false | The authorization use status. |
|provisioningState | String | false | Gets the provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
        
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
        
## ExpressRouteCircuitPeering

Peering in an ExpressRouteCircuit resource.

```puppet
$azure_express_route_circuit_peering = {
  api-version => "api-version",
  circuitName => "circuitName",
  id => "id (optional)",
  name => "name (optional)",
  peeringName => "peeringName",
  peeringParameters => "peeringParameters",
  properties => $azure_express_route_circuit_peering_properties_format
  resourceGroupName => "resourceGroupName",
  subscriptionId => "subscriptionId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api-version | String | true | Client API version. |
|circuitName | String | true | The name of the express route circuit. |
|id | String | false | Resource ID. |
|name | String | false | Gets name of the resource that is unique within a resource group. This name can be used to access the resource. |
|peeringName | String | true | The name of the peering. |
|peeringParameters | Hash | true | Parameters supplied to the create or update express route circuit peering operation. |
|properties | [ExpressRouteCircuitPeeringPropertiesFormat](#expressroutecircuitpeeringpropertiesformat) | false | Properties of the express route circuit peering. |
|resourceGroupName | String | true | The name of the resource group. |
|subscriptionId | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## ExpressRouteCircuitPeeringPropertiesFormat

Properties of the express route circuit peering.

```puppet
$azure_express_route_circuit_peering_properties_format = {
  azureASN => "1234 (optional)",
  connections => $azure_express_route_circuit_connection
  expressRouteConnection => $azure_express_route_connection_id
  gatewayManagerEtag => "gatewayManagerEtag (optional)",
  ipv6PeeringConfig => $azure_ipv6_express_route_circuit_peering_config
  lastModifiedBy => "lastModifiedBy (optional)",
  microsoftPeeringConfig => $azure_express_route_circuit_peering_config
  peerASN => "1234 (optional)",
  peeredConnections => $azure_peer_express_route_circuit_connection
  peeringType => $azure_express_route_peering_type
  primaryAzurePort => "primaryAzurePort (optional)",
  primaryPeerAddressPrefix => "primaryPeerAddressPrefix (optional)",
  provisioningState => "provisioningState (optional)",
  routeFilter => $azure_sub_resource
  secondaryAzurePort => "secondaryAzurePort (optional)",
  secondaryPeerAddressPrefix => "secondaryPeerAddressPrefix (optional)",
  sharedKey => "sharedKey (optional)",
  state => $azure_express_route_peering_state
  stats => $azure_express_route_circuit_stats
  vlanId => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|azureASN | Integer | false | The Azure ASN. |
|connections | [ExpressRouteCircuitConnection](#expressroutecircuitconnection) | false | The list of circuit connections associated with Azure Private Peering for this circuit. |
|expressRouteConnection | [ExpressRouteConnectionId](#expressrouteconnectionid) | false | The ExpressRoute connection. |
|gatewayManagerEtag | String | false | The GatewayManager Etag. |
|ipv6PeeringConfig | [Ipv6ExpressRouteCircuitPeeringConfig](#ipv6expressroutecircuitpeeringconfig) | false | The IPv6 peering configuration. |
|lastModifiedBy | String | false | Gets whether the provider or the customer last modified the peering. |
|microsoftPeeringConfig | [ExpressRouteCircuitPeeringConfig](#expressroutecircuitpeeringconfig) | false | The Microsoft peering configuration. |
|peerASN | Integer | false | The peer ASN. |
|peeredConnections | [PeerExpressRouteCircuitConnection](#peerexpressroutecircuitconnection) | false | The list of peered circuit connections associated with Azure Private Peering for this circuit. |
|peeringType | [ExpressRoutePeeringType](#expressroutepeeringtype) | false | The peering type. |
|primaryAzurePort | String | false | The primary port. |
|primaryPeerAddressPrefix | String | false | The primary address prefix. |
|provisioningState | String | false | Gets the provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|routeFilter | [SubResource](#subresource) | false | The reference of the RouteFilter resource. |
|secondaryAzurePort | String | false | The secondary port. |
|secondaryPeerAddressPrefix | String | false | The secondary address prefix. |
|sharedKey | String | false | The shared key. |
|state | [ExpressRoutePeeringState](#expressroutepeeringstate) | false | The peering state. |
|stats | [ExpressRouteCircuitStats](#expressroutecircuitstats) | false | Gets peering stats. |
|vlanId | Integer | false | The VLAN ID. |
        
## ExpressRouteCircuitConnection

Express Route Circuit Connection in an ExpressRouteCircuitPeering resource.

```puppet
$azure_express_route_circuit_connection = {
  api-version => "api-version",
  circuitName => "circuitName",
  connectionName => "connectionName",
  expressRouteCircuitConnectionParameters => "expressRouteCircuitConnectionParameters",
  id => "id (optional)",
  name => "name (optional)",
  peeringName => "peeringName",
  properties => $azure_express_route_circuit_connection_properties_format
  resourceGroupName => "resourceGroupName",
  subscriptionId => "subscriptionId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api-version | String | true | Client API version. |
|circuitName | String | true | The name of the express route circuit. |
|connectionName | String | true | The name of the express route circuit connection. |
|expressRouteCircuitConnectionParameters | Hash | true | Parameters supplied to the create or update express route circuit connection operation. |
|id | String | false | Resource ID. |
|name | String | false | Gets name of the resource that is unique within a resource group. This name can be used to access the resource. |
|peeringName | String | true | The name of the peering. |
|properties | [ExpressRouteCircuitConnectionPropertiesFormat](#expressroutecircuitconnectionpropertiesformat) | false | Properties of the express route circuit connection. |
|resourceGroupName | String | true | The name of the resource group. |
|subscriptionId | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## ExpressRouteCircuitConnectionPropertiesFormat

Properties of the express route circuit connection.

```puppet
$azure_express_route_circuit_connection_properties_format = {
  addressPrefix => "addressPrefix (optional)",
  authorizationKey => "authorizationKey (optional)",
  circuitConnectionStatus => $azure_circuit_connection_status
  expressRouteCircuitPeering => $azure_sub_resource
  peerExpressRouteCircuitPeering => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|addressPrefix | String | false | /29 IP address space to carve out Customer addresses for tunnels. |
|authorizationKey | String | false | The authorization key. |
|circuitConnectionStatus | [CircuitConnectionStatus](#circuitconnectionstatus) | false | Express Route Circuit connection state. |
|expressRouteCircuitPeering | [SubResource](#subresource) | false | Reference to Express Route Circuit Private Peering Resource of the circuit initiating connection. |
|peerExpressRouteCircuitPeering | [SubResource](#subresource) | false | Reference to Express Route Circuit Private Peering Resource of the peered circuit. |
        
## CircuitConnectionStatus

Express Route Circuit connection state.

```puppet
$azure_circuit_connection_status = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
        
## ExpressRouteConnectionId

The ID of the ExpressRouteConnection.

```puppet
$azure_express_route_connection_id = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
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
        
        
        
## PeerExpressRouteCircuitConnection

Peer Express Route Circuit Connection in an ExpressRouteCircuitPeering resource.

```puppet
$azure_peer_express_route_circuit_connection = {
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_peer_express_route_circuit_connection_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
|name | String | false | Gets name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [PeerExpressRouteCircuitConnectionPropertiesFormat](#peerexpressroutecircuitconnectionpropertiesformat) | false | Properties of the peer express route circuit connection. |
        
## PeerExpressRouteCircuitConnectionPropertiesFormat

Properties of the peer express route circuit connection.

```puppet
$azure_peer_express_route_circuit_connection_properties_format = {
  addressPrefix => "addressPrefix (optional)",
  authResourceGuid => "authResourceGuid (optional)",
  circuitConnectionStatus => $azure_circuit_connection_status
  connectionName => "connectionName (optional)",
  expressRouteCircuitPeering => $azure_sub_resource
  peerExpressRouteCircuitPeering => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|addressPrefix | String | false | /29 IP address space to carve out Customer addresses for tunnels. |
|authResourceGuid | String | false | The resource guid of the authorization used for the express route circuit connection. |
|circuitConnectionStatus | [CircuitConnectionStatus](#circuitconnectionstatus) | false | Express Route Circuit connection state. |
|connectionName | String | false | The name of the express route circuit connection resource. |
|expressRouteCircuitPeering | [SubResource](#subresource) | false | Reference to Express Route Circuit Private Peering Resource of the circuit. |
|peerExpressRouteCircuitPeering | [SubResource](#subresource) | false | Reference to Express Route Circuit Private Peering Resource of the peered circuit. |
        
        
        
        
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
        
## ExpressRouteCircuitStats

Contains stats associated with the peering.

```puppet
$azure_express_route_circuit_stats = {
  primarybytesIn => "1234 (optional)",
  primarybytesOut => "1234 (optional)",
  secondarybytesIn => "1234 (optional)",
  secondarybytesOut => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|primarybytesIn | Integer | false | Gets BytesIn of the peering. |
|primarybytesOut | Integer | false | Gets BytesOut of the peering. |
|secondarybytesIn | Integer | false | Gets BytesIn of the peering. |
|secondarybytesOut | Integer | false | Gets BytesOut of the peering. |
        
## ExpressRouteCircuitServiceProviderProperties

Contains ServiceProviderProperties in an ExpressRouteCircuit.

```puppet
$azure_express_route_circuit_service_provider_properties = {
  bandwidthInMbps => "1234 (optional)",
  peeringLocation => "peeringLocation (optional)",
  serviceProviderName => "serviceProviderName (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|bandwidthInMbps | Integer | false | The BandwidthInMbps. |
|peeringLocation | String | false | The peering location. |
|serviceProviderName | String | false | The serviceProviderName. |
        
## ServiceProviderProvisioningState

The ServiceProviderProvisioningState state of the resource.

```puppet
$azure_service_provider_provisioning_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ExpressRouteCircuitSku

Contains SKU in an ExpressRouteCircuit.

```puppet
$azure_express_route_circuit_sku = {
  family => "family (optional)",
  name => "name (optional)",
  tier => "tier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|family | String | false | The family of the SKU. |
|name | String | false | The name of the SKU. |
|tier | String | false | The tier of the SKU. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ExpressRouteCircuit

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteCircuits/%{circuit_name}`|Put|Creates or updates an express route circuit.|ExpressRouteCircuits_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/expressRouteCircuits`|Get|Gets all the express route circuits in a subscription.|ExpressRouteCircuits_ListAll|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteCircuits/%{circuit_name}`|Get|Gets information about the specified express route circuit.|ExpressRouteCircuits_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/expressRouteCircuits`|Get|Gets all the express route circuits in a subscription.|ExpressRouteCircuits_ListAll|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteCircuits/%{circuit_name}`|Put|Creates or updates an express route circuit.|ExpressRouteCircuits_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteCircuits/%{circuit_name}`|Delete|Deletes the specified express route circuit.|ExpressRouteCircuits_Delete|
