Document: "virtualNetworkGateway"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/network/resource-manager/Microsoft.Network/stable/2019-06-01/virtualNetworkGateway.json")

## VirtualNetworkGateway

A common class for general resource information.

```puppet
azure_virtual_network_gateway {
  api_version => "api_version",
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_virtual_network_gateway_properties_format
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|etag | String | false | Gets a unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|parameters | Hash | true | Parameters supplied to create or update virtual network gateway operation. |
|properties | [VirtualNetworkGatewayPropertiesFormat](#virtualnetworkgatewaypropertiesformat) | true | Properties of the virtual network gateway. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
        
## VirtualNetworkGatewayPropertiesFormat

VirtualNetworkGateway properties.

```puppet
$azure_virtual_network_gateway_properties_format = {
  activeActive => "activeActive (optional)",
  bgpSettings => $azure_bgp_settings
  customRoutes => $azure_address_space
  enableBgp => "enableBgp (optional)",
  gatewayDefaultSite => $azure_sub_resource
  gatewayType => "gatewayType (optional)",
  ipConfigurations => $azure_virtual_network_gateway_ip_configuration
  resourceGuid => "resourceGuid (optional)",
  sku => $azure_virtual_network_gateway_sku
  vpnClientConfiguration => $azure_vpn_client_configuration
  vpnType => "vpnType (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|activeActive | Boolean | false | ActiveActive flag. |
|bgpSettings | [BgpSettings](#bgpsettings) | false | Virtual network gateway's BGP speaker settings. |
|customRoutes | [AddressSpace](#addressspace) | false | The reference of the address space resource which represents the custom routes address space specified by the customer for virtual network gateway and VpnClient. |
|enableBgp | Boolean | false | Whether BGP is enabled for this virtual network gateway or not. |
|gatewayDefaultSite | [SubResource](#subresource) | false | The reference of the LocalNetworkGateway resource which represents local network site having default routes. Assign Null value in case of removing existing default site setting. |
|gatewayType | String | false | The type of this virtual network gateway. |
|ipConfigurations | [VirtualNetworkGatewayIPConfiguration](#virtualnetworkgatewayipconfiguration) | false | IP configurations for virtual network gateway. |
|resourceGuid | String | false | The resource GUID property of the VirtualNetworkGateway resource. |
|sku | [VirtualNetworkGatewaySku](#virtualnetworkgatewaysku) | false | The reference of the VirtualNetworkGatewaySku resource which represents the SKU selected for Virtual network gateway. |
|vpnClientConfiguration | [VpnClientConfiguration](#vpnclientconfiguration) | false | The reference of the VpnClientConfiguration resource which represents the P2S VpnClient configurations. |
|vpnType | String | false | The type of this virtual network gateway. |
        
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
        
## VirtualNetworkGatewayIPConfiguration

IP configuration for virtual network gateway.

```puppet
$azure_virtual_network_gateway_ip_configuration = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_virtual_network_gateway_ip_configuration_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [VirtualNetworkGatewayIPConfigurationPropertiesFormat](#virtualnetworkgatewayipconfigurationpropertiesformat) | false | Properties of the virtual network gateway ip configuration. |
        
## VirtualNetworkGatewayIPConfigurationPropertiesFormat

Properties of VirtualNetworkGatewayIPConfiguration.

```puppet
$azure_virtual_network_gateway_ip_configuration_properties_format = {
  privateIPAllocationMethod => $azure_ip_allocation_method
  publicIPAddress => $azure_sub_resource
  subnet => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|privateIPAllocationMethod | [IPAllocationMethod](#ipallocationmethod) | false | The private IP address allocation method. |
|publicIPAddress | [SubResource](#subresource) | false | The reference of the public IP resource. |
|subnet | [SubResource](#subresource) | false | The reference of the subnet resource. |
        
## IPAllocationMethod

IP address allocation method.

```puppet
$azure_ip_allocation_method = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
        
## VirtualNetworkGatewaySku

VirtualNetworkGatewaySku details.

```puppet
$azure_virtual_network_gateway_sku = {
  capacity => "1234 (optional)",
  name => "name (optional)",
  tier => "tier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|capacity | Integer | false | The capacity. |
|name | String | false | Gateway SKU name. |
|tier | String | false | Gateway SKU tier. |
        
## VpnClientConfiguration

VpnClientConfiguration for P2S client.

```puppet
$azure_vpn_client_configuration = {
  aadAudience => "aadAudience (optional)",
  aadIssuer => "aadIssuer (optional)",
  aadTenant => "aadTenant (optional)",
  radiusServerAddress => "radiusServerAddress (optional)",
  radiusServerSecret => "radiusServerSecret (optional)",
  vpnClientAddressPool => $azure_address_space
  vpnClientIpsecPolicies => $azure_ipsec_policy
  vpnClientProtocols => "vpnClientProtocols (optional)",
  vpnClientRevokedCertificates => $azure_vpn_client_revoked_certificate
  vpnClientRootCertificates => $azure_vpn_client_root_certificate
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|aadAudience | String | false | The AADAudience property of the VirtualNetworkGateway resource for vpn client connection used for AAD authentication. |
|aadIssuer | String | false | The AADIssuer property of the VirtualNetworkGateway resource for vpn client connection used for AAD authentication. |
|aadTenant | String | false | The AADTenant property of the VirtualNetworkGateway resource for vpn client connection used for AAD authentication. |
|radiusServerAddress | String | false | The radius server address property of the VirtualNetworkGateway resource for vpn client connection. |
|radiusServerSecret | String | false | The radius secret property of the VirtualNetworkGateway resource for vpn client connection. |
|vpnClientAddressPool | [AddressSpace](#addressspace) | false | The reference of the address space resource which represents Address space for P2S VpnClient. |
|vpnClientIpsecPolicies | [IpsecPolicy](#ipsecpolicy) | false | VpnClientIpsecPolicies for virtual network gateway P2S client. |
|vpnClientProtocols | Array | false | VpnClientProtocols for Virtual network gateway. |
|vpnClientRevokedCertificates | [VpnClientRevokedCertificate](#vpnclientrevokedcertificate) | false | VpnClientRevokedCertificate for Virtual network gateway. |
|vpnClientRootCertificates | [VpnClientRootCertificate](#vpnclientrootcertificate) | false | VpnClientRootCertificate for virtual network gateway. |
        
        
## IpsecPolicy

An IPSec Policy configuration for a virtual network gateway connection.

```puppet
$azure_ipsec_policy = {
  dhGroup => $azure_dh_group
  ikeEncryption => $azure_ike_encryption
  ikeIntegrity => $azure_ike_integrity
  ipsecEncryption => $azure_ipsec_encryption
  ipsecIntegrity => $azure_ipsec_integrity
  pfsGroup => $azure_pfs_group
  saDataSizeKilobytes => "1234",
  saLifeTimeSeconds => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dhGroup | [DhGroup](#dhgroup) | true | The DH Group used in IKE Phase 1 for initial SA. |
|ikeEncryption | [IkeEncryption](#ikeencryption) | true | The IKE encryption algorithm (IKE phase 2). |
|ikeIntegrity | [IkeIntegrity](#ikeintegrity) | true | The IKE integrity algorithm (IKE phase 2). |
|ipsecEncryption | [IpsecEncryption](#ipsecencryption) | true | The IPSec encryption algorithm (IKE phase 1). |
|ipsecIntegrity | [IpsecIntegrity](#ipsecintegrity) | true | The IPSec integrity algorithm (IKE phase 1). |
|pfsGroup | [PfsGroup](#pfsgroup) | true | The Pfs Group used in IKE Phase 2 for new child SA. |
|saDataSizeKilobytes | Integer | true | The IPSec Security Association (also called Quick Mode or Phase 2 SA) payload size in KB for a site to site VPN tunnel. |
|saLifeTimeSeconds | Integer | true | The IPSec Security Association (also called Quick Mode or Phase 2 SA) lifetime in seconds for a site to site VPN tunnel. |
        
## DhGroup

The DH Groups used in IKE Phase 1 for initial SA.

```puppet
$azure_dh_group = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## IkeEncryption

The IKE encryption algorithm (IKE phase 2).

```puppet
$azure_ike_encryption = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## IkeIntegrity

The IKE integrity algorithm (IKE phase 2).

```puppet
$azure_ike_integrity = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## IpsecEncryption

The IPSec encryption algorithm (IKE phase 1).

```puppet
$azure_ipsec_encryption = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## IpsecIntegrity

The IPSec integrity algorithm (IKE phase 1).

```puppet
$azure_ipsec_integrity = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## PfsGroup

The Pfs Groups used in IKE Phase 2 for new child SA.

```puppet
$azure_pfs_group = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## VpnClientRevokedCertificate

VPN client revoked certificate of virtual network gateway.

```puppet
$azure_vpn_client_revoked_certificate = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_vpn_client_revoked_certificate_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [VpnClientRevokedCertificatePropertiesFormat](#vpnclientrevokedcertificatepropertiesformat) | false | Properties of the vpn client revoked certificate. |
        
## VpnClientRevokedCertificatePropertiesFormat

Properties of the revoked VPN client certificate of virtual network gateway.

```puppet
$azure_vpn_client_revoked_certificate_properties_format = {
  thumbprint => "thumbprint (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|thumbprint | String | false | The revoked VPN client certificate thumbprint. |
        
## VpnClientRootCertificate

VPN client root certificate of virtual network gateway.

```puppet
$azure_vpn_client_root_certificate = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_vpn_client_root_certificate_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [VpnClientRootCertificatePropertiesFormat](#vpnclientrootcertificatepropertiesformat) | true | Properties of the vpn client root certificate. |
        
## VpnClientRootCertificatePropertiesFormat

Properties of SSL certificates of application gateway.

```puppet
$azure_vpn_client_root_certificate_properties_format = {
  publicCertData => "publicCertData",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|publicCertData | String | true | The certificate public data. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the VirtualNetworkGateway

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualNetworkGateways/%{virtual_network_gateway_name}`|Put|Creates or updates a virtual network gateway in the specified resource group.|VirtualNetworkGateways_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualNetworkGateways/%{virtual_network_gateway_name}`|Get|Gets the specified virtual network gateway by resource group.|VirtualNetworkGateways_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualNetworkGateways`|Get|Gets all virtual network gateways by resource group.|VirtualNetworkGateways_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualNetworkGateways/%{virtual_network_gateway_name}`|Put|Creates or updates a virtual network gateway in the specified resource group.|VirtualNetworkGateways_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualNetworkGateways/%{virtual_network_gateway_name}`|Delete|Deletes the specified virtual network gateway.|VirtualNetworkGateways_Delete|
