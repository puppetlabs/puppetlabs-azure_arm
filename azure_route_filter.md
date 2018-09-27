Document: "routeFilter"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/network/resource-manager/Microsoft.Network/stable/2018-05-01/routeFilter.json")

## RouteFilter

Route Filter Resource.

```puppet
azure_route_filter {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  properties => $azure_route_filter_properties_format
  resource_group_name => "resource_group_name",
  route_filter_parameters => "routeFilterParameters",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|properties | [RouteFilterPropertiesFormat](#routefilterpropertiesformat) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|route_filter_parameters | Hash | true | Parameters supplied to the create or update route filter operation. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
        
## RouteFilterPropertiesFormat

Route Filter Resource

```puppet
$azure_route_filter_properties_format = {
  peerings => $azure_express_route_circuit_peering
  rules => $azure_route_filter_rule
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|peerings | [ExpressRouteCircuitPeering](#expressroutecircuitpeering) | false | A collection of references to express route circuit peerings. |
|rules | [RouteFilterRule](#routefilterrule) | false | Collection of RouteFilterRules contained within a route filter. |
        
## ExpressRouteCircuitPeering

Peering in an ExpressRouteCircuit resource.

```puppet
$azure_express_route_circuit_peering = {
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_express_route_circuit_peering_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
|name | String | false | Gets name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [ExpressRouteCircuitPeeringPropertiesFormat](#expressroutecircuitpeeringpropertiesformat) | false |  |
        
## ExpressRouteCircuitPeeringPropertiesFormat



```puppet
$azure_express_route_circuit_peering_properties_format = {
  azureASN => "1234 (optional)",
  connections => $azure_express_route_circuit_connection
  gatewayManagerEtag => "gatewayManagerEtag (optional)",
  ipv6PeeringConfig => $azure_ipv6_express_route_circuit_peering_config
  lastModifiedBy => "lastModifiedBy (optional)",
  microsoftPeeringConfig => $azure_express_route_circuit_peering_config
  peerASN => "1234 (optional)",
  peeringType => $azure_express_route_peering_type
  primaryAzurePort => "primaryAzurePort (optional)",
  primaryPeerAddressPrefix => "primaryPeerAddressPrefix (optional)",
  provisioningState => "provisioningState (optional)",
  routeFilter => $azure_route_filter
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
|gatewayManagerEtag | String | false | The GatewayManager Etag. |
|ipv6PeeringConfig | [Ipv6ExpressRouteCircuitPeeringConfig](#ipv6expressroutecircuitpeeringconfig) | false | The IPv6 peering configuration. |
|lastModifiedBy | String | false | Gets whether the provider or the customer last modified the peering. |
|microsoftPeeringConfig | [ExpressRouteCircuitPeeringConfig](#expressroutecircuitpeeringconfig) | false | The Microsoft peering configuration. |
|peerASN | Integer | false | The peer ASN. |
|peeringType | [ExpressRoutePeeringType](#expressroutepeeringtype) | false | The peering type. |
|primaryAzurePort | String | false | The primary port. |
|primaryPeerAddressPrefix | String | false | The primary address prefix. |
|provisioningState | String | false | Gets the provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|routeFilter | [RouteFilter](#routefilter) | false | The reference of the RouteFilter resource. |
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
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_express_route_circuit_connection_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
|name | String | false | Gets name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [ExpressRouteCircuitConnectionPropertiesFormat](#expressroutecircuitconnectionpropertiesformat) | false |  |
        
## ExpressRouteCircuitConnectionPropertiesFormat



```puppet
$azure_express_route_circuit_connection_properties_format = {
  addressPrefix => "addressPrefix (optional)",
  authorizationKey => "authorizationKey (optional)",
  expressRouteCircuitPeering => $azure_sub_resource
  peerExpressRouteCircuitPeering => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|addressPrefix | String | false | /29 IP address space to carve out Customer addresses for tunnels. |
|authorizationKey | String | false | The authorization key. |
|expressRouteCircuitPeering | [SubResource](#subresource) | false | Reference to Express Route Circuit Private Peering Resource of the circuit initiating connection. |
|peerExpressRouteCircuitPeering | [SubResource](#subresource) | false | Reference to Express Route Circuit Private Peering Resource of the peered circuit. |
        
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
        
        
## Ipv6ExpressRouteCircuitPeeringConfig

Contains IPv6 peering config.

```puppet
$azure_ipv6_express_route_circuit_peering_config = {
  microsoftPeeringConfig => $azure_express_route_circuit_peering_config
  primaryPeerAddressPrefix => "primaryPeerAddressPrefix (optional)",
  routeFilter => $azure_route_filter
  secondaryPeerAddressPrefix => "secondaryPeerAddressPrefix (optional)",
  state => "state (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|microsoftPeeringConfig | [ExpressRouteCircuitPeeringConfig](#expressroutecircuitpeeringconfig) | false | The Microsoft peering configuration. |
|primaryPeerAddressPrefix | String | false | The primary address prefix. |
|routeFilter | [RouteFilter](#routefilter) | false | The reference of the RouteFilter resource. |
|secondaryPeerAddressPrefix | String | false | The secondary address prefix. |
|state | String | false | The state of peering. Possible values are: 'Disabled' and 'Enabled' |
        
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
|advertisedCommunities | Array | false | The communities of bgp peering. Spepcified for microsoft peering |
|advertisedPublicPrefixes | Array | false | The reference of AdvertisedPublicPrefixes. |
|advertisedPublicPrefixesState | String | false | AdvertisedPublicPrefixState of the Peering resource. Possible values are 'NotConfigured', 'Configuring', 'Configured', and 'ValidationNeeded'. |
|customerASN | Integer | false | The CustomerASN of the peering. |
|legacyMode | Integer | false | The legacy mode of the peering. |
|routingRegistryName | String | false | The RoutingRegistryName of the configuration. |
        
        
        
## ExpressRoutePeeringType

The PeeringType. Possible values are: 'AzurePublicPeering', 'AzurePrivatePeering', and 'MicrosoftPeering'.

```puppet
$azure_express_route_peering_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
## ExpressRoutePeeringState

The state of peering. Possible values are: 'Disabled' and 'Enabled'

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
        
## RouteFilterRule

Route Filter Rule Resource

```puppet
$azure_route_filter_rule = {
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_route_filter_rule_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [RouteFilterRulePropertiesFormat](#routefilterrulepropertiesformat) | false |  |
        
## RouteFilterRulePropertiesFormat

Route Filter Rule Resource

```puppet
$azure_route_filter_rule_properties_format = {
  access => "access",
  communities => "communities",
  routeFilterRuleType => "routeFilterRuleType",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|access | String | true | The access type of the rule. Valid values are: 'Allow', 'Deny' |
|communities | Array | true | The collection for bgp community values to filter on. e.g. ['12076:5010','12076:5020'] |
|routeFilterRuleType | String | true | The rule type of the rule. Valid value is: 'Community' |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the RouteFilter

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/routeFilters/%{route_filter_name}`|Put|Creates or updates a route filter in a specified resource group.|RouteFilters_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/routeFilters`|Get|Gets all route filters in a subscription.|RouteFilters_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/routeFilters/%{route_filter_name}`|Get|Gets the specified route filter.|RouteFilters_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/routeFilters`|Get|Gets all route filters in a resource group.|RouteFilters_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/routeFilters/%{route_filter_name}`|Put|Creates or updates a route filter in a specified resource group.|RouteFilters_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/routeFilters/%{route_filter_name}`|Delete|Deletes the specified route filter.|RouteFilters_Delete|
