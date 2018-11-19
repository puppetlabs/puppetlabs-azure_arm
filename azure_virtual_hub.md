Document: "virtualWan"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/network/resource-manager/Microsoft.Network/stable/2018-04-01/virtualWan.json")

## VirtualHub

VirtualHub Resource.

```puppet
azure_virtual_hub {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  properties => $azure_virtual_hub_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  virtual_hub_parameters => "virtualHubParameters",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|properties | [VirtualHubProperties](#virtualhubproperties) | false |  |
|resource_group_name | String | true | The resource group name of the VirtualHub. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
|virtual_hub_parameters | Hash | true | Parameters supplied to create or update VirtualHub. |
        
## VirtualHubProperties

Parameters for VirtualHub

```puppet
$azure_virtual_hub_properties = {
  addressPrefix => "addressPrefix (optional)",
  hubVirtualNetworkConnections => $azure_hub_virtual_network_connection
  provisioningState => $azure_provisioning_state
  virtualWan => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|addressPrefix | String | false | Address-prefix for this VirtualHub. |
|hubVirtualNetworkConnections | [HubVirtualNetworkConnection](#hubvirtualnetworkconnection) | false | list of all vnet connections with this VirtualHub. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | The provisioning state of the resource. |
|virtualWan | [SubResource](#subresource) | false | The VirtualWAN to which the VirtualHub belongs |
        
## HubVirtualNetworkConnection

HubVirtualNetworkConnection Resource.

```puppet
$azure_hub_virtual_network_connection = {
  id => "id (optional)",
  location => "location (optional)",
  properties => $azure_hub_virtual_network_connection_properties
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|properties | [HubVirtualNetworkConnectionProperties](#hubvirtualnetworkconnectionproperties) | false |  |
|tags | Hash | false | Resource tags. |
        
## HubVirtualNetworkConnectionProperties

Parameters for HubVirtualNetworkConnection

```puppet
$azure_hub_virtual_network_connection_properties = {
  allowHubToRemoteVnetTransit => "allowHubToRemoteVnetTransit (optional)",
  allowRemoteVnetToUseHubVnetGateways => "allowRemoteVnetToUseHubVnetGateways (optional)",
  provisioningState => $azure_provisioning_state
  remoteVirtualNetwork => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|allowHubToRemoteVnetTransit | Boolean | false | VirtualHub to RemoteVnet transit to enabled or not. |
|allowRemoteVnetToUseHubVnetGateways | Boolean | false | Allow RemoteVnet to use Virtual Hub's gateways. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | The provisioning state of the resource. |
|remoteVirtualNetwork | [SubResource](#subresource) | false | Reference to the remote virtual network. |
        
## ProvisioningState

The current provisisoning state.

```puppet
$azure_provisioning_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
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

Here is a list of endpoints that we use to create, read, update and delete the VirtualHub

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualHubs/%{virtual_hub_name}`|Put|Creates a VirtualHub resource if it doesn't exist else updates the existing VirtualHub.|VirtualHubs_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/virtualHubs`|Get|Lists all the VirtualHubs in a subscription.|VirtualHubs_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualHubs/%{virtual_hub_name}`|Get|Retrieves the details of a VirtualHub.|VirtualHubs_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/virtualHubs`|Get|Lists all the VirtualHubs in a subscription.|VirtualHubs_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualHubs/%{virtual_hub_name}`|Put|Creates a VirtualHub resource if it doesn't exist else updates the existing VirtualHub.|VirtualHubs_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualHubs/%{virtual_hub_name}`|Delete|Deletes a VirtualHub.|VirtualHubs_Delete|
