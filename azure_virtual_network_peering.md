Document: "virtualNetwork"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/network/resource-manager/Microsoft.Network/stable/2019-06-01/virtualNetwork.json")

## VirtualNetworkPeering

Peerings in a virtual network resource.

```puppet
azure_virtual_network_peering {
  api_version => "api_version",
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_virtual_network_peering_properties_format
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  virtual_network_name => "virtual_network_name",
  virtual_network_peering_parameters => "VirtualNetworkPeeringParameters",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [VirtualNetworkPeeringPropertiesFormat](#virtualnetworkpeeringpropertiesformat) | false | Properties of the virtual network peering. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|virtual_network_name | String | true | The name of the virtual network. |
|virtual_network_peering_parameters | Hash | true | Parameters supplied to the create or update virtual network peering operation. |
        
## VirtualNetworkPeeringPropertiesFormat

Properties of the virtual network peering.

```puppet
$azure_virtual_network_peering_properties_format = {
  allowForwardedTraffic => "allowForwardedTraffic (optional)",
  allowGatewayTransit => "allowGatewayTransit (optional)",
  allowVirtualNetworkAccess => "allowVirtualNetworkAccess (optional)",
  peeringState => "peeringState (optional)",
  provisioningState => "provisioningState (optional)",
  remoteAddressSpace => $azure_address_space
  remoteVirtualNetwork => $azure_sub_resource
  useRemoteGateways => "useRemoteGateways (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|allowForwardedTraffic | Boolean | false | Whether the forwarded traffic from the VMs in the local virtual network will be allowed/disallowed in remote virtual network. |
|allowGatewayTransit | Boolean | false | If gateway links can be used in remote virtual networking to link to this virtual network. |
|allowVirtualNetworkAccess | Boolean | false | Whether the VMs in the local virtual network space would be able to access the VMs in remote virtual network space. |
|peeringState | String | false | The status of the virtual network peering. |
|provisioningState | String | false | The provisioning state of the resource. |
|remoteAddressSpace | [AddressSpace](#addressspace) | false | The reference of the remote virtual network address space. |
|remoteVirtualNetwork | [SubResource](#subresource) | false | The reference of the remote virtual network. The remote virtual network can be in the same or different region (preview). See here to register for the preview and learn more (https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-create-peering). |
|useRemoteGateways | Boolean | false | If remote gateways can be used on this virtual network. If the flag is set to true, and allowGatewayTransit on remote peering is also true, virtual network will use gateways of remote virtual network for transit. Only one peering can have this flag set to true. This flag cannot be set if virtual network already has a gateway. |
        
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



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the VirtualNetworkPeering

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualNetworks/%{virtual_network_name}/virtualNetworkPeerings/%{virtual_network_peering_name}`|Put|Creates or updates a peering in the specified virtual network.|VirtualNetworkPeerings_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualNetworks/%{virtual_network_name}/virtualNetworkPeerings/%{virtual_network_peering_name}`|Get|Gets the specified virtual network peering.|VirtualNetworkPeerings_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualNetworks/%{virtual_network_name}/virtualNetworkPeerings`|Get|Gets all virtual network peerings in a virtual network.|VirtualNetworkPeerings_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualNetworks/%{virtual_network_name}/virtualNetworkPeerings/%{virtual_network_peering_name}`|Put|Creates or updates a peering in the specified virtual network.|VirtualNetworkPeerings_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualNetworks/%{virtual_network_name}/virtualNetworkPeerings/%{virtual_network_peering_name}`|Delete|Deletes the specified virtual network peering.|VirtualNetworkPeerings_Delete|
