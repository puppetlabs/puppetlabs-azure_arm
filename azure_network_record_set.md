Document: "privatedns"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/privatedns/resource-manager/Microsoft.Network/stable/2018-09-01/privatedns.json")

## RecordSet

Describes a DNS record set (a collection of DNS records with the same name and type) in a Private DNS zone.

```puppet
azure_network_record_set {
  api_version => "api_version",
  etag => "etag (optional)",
  parameters => "parameters",
  private_zone_name => "private_zone_name",
  properties => $azure_record_set_properties
  record_type => "record_type",
  relative_record_set_name => "relative_record_set_name",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|etag | String | false | The ETag of the record set. |
|parameters | Hash | true | Parameters supplied to the CreateOrUpdate operation. |
|private_zone_name | String | true | The name of the Private DNS zone (without a terminating dot). |
|properties | [RecordSetProperties](#recordsetproperties) | false | The properties of the record set. |
|record_type | String | true | The type of DNS record in this record set. Record sets of type SOA can be updated but not created (they are created when the Private DNS zone is created). |
|relative_record_set_name | String | true | The name of the record set, relative to the name of the zone. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## RecordSetProperties

Represents the properties of the records in the record set.

```puppet
$azure_record_set_properties = {
  aaaaRecords => $azure_aaaa_record
  aRecords => $azure_a_record
  cnameRecord => $azure_cname_record
  metadata => "metadata (optional)",
  mxRecords => $azure_mx_record
  ptrRecords => $azure_ptr_record
  soaRecord => $azure_soa_record
  srvRecords => $azure_srv_record
  ttl => "1234 (optional)",
  txtRecords => $azure_txt_record
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|aaaaRecords | [AaaaRecord](#aaaarecord) | false | The list of AAAA records in the record set. |
|aRecords | [ARecord](#arecord) | false | The list of A records in the record set. |
|cnameRecord | [CnameRecord](#cnamerecord) | false | The CNAME record in the record set. |
|metadata | Hash | false | The metadata attached to the record set. |
|mxRecords | [MxRecord](#mxrecord) | false | The list of MX records in the record set. |
|ptrRecords | [PtrRecord](#ptrrecord) | false | The list of PTR records in the record set. |
|soaRecord | [SoaRecord](#soarecord) | false | The SOA record in the record set. |
|srvRecords | [SrvRecord](#srvrecord) | false | The list of SRV records in the record set. |
|ttl | Integer | false | The TTL (time-to-live) of the records in the record set. |
|txtRecords | [TxtRecord](#txtrecord) | false | The list of TXT records in the record set. |
        
## AaaaRecord

An AAAA record.

```puppet
$azure_aaaa_record = {
  ipv6Address => "ipv6Address (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|ipv6Address | String | false | The IPv6 address of this AAAA record. |
        
## ARecord

An A record.

```puppet
$azure_a_record = {
  ipv4Address => "ipv4Address (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|ipv4Address | String | false | The IPv4 address of this A record. |
        
## CnameRecord

A CNAME record.

```puppet
$azure_cname_record = {
  cname => "cname (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|cname | String | false | The canonical name for this CNAME record. |
        
## MxRecord

An MX record.

```puppet
$azure_mx_record = {
  exchange => "exchange (optional)",
  preference => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|exchange | String | false | The domain name of the mail host for this MX record. |
|preference | Integer | false | The preference value for this MX record. |
        
## PtrRecord

A PTR record.

```puppet
$azure_ptr_record = {
  ptrdname => "ptrdname (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|ptrdname | String | false | The PTR target domain name for this PTR record. |
        
## SoaRecord

An SOA record.

```puppet
$azure_soa_record = {
  email => "email (optional)",
  expireTime => "1234 (optional)",
  host => "host (optional)",
  minimumTtl => "1234 (optional)",
  refreshTime => "1234 (optional)",
  retryTime => "1234 (optional)",
  serialNumber => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|email | String | false | The email contact for this SOA record. |
|expireTime | Integer | false | The expire time for this SOA record. |
|host | String | false | The domain name of the authoritative name server for this SOA record. |
|minimumTtl | Integer | false | The minimum value for this SOA record. By convention this is used to determine the negative caching duration. |
|refreshTime | Integer | false | The refresh value for this SOA record. |
|retryTime | Integer | false | The retry time for this SOA record. |
|serialNumber | Integer | false | The serial number for this SOA record. |
        
## SrvRecord

An SRV record.

```puppet
$azure_srv_record = {
  port => "1234 (optional)",
  priority => "1234 (optional)",
  target => "target (optional)",
  weight => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|port | Integer | false | The port value for this SRV record. |
|priority | Integer | false | The priority value for this SRV record. |
|target | String | false | The target domain name for this SRV record. |
|weight | Integer | false | The weight value for this SRV record. |
        
## TxtRecord

A TXT record.

```puppet
$azure_txt_record = {
  value => "value (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|value | Array | false | The text value of this TXT record. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the RecordSet

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/privateDnsZones/%{private_zone_name}/%{record_type}/%{relative_record_set_name}`|Put|Creates or updates a record set within a Private DNS zone.|RecordSets_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/privateDnsZones/%{private_zone_name}/%{record_type}/%{relative_record_set_name}`|Get|Gets a record set.|RecordSets_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/privateDnsZones/%{private_zone_name}/%{record_type}`|Get|Lists the record sets of a specified type in a Private DNS zone.|RecordSets_ListByType|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/privateDnsZones/%{private_zone_name}/%{record_type}/%{relative_record_set_name}`|Put|Creates or updates a record set within a Private DNS zone.|RecordSets_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/privateDnsZones/%{private_zone_name}/%{record_type}/%{relative_record_set_name}`|Delete|Deletes a record set from a Private DNS zone. This operation cannot be undone.|RecordSets_Delete|
