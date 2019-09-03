Document: "dns"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/dns/resource-manager/Microsoft.Network/stable/2018-05-01/dns.json")

## Zone

Describes a DNS zone.

```puppet
azure_zone {
  api_version => "api_version",
  etag => "etag (optional)",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_zone_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Specifies the API version. |
|etag | String | false | The etag of the zone. |
|location | String | false | Resource location. |
|parameters | Hash | true | Parameters supplied to the CreateOrUpdate operation. |
|properties | [ZoneProperties](#zoneproperties) | false | The properties of the zone. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Specifies the Azure subscription ID, which uniquely identifies the Microsoft Azure subscription. |
|tags | Hash | false | Resource tags. |
        
## ZoneProperties

Represents the properties of the zone.

```puppet
$azure_zone_properties = {
  registrationVirtualNetworks => $azure_sub_resource
  resolutionVirtualNetworks => $azure_sub_resource
  zoneType => "zoneType (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|registrationVirtualNetworks | [SubResource](#subresource) | false | A list of references to virtual networks that register hostnames in this DNS zone. This is a only when ZoneType is Private. |
|resolutionVirtualNetworks | [SubResource](#subresource) | false | A list of references to virtual networks that resolve records in this DNS zone. This is a only when ZoneType is Private. |
|zoneType | String | false | The type of this DNS zone (Public or Private). |
        
## SubResource

A reference to a another resource

```puppet
$azure_sub_resource = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource Id. |
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Zone

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/dnsZones/%{zone_name}`|Put|Creates or updates a DNS zone. Does not modify DNS records within the zone.|Zones_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/dnszones`|Get|Lists the DNS zones in all resource groups in a subscription.|Zones_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/dnsZones/%{zone_name}`|Get|Gets a DNS zone. Retrieves the zone properties, but not the record sets within the zone.|Zones_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/dnsZones`|Get|Lists the DNS zones within a resource group.|Zones_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/dnsZones/%{zone_name}`|Put|Creates or updates a DNS zone. Does not modify DNS records within the zone.|Zones_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/dnsZones/%{zone_name}`|Delete|Deletes a DNS zone. WARNING: All DNS records in the zone will also be deleted. This operation cannot be undone.|Zones_Delete|
