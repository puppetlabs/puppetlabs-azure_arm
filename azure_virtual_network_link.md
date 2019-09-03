Document: "privatedns"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/privatedns/resource-manager/Microsoft.Network/stable/2018-09-01/privatedns.json")

## VirtualNetworkLink

Describes a link to virtual network for a Private DNS zone.

```puppet
azure_virtual_network_link {
  api_version => "api_version",
  etag => "etag (optional)",
  location => "location (optional)",
  parameters => "parameters",
  private_zone_name => "private_zone_name",
  properties => $azure_virtual_network_link_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|etag | String | false | The ETag of the virtual network link. |
|location | String | false | The Azure Region where the resource lives |
|parameters | Hash | true | Parameters supplied to the CreateOrUpdate operation. |
|private_zone_name | String | true | The name of the Private DNS zone (without a terminating dot). |
|properties | [VirtualNetworkLinkProperties](#virtualnetworklinkproperties) | false | Properties of the virtual network link to the Private DNS zone. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
        
## VirtualNetworkLinkProperties

Represents the properties of the Private DNS zone.

```puppet
$azure_virtual_network_link_properties = {
  registrationEnabled => "registrationEnabled (optional)",
  virtualNetwork => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|registrationEnabled | Boolean | false | Is auto-registration of virtual machine records in the virtual network in the Private DNS zone enabled? |
|virtualNetwork | [SubResource](#subresource) | false | The reference of the virtual network. |
        
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

Here is a list of endpoints that we use to create, read, update and delete the VirtualNetworkLink

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/privateDnsZones/%{private_zone_name}/virtualNetworkLinks/%{virtual_network_link_name}`|Put|Creates or updates a virtual network link to the specified Private DNS zone.|VirtualNetworkLinks_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/privateDnsZones/%{private_zone_name}/virtualNetworkLinks/%{virtual_network_link_name}`|Get|Gets a virtual network link to the specified Private DNS zone.|VirtualNetworkLinks_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/privateDnsZones/%{private_zone_name}/virtualNetworkLinks`|Get|Lists the virtual network links to the specified Private DNS zone.|VirtualNetworkLinks_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/privateDnsZones/%{private_zone_name}/virtualNetworkLinks/%{virtual_network_link_name}`|Put|Creates or updates a virtual network link to the specified Private DNS zone.|VirtualNetworkLinks_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/privateDnsZones/%{private_zone_name}/virtualNetworkLinks/%{virtual_network_link_name}`|Delete|Deletes a virtual network link to the specified Private DNS zone. WARNING: In case of a registration virtual network, all auto-registered DNS records in the zone for the virtual network will also be deleted. This operation cannot be undone.|VirtualNetworkLinks_Delete|
