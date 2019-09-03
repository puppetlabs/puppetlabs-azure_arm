Document: "virtualWan"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/network/resource-manager/Microsoft.Network/stable/2019-06-01/virtualWan.json")

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
|properties | [VpnSiteProperties](#vpnsiteproperties) | false | Properties of the VPN site. |
|resource_group_name | String | true | The resource group name of the VpnSite. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
|vpn_site_parameters | Hash | true | Parameters supplied to create or update VpnSite. |
        
## VpnSiteProperties

Parameters for VpnSite.

```puppet
$azure_vpn_site_properties = {
  addressSpace => $azure_address_space
  bgpProperties => $azure_bgp_settings
  deviceProperties => $azure_device_properties
  ipAddress => "ipAddress (optional)",
  isSecuritySite => "isSecuritySite (optional)",
  provisioningState => $azure_provisioning_state
  siteKey => "siteKey (optional)",
  virtualWan => $azure_sub_resource
  vpnSiteLinks => $azure_vpn_site_link
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|addressSpace | [AddressSpace](#addressspace) | false | The AddressSpace that contains an array of IP address ranges. |
|bgpProperties | [BgpSettings](#bgpsettings) | false | The set of bgp properties. |
|deviceProperties | [DeviceProperties](#deviceproperties) | false | The device properties. |
|ipAddress | String | false | The ip-address for the vpn-site. |
|isSecuritySite | Boolean | false | IsSecuritySite flag. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | The provisioning state of the resource. |
|siteKey | String | false | The key for vpn-site that can be used for connections. |
|virtualWan | [SubResource](#subresource) | false | The VirtualWAN to which the vpnSite belongs. |
|vpnSiteLinks | [VpnSiteLink](#vpnsitelink) | false | List of all vpn site links |
        
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

BGP settings details.

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

The current provisioning state.

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
        
## VpnSiteLink

VpnSiteLink Resource.

```puppet
$azure_vpn_site_link = {
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_vpn_site_link_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [VpnSiteLinkProperties](#vpnsitelinkproperties) | false | Properties of the VPN site link. |
        
## VpnSiteLinkProperties

Parameters for VpnSite.

```puppet
$azure_vpn_site_link_properties = {
  bgpProperties => $azure_vpn_link_bgp_settings
  ipAddress => "ipAddress (optional)",
  linkProperties => $azure_vpn_link_provider_properties
  provisioningState => $azure_provisioning_state
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|bgpProperties | [VpnLinkBgpSettings](#vpnlinkbgpsettings) | false | The set of bgp properties. |
|ipAddress | String | false | The ip-address for the vpn-site-link. |
|linkProperties | [VpnLinkProviderProperties](#vpnlinkproviderproperties) | false | The link provider properties. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | The provisioning state of the resource. |
        
## VpnLinkBgpSettings

BGP settings details for a link.

```puppet
$azure_vpn_link_bgp_settings = {
  asn => "1234 (optional)",
  bgpPeeringAddress => "bgpPeeringAddress (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|asn | Integer | false | The BGP speaker's ASN. |
|bgpPeeringAddress | String | false | The BGP peering address and BGP identifier of this BGP speaker. |
        
## VpnLinkProviderProperties

List of properties of a link provider.

```puppet
$azure_vpn_link_provider_properties = {
  linkProviderName => "linkProviderName (optional)",
  linkSpeedInMbps => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|linkProviderName | String | false | Name of the link provider. |
|linkSpeedInMbps | Integer | false | Link speed. |
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the VpnSite

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/vpnSites/%{vpn_site_name}`|Put|Creates a VpnSite resource if it doesn't exist else updates the existing VpnSite.|VpnSites_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/vpnSites`|Get|Lists all the VpnSites in a subscription.|VpnSites_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/vpnSites/%{vpn_site_name}`|Get|Retrieves the details of a VPN site.|VpnSites_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/vpnSites`|Get|Lists all the VpnSites in a subscription.|VpnSites_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/vpnSites/%{vpn_site_name}`|Put|Creates a VpnSite resource if it doesn't exist else updates the existing VpnSite.|VpnSites_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/vpnSites/%{vpn_site_name}`|Delete|Deletes a VpnSite.|VpnSites_Delete|
