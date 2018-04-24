Document: "virtualNetworkGateway"
Path: "/root/specs/specification/network/resource-manager/Microsoft.Network/stable/2018-02-01/virtualNetworkGateway.json")

## VirtualNetworkGatewayConnection

```puppet
azure_virtual_network_gateway_connection {
  api_version => "api_version",
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_virtual_network_gateway_connection_properties_format
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|etag | String | false | Gets a unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|name | String | false | Resource name. |
|parameters | Hash | true | Parameters supplied to the create or update virtual network gateway connection operation. |
|properties | [VirtualNetworkGatewayConnectionPropertiesFormat](#virtualnetworkgatewayconnectionpropertiesformat) | true | Properties of the virtual network gateway connection. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
|type | String | false | Resource type. |
        
## VirtualNetworkGatewayConnectionPropertiesFormat

```puppet
$azure_virtual_network_gateway_connection_properties_format = {
  authorizationKey => "authorizationKey (optional)",
  connectionStatus => "connectionStatus (optional)",
  connectionType => "connectionType",
  egressBytesTransferred => "1234 (optional)",
  enableBgp => "enableBgp (optional)",
  ingressBytesTransferred => "1234 (optional)",
  ipsecPolicies => $azure_ipsec_policy
  localNetworkGateway2 => $azure_local_network_gateway
  peer => $azure_sub_resource
  provisioningState => "provisioningState (optional)",
  resourceGuid => "resourceGuid (optional)",
  routingWeight => "1234 (optional)",
  sharedKey => "sharedKey (optional)",
  tunnelConnectionStatus => $azure_tunnel_connection_health
  usePolicyBasedTrafficSelectors => "usePolicyBasedTrafficSelectors (optional)",
  virtualNetworkGateway1 => $azure_virtual_network_gateway
  virtualNetworkGateway2 => $azure_virtual_network_gateway
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|authorizationKey | String | false | The authorizationKey. |
|connectionStatus | String | false | Virtual network Gateway connection status. Possible values are 'Unknown', 'Connecting', 'Connected' and 'NotConnected'. |
|connectionType | String | true | Gateway connection type. Possible values are: 'Ipsec','Vnet2Vnet','ExpressRoute', and 'VPNClient. |
|egressBytesTransferred | Integer | false | The egress bytes transferred in this connection. |
|enableBgp | Boolean | false | EnableBgp flag |
|ingressBytesTransferred | Integer | false | The ingress bytes transferred in this connection. |
|ipsecPolicies | [IpsecPolicy](#ipsecpolicy) | false | The IPSec Policies to be considered by this connection. |
|localNetworkGateway2 | [LocalNetworkGateway](#localnetworkgateway) | false | The reference to local network gateway resource. |
|peer | [SubResource](#subresource) | false | The reference to peerings resource. |
|provisioningState | String | false | The provisioning state of the VirtualNetworkGatewayConnection resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|resourceGuid | String | false | The resource GUID property of the VirtualNetworkGatewayConnection resource. |
|routingWeight | Integer | false | The routing weight. |
|sharedKey | String | false | The IPSec shared key. |
|tunnelConnectionStatus | [TunnelConnectionHealth](#tunnelconnectionhealth) | false | Collection of all tunnels' connection health status. |
|usePolicyBasedTrafficSelectors | Boolean | false | Enable policy-based traffic selectors. |
|virtualNetworkGateway1 | [VirtualNetworkGateway](#virtualnetworkgateway) | true | The reference to virtual network gateway resource. |
|virtualNetworkGateway2 | [VirtualNetworkGateway](#virtualnetworkgateway) | false | The reference to virtual network gateway resource. |
        
## IpsecPolicy

```puppet
$azure_ipsec_policy = {
  dhGroup => "dhGroup",
  ikeEncryption => "ikeEncryption",
  ikeIntegrity => "ikeIntegrity",
  ipsecEncryption => "ipsecEncryption",
  ipsecIntegrity => "ipsecIntegrity",
  pfsGroup => "pfsGroup",
  saDataSizeKilobytes => "1234",
  saLifeTimeSeconds => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dhGroup | String | true | The DH Groups used in IKE Phase 1 for initial SA. |
|ikeEncryption | String | true | The IKE encryption algorithm (IKE phase 2). |
|ikeIntegrity | String | true | The IKE integrity algorithm (IKE phase 2). |
|ipsecEncryption | String | true | The IPSec encryption algorithm (IKE phase 1). |
|ipsecIntegrity | String | true | The IPSec integrity algorithm (IKE phase 1). |
|pfsGroup | String | true | The Pfs Groups used in IKE Phase 2 for new child SA. |
|saDataSizeKilobytes | Integer | true | The IPSec Security Association (also called Quick Mode or Phase 2 SA) payload size in KB for a site to site VPN tunnel. |
|saLifeTimeSeconds | Integer | true | The IPSec Security Association (also called Quick Mode or Phase 2 SA) lifetime in seconds for a site to site VPN tunnel. |
        
## LocalNetworkGateway

```puppet
$azure_local_network_gateway = {
  api-version => "api-version",
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_local_network_gateway_properties_format
  resourceGroupName => "resourceGroupName",
  subscriptionId => "subscriptionId",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api-version | String | true | Client API version. |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|name | String | false | Resource name. |
|parameters | Hash | true | Parameters supplied to the create or update local network gateway operation. |
|properties | [LocalNetworkGatewayPropertiesFormat](#localnetworkgatewaypropertiesformat) | true | Properties of the local network gateway. |
|resourceGroupName | String | true | The name of the resource group. |
|subscriptionId | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
|type | String | false | Resource type. |
        
## LocalNetworkGatewayPropertiesFormat

```puppet
$azure_local_network_gateway_properties_format = {
  bgpSettings => $azure_bgp_settings
  gatewayIpAddress => "gatewayIpAddress (optional)",
  localNetworkAddressSpace => $azure_address_space
  provisioningState => "provisioningState (optional)",
  resourceGuid => "resourceGuid (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|bgpSettings | [BgpSettings](#bgpsettings) | false | Local network gateway's BGP speaker settings. |
|gatewayIpAddress | String | false | IP address of local network gateway. |
|localNetworkAddressSpace | [AddressSpace](#addressspace) | false | Local network site address space. |
|provisioningState | String | false | The provisioning state of the LocalNetworkGateway resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|resourceGuid | String | false | The resource GUID property of the LocalNetworkGateway resource. |
        
## BgpSettings

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

```puppet
$azure_address_space = {
  addressPrefixes => "addressPrefixes (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|addressPrefixes | Array | false | A list of address blocks reserved for this virtual network in CIDR notation. |
        
## SubResource

```puppet
$azure_sub_resource = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
        
## TunnelConnectionHealth

```puppet
$azure_tunnel_connection_health = {
  connectionStatus => "connectionStatus (optional)",
  egressBytesTransferred => "1234 (optional)",
  ingressBytesTransferred => "1234 (optional)",
  lastConnectionEstablishedUtcTime => "lastConnectionEstablishedUtcTime (optional)",
  tunnel => "tunnel (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|connectionStatus | String | false | Virtual network Gateway connection status |
|egressBytesTransferred | Integer | false | The Egress Bytes Transferred in this connection |
|ingressBytesTransferred | Integer | false | The Ingress Bytes Transferred in this connection |
|lastConnectionEstablishedUtcTime | String | false | The time at which connection was established in Utc format. |
|tunnel | String | false | Tunnel name. |
        
## VirtualNetworkGateway

```puppet
$azure_virtual_network_gateway = {
  api-version => "api-version",
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_virtual_network_gateway_properties_format
  resourceGroupName => "resourceGroupName",
  subscriptionId => "subscriptionId",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api-version | String | true | Client API version. |
|etag | String | false | Gets a unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|name | String | false | Resource name. |
|parameters | Hash | true | Parameters supplied to create or update virtual network gateway operation. |
|properties | [VirtualNetworkGatewayPropertiesFormat](#virtualnetworkgatewaypropertiesformat) | true | Properties of the virtual network gateway. |
|resourceGroupName | String | true | The name of the resource group. |
|subscriptionId | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
|type | String | false | Resource type. |
        
## VirtualNetworkGatewayPropertiesFormat

```puppet
$azure_virtual_network_gateway_properties_format = {
  activeActive => "activeActive (optional)",
  bgpSettings => $azure_bgp_settings
  enableBgp => "enableBgp (optional)",
  gatewayDefaultSite => $azure_sub_resource
  gatewayType => "gatewayType (optional)",
  ipConfigurations => $azure_virtual_network_gateway_ip_configuration
  provisioningState => "provisioningState (optional)",
  resourceGuid => "resourceGuid (optional)",
  sku => $azure_virtual_network_gateway_sku
  vpnClientConfiguration => $azure_vpn_client_configuration
  vpnType => "vpnType (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|activeActive | Boolean | false | ActiveActive flag |
|bgpSettings | [BgpSettings](#bgpsettings) | false | Virtual network gateway's BGP speaker settings. |
|enableBgp | Boolean | false | Whether BGP is enabled for this virtual network gateway or not. |
|gatewayDefaultSite | [SubResource](#subresource) | false | The reference of the LocalNetworkGateway resource which represents local network site having default routes. Assign Null value in case of removing existing default site setting. |
|gatewayType | String | false | The type of this virtual network gateway. Possible values are: 'Vpn' and 'ExpressRoute'. |
|ipConfigurations | [VirtualNetworkGatewayIPConfiguration](#virtualnetworkgatewayipconfiguration) | false | IP configurations for virtual network gateway. |
|provisioningState | String | false | The provisioning state of the VirtualNetworkGateway resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|resourceGuid | String | false | The resource GUID property of the VirtualNetworkGateway resource. |
|sku | [VirtualNetworkGatewaySku](#virtualnetworkgatewaysku) | false | The reference of the VirtualNetworkGatewaySku resource which represents the SKU selected for Virtual network gateway. |
|vpnClientConfiguration | [VpnClientConfiguration](#vpnclientconfiguration) | false | The reference of the VpnClientConfiguration resource which represents the P2S VpnClient configurations. |
|vpnType | String | false | The type of this virtual network gateway. Possible values are: 'PolicyBased' and 'RouteBased'. |
        
        
        
## VirtualNetworkGatewayIPConfiguration

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

```puppet
$azure_virtual_network_gateway_ip_configuration_properties_format = {
  privateIPAllocationMethod => "privateIPAllocationMethod (optional)",
  provisioningState => "provisioningState (optional)",
  publicIPAddress => $azure_sub_resource
  subnet => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|privateIPAllocationMethod | String | false | The private IP allocation method. Possible values are: 'Static' and 'Dynamic'. |
|provisioningState | String | false | The provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|publicIPAddress | [SubResource](#subresource) | false | The reference of the public IP resource. |
|subnet | [SubResource](#subresource) | false | The reference of the subnet resource. |
        
        
        
## VirtualNetworkGatewaySku

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

```puppet
$azure_vpn_client_configuration = {
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
|radiusServerAddress | String | false | The radius server address property of the VirtualNetworkGateway resource for vpn client connection. |
|radiusServerSecret | String | false | The radius secret property of the VirtualNetworkGateway resource for vpn client connection. |
|vpnClientAddressPool | [AddressSpace](#addressspace) | false | The reference of the address space resource which represents Address space for P2S VpnClient. |
|vpnClientIpsecPolicies | [IpsecPolicy](#ipsecpolicy) | false | VpnClientIpsecPolicies for virtual network gateway P2S client. |
|vpnClientProtocols | Array | false | VpnClientProtocols for Virtual network gateway. |
|vpnClientRevokedCertificates | [VpnClientRevokedCertificate](#vpnclientrevokedcertificate) | false | VpnClientRevokedCertificate for Virtual network gateway. |
|vpnClientRootCertificates | [VpnClientRootCertificate](#vpnclientrootcertificate) | false | VpnClientRootCertificate for virtual network gateway. |
        
        
        
## VpnClientRevokedCertificate

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

```puppet
$azure_vpn_client_revoked_certificate_properties_format = {
  provisioningState => "provisioningState (optional)",
  thumbprint => "thumbprint (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|provisioningState | String | false | The provisioning state of the VPN client revoked certificate resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|thumbprint | String | false | The revoked VPN client certificate thumbprint. |
        
## VpnClientRootCertificate

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

```puppet
$azure_vpn_client_root_certificate_properties_format = {
  provisioningState => "provisioningState (optional)",
  publicCertData => "publicCertData",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|provisioningState | String | false | The provisioning state of the VPN client root certificate resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|publicCertData | String | true | The certificate public data. |
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the VirtualNetworkGatewayConnection

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/connections/%{virtual_network_gateway_connection_name}`|Put|Creates or updates a virtual network gateway connection in the specified resource group.|VirtualNetworkGatewayConnections_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/connections/%{virtual_network_gateway_connection_name}`|Get|Gets the specified virtual network gateway connection by resource group.|VirtualNetworkGatewayConnections_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/connections`|Get|The List VirtualNetworkGatewayConnections operation retrieves all the virtual network gateways connections created.|VirtualNetworkGatewayConnections_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/connections/%{virtual_network_gateway_connection_name}`|Put|Creates or updates a virtual network gateway connection in the specified resource group.|VirtualNetworkGatewayConnections_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/connections/%{virtual_network_gateway_connection_name}`|Delete|Deletes the specified virtual network Gateway connection.|VirtualNetworkGatewayConnections_Delete|