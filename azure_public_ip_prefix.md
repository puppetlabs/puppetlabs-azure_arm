Document: "publicIpPrefix"


Path: "/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/publicIpPrefix.json")

## PublicIPPrefix

Public IP prefix resource.

```puppet
azure_public_ip_prefix {
  api_version => "api_version",
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_public_ip_prefix_properties_format
  resource_group_name => "resource_group_name",
  sku => $azure_public_ip_prefix_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  zones => "zones (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|parameters | Hash | true | Parameters supplied to the create or update public IP prefix operation. |
|properties | [PublicIPPrefixPropertiesFormat](#publicipprefixpropertiesformat) | false | Public IP prefix properties. |
|resource_group_name | String | true | The name of the resource group. |
|sku | [PublicIPPrefixSku](#publicipprefixsku) | false | The public IP prefix SKU. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
|zones | Array | false | A list of availability zones denoting the IP allocated for the resource needs to come from. |
        
## PublicIPPrefixPropertiesFormat

Public IP prefix properties.

```puppet
$azure_public_ip_prefix_properties_format = {
  ipPrefix => "ipPrefix (optional)",
  ipTags => $azure_ip_tag
  prefixLength => "1234 (optional)",
  provisioningState => "provisioningState (optional)",
  publicIPAddresses => $azure_referenced_public_ip_address
  publicIPAddressVersion => "publicIPAddressVersion (optional)",
  resourceGuid => "resourceGuid (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|ipPrefix | String | false | The allocated Prefix |
|ipTags | [IpTag](#iptag) | false | The list of tags associated with the public IP prefix. |
|prefixLength | Integer | false | The Length of the Public IP Prefix. |
|provisioningState | String | false | The provisioning state of the Public IP prefix resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|publicIPAddresses | [ReferencedPublicIpAddress](#referencedpublicipaddress) | false | The list of all referenced PublicIPAddresses |
|publicIPAddressVersion | String | false | The public IP address version. Possible values are: 'IPv4' and 'IPv6'. |
|resourceGuid | String | false | The resource GUID property of the public IP prefix resource. |
        
## IpTag

Contains the IpTag associated with the object

```puppet
$azure_ip_tag = {
  ipTagType => "ipTagType (optional)",
  tag => "tag (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|ipTagType | String | false | Gets or sets the ipTag type: Example FirstPartyUsage. |
|tag | String | false | Gets or sets value of the IpTag associated with the public IP. Example SQL, Storage etc |
        
## ReferencedPublicIpAddress



```puppet
$azure_referenced_public_ip_address = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | The PublicIPAddress Reference |
        
## PublicIPPrefixSku

SKU of a public IP prefix

```puppet
$azure_public_ip_prefix_sku = {
  name => "name (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | Name of a public IP prefix SKU. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the PublicIPPrefix

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/publicIPPrefixes/%{public_ip_prefix_name}`|Put|Creates or updates a static or dynamic public IP prefix.|PublicIPPrefixes_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/publicIPPrefixes`|Get|Gets all the public IP prefixes in a subscription.|PublicIPPrefixes_ListAll|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/publicIPPrefixes/%{public_ip_prefix_name}`|Get|Gets the specified public IP prefix in a specified resource group.|PublicIPPrefixes_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/publicIPPrefixes`|Get|Gets all the public IP prefixes in a subscription.|PublicIPPrefixes_ListAll|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/publicIPPrefixes/%{public_ip_prefix_name}`|Put|Creates or updates a static or dynamic public IP prefix.|PublicIPPrefixes_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/publicIPPrefixes/%{public_ip_prefix_name}`|Delete|Deletes the specified public IP prefix.|PublicIPPrefixes_Delete|
