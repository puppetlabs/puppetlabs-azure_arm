Document: "privatedns"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/privatedns/resource-manager/Microsoft.Network/stable/2018-09-01/privatedns.json")

## PrivateZone

Describes a Private DNS zone.

```puppet
azure_private_zone {
  api_version => "api_version",
  etag => "etag (optional)",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_private_zone_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|etag | String | false | The ETag of the zone. |
|location | String | false | The Azure Region where the resource lives |
|parameters | Hash | true | Parameters supplied to the CreateOrUpdate operation. |
|properties | [PrivateZoneProperties](#privatezoneproperties) | false | Properties of the Private DNS zone. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
        
## PrivateZoneProperties

Represents the properties of the Private DNS zone.

```puppet
$azure_private_zone_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the PrivateZone

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/privateDnsZones/%{private_zone_name}`|Put|Creates or updates a Private DNS zone. Does not modify Links to virtual networks or DNS records within the zone.|PrivateZones_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/privateDnsZones`|Get|Lists the Private DNS zones in all resource groups in a subscription.|PrivateZones_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/privateDnsZones/%{private_zone_name}`|Get|Gets a Private DNS zone. Retrieves the zone properties, but not the virtual networks links or the record sets within the zone.|PrivateZones_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/privateDnsZones`|Get|Lists the Private DNS zones in all resource groups in a subscription.|PrivateZones_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/privateDnsZones/%{private_zone_name}`|Put|Creates or updates a Private DNS zone. Does not modify Links to virtual networks or DNS records within the zone.|PrivateZones_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/privateDnsZones/%{private_zone_name}`|Delete|Deletes a Private DNS zone. WARNING: All DNS records in the zone will also be deleted. This operation cannot be undone. Private DNS zone cannot be deleted unless all virtual network links to it are removed.|PrivateZones_Delete|
