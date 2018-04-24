Document: "dns"
Path: "/root/specs/specification/dns/resource-manager/Microsoft.Network/stable/2017-10-01/dns.json")

## Zone

```puppet
azure_zone {
  api_version => "api_version",
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_zone_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Specifies the API version. |
|etag | String | false | The etag of the zone. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|name | String | false | Resource name. |
|parameters | Hash | true | Parameters supplied to the CreateOrUpdate operation. |
|properties | [ZoneProperties](#zoneproperties) | false | The properties of the zone. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Specifies the Azure subscription ID, which uniquely identifies the Microsoft Azure subscription. |
|tags | Hash | false | Resource tags. |
|type | String | false | Resource type. |
        
## ZoneProperties

```puppet
$azure_zone_properties = {
  maxNumberOfRecordSets => "1234 (optional)",
  nameServers => "nameServers (optional)",
  numberOfRecordSets => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|maxNumberOfRecordSets | Integer | false | The maximum number of record sets that can be created in this DNS zone.  This is a read-only property and any attempt to set this value will be ignored. |
|nameServers | Array | false | The name servers for this DNS zone. This is a read-only property and any attempt to set this value will be ignored. |
|numberOfRecordSets | Integer | false | The current number of record sets in this DNS zone.  This is a read-only property and any attempt to set this value will be ignored. |



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