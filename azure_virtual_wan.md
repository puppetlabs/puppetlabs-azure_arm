Document: "virtualWan"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/network/resource-manager/Microsoft.Network/stable/2018-04-01/virtualWan.json")

## VirtualWAN

VirtualWAN Resource.

```puppet
azure_virtual_wan {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  properties => $azure_virtual_wan_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  wan_parameters => "WANParameters",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|properties | [VirtualWanProperties](#virtualwanproperties) | false |  |
|resource_group_name | String | true | The resource group name of the VirtualWan. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
|wan_parameters | Hash | true | Parameters supplied to create or update VirtualWAN. |
        
## VirtualWanProperties

Parameters for VirtualWAN

```puppet
$azure_virtual_wan_properties = {
  disableVpnEncryption => "disableVpnEncryption (optional)",
  provisioningState => $azure_provisioning_state
  virtualHubs => $azure_sub_resource
  vpnSites => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|disableVpnEncryption | Boolean | false | Vpn encryption to be disabled or not. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | The provisioning state of the resource. |
|virtualHubs | [SubResource](#subresource) | false | List of VirtualHubs in the VirtualWAN. |
|vpnSites | [SubResource](#subresource) | false |  |
        
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

Here is a list of endpoints that we use to create, read, update and delete the VirtualWAN

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualWans/%{_virtual_wan_name}`|Put|Creates a VirtualWAN resource if it doesn't exist else updates the existing VirtualWAN.|VirtualWANs_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/virtualWans`|Get|Lists all the VirtualWANs in a subscription.|VirtualWANs_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualWans/%{_virtual_wan_name}`|Get|Retrieves the details of a VirtualWAN.|VirtualWANs_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualWans`|Get|Lists all the VirtualWANs in a resource group.|VirtualWANs_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualWans/%{_virtual_wan_name}`|Put|Creates a VirtualWAN resource if it doesn't exist else updates the existing VirtualWAN.|VirtualWANs_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualWans/%{_virtual_wan_name}`|Delete|Deletes a VirtualWAN.|VirtualWANs_Delete|
