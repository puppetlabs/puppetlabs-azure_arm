Document: "virtualWan"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/network/resource-manager/Microsoft.Network/stable/2018-04-01/virtualWan.json")

## VpnSite

VpnSite Resource.

```puppet
azure_vpn_site {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  properties => $azure_vpn_site_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  vpn_site_parameters => "VpnSiteParameters",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|properties | [VpnSiteProperties](#vpnsiteproperties) | false |  |
|resource_group_name | String | true | The resource group name of the VpnSite. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
|vpn_site_parameters | Hash | true | Parameters supplied to create or update VpnSite. |
        
## VpnSiteProperties

Parameters for VpnSite

```puppet
$azure_vpn_site_properties = {
  addressSpace => $azure_address_space
  bgpProperties => $azure_bgp_settings
  deviceProperties => $azure_device_properties
  ipAddress => "ipAddress (optional)",
  provisioningState => $azure_provisioning_state
  siteKey => "siteKey (optional)",
  virtualWAN => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|addressSpace | [AddressSpace](#addressspace) | false | The AddressSpace that contains an array of IP address ranges. |
|bgpProperties | [BgpSettings](#bgpsettings) | false | The set of bgp properties. |
|deviceProperties | [DeviceProperties](#deviceproperties) | false | The device properties |
|ipAddress | String | false | The ip-address for the vpn-site. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | The provisioning state of the resource. |
|siteKey | String | false | The key for vpn-site that can be used for connections. |
|virtualWAN | [SubResource](#subresource) | false | The VirtualWAN to which the vpnSite belongs |
        
## AddressSpace

AddressSpace contains an array of IP address ranges that can be used by subnets of the virtual network.

```puppet
$azure_address_space = {
  addressPrefixes => "addressPrefixes (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|addressPrefixes | Array | false | A list of address blocks reserved for this virtual network in CIDR notation. |
        
## BgpSettings

BGP settings details

```puppet
$azure_bgp_settings = {
  asn => "1234 (optional)",
  bgpPeeringAddress => "bgpPeeringAddress (optional)",
  peerWeight => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|asn | Integer | false | The BGP speaker's ASN. |
|bgpPeeringAddress | String | false | The BGP peering address and BGP identifier of this BGP speaker. |
|peerWeight | Integer | false | The weight added to routes learned from this BGP speaker. |
        
## DeviceProperties

List of properties of the device.

```puppet
$azure_device_properties = {
  deviceModel => "deviceModel (optional)",
  deviceVendor => "deviceVendor (optional)",
  linkSpeedInMbps => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|deviceModel | String | false | Model of the device. |
|deviceVendor | String | false | Name of the device Vendor. |
|linkSpeedInMbps | Integer | false | Link speed. |
        
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

Here is a list of endpoints that we use to create, read, update and delete the VpnSite

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/vpnSites/%{vpn_site_name}`|Put|Creates a VpnSite resource if it doesn't exist else updates the existing VpnSite.|VpnSites_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/vpnSites`|Get|Lists all the VpnSites in a subscription.|VpnSites_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/vpnSites/%{vpn_site_name}`|Get|Retrieves the details of a VPNsite.|VpnSites_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/vpnSites`|Get|Lists all the vpnSites in a resource group.|VpnSites_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/vpnSites/%{vpn_site_name}`|Put|Creates a VpnSite resource if it doesn't exist else updates the existing VpnSite.|VpnSites_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/vpnSites/%{vpn_site_name}`|Delete|Deletes a VpnSite.|VpnSites_Delete|
