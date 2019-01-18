Document: "dns"


Path: "/tmp/azure-rest-api-specs/specification/dns/resource-manager/Microsoft.Network/stable/2018-05-01/dns.json")

## RecordSet

Describes a DNS record set (a collection of DNS records with the same name and type).

```puppet
azure_record_set {
  api_version => "api_version",
  etag => "etag (optional)",
  parameters => "parameters",
  properties => $azure_record_set_properties
  record_type => "record_type",
  relative_record_set_name => "relative_record_set_name",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  zone_name => "zone_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Specifies the API version. |
|etag | String | false | The etag of the record set. |
|parameters | Hash | true | Parameters supplied to the CreateOrUpdate operation. |
|properties | [RecordSetProperties](#recordsetproperties) | false | The properties of the record set. |
|record_type | String | true | The type of DNS record in this record set. Record sets of type SOA can be updated but not created (they are created when the DNS zone is created). |
|relative_record_set_name | String | true | The name of the record set, relative to the name of the zone. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Specifies the Azure subscription ID, which uniquely identifies the Microsoft Azure subscription. |
|zone_name | String | true | The name of the DNS zone (without a terminating dot). |
        
## RecordSetProperties

Represents the properties of the records in the record set.

```puppet
$azure_record_set_properties = {
  AAAARecords => $azure_aaaa_record
  ARecords => $azure_a_record
  caaRecords => $azure_caa_record
  CNAMERecord => $azure_cname_record
  metadata => "metadata (optional)",
  MXRecords => $azure_mx_record
  NSRecords => $azure_ns_record
  PTRRecords => $azure_ptr_record
  SOARecord => $azure_soa_record
  SRVRecords => $azure_srv_record
  targetResource => $azure_sub_resource
  TTL => "1234 (optional)",
  TXTRecords => $azure_txt_record
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|AAAARecords | [AaaaRecord](#aaaarecord) | false | The list of AAAA records in the record set. |
|ARecords | [ARecord](#arecord) | false | The list of A records in the record set. |
|caaRecords | [CaaRecord](#caarecord) | false | The list of CAA records in the record set. |
|CNAMERecord | [CnameRecord](#cnamerecord) | false | The CNAME record in the  record set. |
|metadata | Hash | false | The metadata attached to the record set. |
|MXRecords | [MxRecord](#mxrecord) | false | The list of MX records in the record set. |
|NSRecords | [NsRecord](#nsrecord) | false | The list of NS records in the record set. |
|PTRRecords | [PtrRecord](#ptrrecord) | false | The list of PTR records in the record set. |
|SOARecord | [SoaRecord](#soarecord) | false | The SOA record in the record set. |
|SRVRecords | [SrvRecord](#srvrecord) | false | The list of SRV records in the record set. |
|targetResource | [SubResource](#subresource) | false | A reference to an azure resource from where the dns resource value is taken. |
|TTL | Integer | false | The TTL (time-to-live) of the records in the record set. |
|TXTRecords | [TxtRecord](#txtrecord) | false | The list of TXT records in the record set. |
        
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
        
## CaaRecord

A CAA record.

```puppet
$azure_caa_record = {
  flags => "1234 (optional)",
  tag => "tag (optional)",
  value => "value (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|flags | Integer | false | The flags for this CAA record as an integer between 0 and 255. |
|tag | String | false | The tag for this CAA record. |
|value | String | false | The value for this CAA record. |
        
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
        
## NsRecord

An NS record.

```puppet
$azure_ns_record = {
  nsdname => "nsdname (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|nsdname | String | false | The name server name for this NS record. |
        
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
  minimumTTL => "1234 (optional)",
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
|minimumTTL | Integer | false | The minimum value for this SOA record. By convention this is used to determine the negative caching duration. |
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
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/dnsZones/%{zone_name}/%{record_type}/%{relative_record_set_name}`|Put|Creates or updates a record set within a DNS zone.|RecordSets_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/dnsZones/%{zone_name}/%{record_type}/%{relative_record_set_name}`|Get|Gets a record set.|RecordSets_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/dnsZones/%{zone_name}/%{record_type}`|Get|Lists the record sets of a specified type in a DNS zone.|RecordSets_ListByType|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/dnsZones/%{zone_name}/%{record_type}/%{relative_record_set_name}`|Put|Creates or updates a record set within a DNS zone.|RecordSets_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/dnsZones/%{zone_name}/%{record_type}/%{relative_record_set_name}`|Delete|Deletes a record set from a DNS zone. This operation cannot be undone.|RecordSets_Delete|
