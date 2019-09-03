Document: "virtualWan"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/network/resource-manager/Microsoft.Network/stable/2019-06-01/virtualWan.json")

## P2SVpnGateway

P2SVpnGateway Resource.

```puppet
azure_p2_s_vpn_gateway {
  api_version => "api_version",
  gateway_name => "gateway_name",
  id => "id (optional)",
  location => "location (optional)",
  p2_s_vpn_gateway_parameters => "p2SVpnGatewayParameters",
  properties => $azure_p2_s_vpn_gateway_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|gateway_name | String | true | The name of the gateway. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|p2_s_vpn_gateway_parameters | Hash | true | Parameters supplied to create or Update a virtual wan p2s vpn gateway. |
|properties | [P2SVpnGatewayProperties](#p2svpngatewayproperties) | false | Properties of the P2SVpnGateway. |
|resource_group_name | String | true | The resource group name of the P2SVpnGateway. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
        
## P2SVpnGatewayProperties

Parameters for P2SVpnGateway.

```puppet
$azure_p2_s_vpn_gateway_properties = {
  customRoutes => $azure_address_space
  p2SVpnServerConfiguration => $azure_sub_resource
  provisioningState => $azure_provisioning_state
  virtualHub => $azure_sub_resource
  vpnClientAddressPool => $azure_address_space
  vpnClientConnectionHealth => $azure_vpn_client_connection_health
  vpnGatewayScaleUnit => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|customRoutes | [AddressSpace](#addressspace) | false | The reference of the address space resource which represents the custom routes specified by the customer for P2SVpnGateway and P2S VpnClient. |
|p2SVpnServerConfiguration | [SubResource](#subresource) | false | The P2SVpnServerConfiguration to which the p2sVpnGateway is attached to. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | The provisioning state of the resource. |
|virtualHub | [SubResource](#subresource) | false | The VirtualHub to which the gateway belongs. |
|vpnClientAddressPool | [AddressSpace](#addressspace) | false | The reference of the address space resource which represents Address space for P2S VpnClient. |
|vpnClientConnectionHealth | [VpnClientConnectionHealth](#vpnclientconnectionhealth) | false | All P2S VPN clients' connection health status. |
|vpnGatewayScaleUnit | Integer | false | The scale unit for this p2s vpn gateway. |
        
## AddressSpace

AddressSpace contains an array of IP address ranges that can be used by subnets of the virtual network.

```puppet
$azure_address_space = {
  addressPrefixes => "addressPrefixes (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|addressPrefixes | Array | false | A list of address blocks reserved for this virtual network in CIDR notation. |
        
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
        
## ProvisioningState

The current provisioning state.

```puppet
$azure_provisioning_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
        
## VpnClientConnectionHealth

VpnClientConnectionHealth properties.

```puppet
$azure_vpn_client_connection_health = {
  allocatedIpAddresses => "allocatedIpAddresses (optional)",
  vpnClientConnectionsCount => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|allocatedIpAddresses | Array | false | List of allocated ip addresses to the connected p2s vpn clients. |
|vpnClientConnectionsCount | Integer | false | The total of p2s vpn clients connected at this time to this P2SVpnGateway. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the P2SVpnGateway

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/p2svpnGateways/%{gateway_name}`|Put|Creates a virtual wan p2s vpn gateway if it doesn't exist else updates the existing gateway.|P2sVpnGateways_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/p2svpnGateways`|Get|Lists all the P2SVpnGateways in a subscription.|P2sVpnGateways_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/p2svpnGateways/%{gateway_name}`|Get|Retrieves the details of a virtual wan p2s vpn gateway.|P2sVpnGateways_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/p2svpnGateways`|Get|Lists all the P2SVpnGateways in a resource group.|P2sVpnGateways_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/p2svpnGateways/%{gateway_name}`|Put|Creates a virtual wan p2s vpn gateway if it doesn't exist else updates the existing gateway.|P2sVpnGateways_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/p2svpnGateways/%{gateway_name}`|Delete|Deletes a virtual wan p2s vpn gateway.|P2sVpnGateways_Delete|
