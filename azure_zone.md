Document: "dns"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/dns/resource-manager/Microsoft.Network/stable/2017-10-01/dns.json")

## Zone

Describes a DNS zone.

```puppet
azure_zone {
  api_version => "api_version",
  etag => "etag (optional)",
  parameters => "parameters",
  properties => $azure_zone_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for this operation. |
|etag | String | false | The etag of the zone. |
|parameters | Hash | true | Parameters supplied to the CreateOrUpdate operation. |
|properties | [ZoneProperties](#zoneproperties) | false | The properties of the zone. |
|resource_group_name | String | true | The name of the resource group. The name is case insensitive. |
|subscription_id | String | true | The ID of the target subscription. |
        
## ZoneProperties

Represents the properties of the zone.

```puppet
$azure_zone_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



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
