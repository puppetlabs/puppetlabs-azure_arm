Document: "virtualNetworkGateway"
Path: "/root/specs/specification/network/resource-manager/Microsoft.Network/stable/2018-02-01/virtualNetworkGateway.json")

## LocalNetworkGateway

```puppet
azure_local_network_gateway {
  api_version => "api_version",
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_local_network_gateway_properties_format
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|name | String | false | Resource name. |
|parameters | Hash | true | Parameters supplied to the create or update local network gateway operation. |
|properties | [LocalNetworkGatewayPropertiesFormat](#localnetworkgatewaypropertiesformat) | true | Properties of the local network gateway. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
|type | String | false | Resource type. |
        
## LocalNetworkGatewayPropertiesFormat

```puppet
$azure_local_network_gateway_properties_format = {
  bgpSettings => $azure_bgp_settings
  gatewayIpAddress => "gatewayIpAddress (optional)",
  localNetworkAddressSpace => $azure_address_space
  provisioningState => "provisioningState (optional)",
  resourceGuid => "resourceGuid (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|bgpSettings | [BgpSettings](#bgpsettings) | false | Local network gateway's BGP speaker settings. |
|gatewayIpAddress | String | false | IP address of local network gateway. |
|localNetworkAddressSpace | [AddressSpace](#addressspace) | false | Local network site address space. |
|provisioningState | String | false | The provisioning state of the LocalNetworkGateway resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|resourceGuid | String | false | The resource GUID property of the LocalNetworkGateway resource. |
        
## BgpSettings

```puppet
$azure_bgp_settings = {
  asn => "1234 (optional)",
  bgpPeeringAddress => "bgpPeeringAddress (optional)",
  peerWeight => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|asn | Integer | false | The BGP speaker's ASN. |
|bgpPeeringAddress | String | false | The BGP peering address and BGP identifier of this BGP speaker. |
|peerWeight | Integer | false | The weight added to routes learned from this BGP speaker. |
        
## AddressSpace

```puppet
$azure_address_space = {
  addressPrefixes => "addressPrefixes (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|addressPrefixes | Array | false | A list of address blocks reserved for this virtual network in CIDR notation. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the LocalNetworkGateway

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/localNetworkGateways/%{local_network_gateway_name}`|Put|Creates or updates a local network gateway in the specified resource group.|LocalNetworkGateways_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/localNetworkGateways/%{local_network_gateway_name}`|Get|Gets the specified local network gateway in a resource group.|LocalNetworkGateways_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/localNetworkGateways`|Get|Gets all the local network gateways in a resource group.|LocalNetworkGateways_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/localNetworkGateways/%{local_network_gateway_name}`|Put|Creates or updates a local network gateway in the specified resource group.|LocalNetworkGateways_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/localNetworkGateways/%{local_network_gateway_name}`|Delete|Deletes the specified local network gateway.|LocalNetworkGateways_Delete|