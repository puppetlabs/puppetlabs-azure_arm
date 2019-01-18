Document: "virtualWan"


Path: "/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/virtualWan.json")

## P2SVpnServerConfiguration

P2SVpnServerConfiguration Resource.

```puppet
azure_p2_s_vpn_server_configuration {
  api_version => "api_version",
  id => "id (optional)",
  name => "name (optional)",
  p2_s_vpn_server_configuration_parameters => "p2SVpnServerConfigurationParameters",
  properties => $azure_p2_s_vpn_server_configuration_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  virtual_wan_name => "virtual_wan_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|p2_s_vpn_server_configuration_parameters | Hash | true | Parameters supplied to create or Update a P2SVpnServerConfiguration. |
|properties | [P2SVpnServerConfigurationProperties](#p2svpnserverconfigurationproperties) | false |  |
|resource_group_name | String | true | The resource group name of the VirtualWan. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|virtual_wan_name | String | true | The name of the VirtualWan. |
        
## P2SVpnServerConfigurationProperties

Parameters for P2SVpnServerConfiguration

```puppet
$azure_p2_s_vpn_server_configuration_properties = {
  etag => "etag (optional)",
  name => "name (optional)",
  p2SVpnGateways => $azure_sub_resource
  p2SVpnServerConfigRadiusClientRootCertificates => $azure_p2_s_vpn_server_config_radius_client_root_certificate
  p2SVpnServerConfigRadiusServerRootCertificates => $azure_p2_s_vpn_server_config_radius_server_root_certificate
  p2SVpnServerConfigVpnClientRevokedCertificates => $azure_p2_s_vpn_server_config_vpn_client_revoked_certificate
  p2SVpnServerConfigVpnClientRootCertificates => $azure_p2_s_vpn_server_config_vpn_client_root_certificate
  radiusServerAddress => "radiusServerAddress (optional)",
  radiusServerSecret => "radiusServerSecret (optional)",
  vpnClientIpsecPolicies => $azure_ipsec_policy
  vpnProtocols => "vpnProtocols (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|name | String | false | The name of the P2SVpnServerConfiguration that is unique within a VirtualWan in a resource group. This name can be used to access the resource along with Paren VirtualWan resource name. |
|p2SVpnGateways | [SubResource](#subresource) | false |  |
|p2SVpnServerConfigRadiusClientRootCertificates | [P2SVpnServerConfigRadiusClientRootCertificate](#p2svpnserverconfigradiusclientrootcertificate) | false | Radius client root certificate of P2SVpnServerConfiguration. |
|p2SVpnServerConfigRadiusServerRootCertificates | [P2SVpnServerConfigRadiusServerRootCertificate](#p2svpnserverconfigradiusserverrootcertificate) | false | Radius Server root certificate of P2SVpnServerConfiguration. |
|p2SVpnServerConfigVpnClientRevokedCertificates | [P2SVpnServerConfigVpnClientRevokedCertificate](#p2svpnserverconfigvpnclientrevokedcertificate) | false | VPN client revoked certificate of P2SVpnServerConfiguration. |
|p2SVpnServerConfigVpnClientRootCertificates | [P2SVpnServerConfigVpnClientRootCertificate](#p2svpnserverconfigvpnclientrootcertificate) | false | VPN client root certificate of P2SVpnServerConfiguration. |
|radiusServerAddress | String | false | The radius server address property of the P2SVpnServerConfiguration resource for point to site client connection. |
|radiusServerSecret | String | false | The radius secret property of the P2SVpnServerConfiguration resource for for point to site client connection. |
|vpnClientIpsecPolicies | [IpsecPolicy](#ipsecpolicy) | false | VpnClientIpsecPolicies for P2SVpnServerConfiguration. |
|vpnProtocols | Array | false | vpnProtocols for the P2SVpnServerConfiguration. |
        
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
        
## P2SVpnServerConfigRadiusClientRootCertificate

Radius client root certificate of P2SVpnServerConfiguration.

```puppet
$azure_p2_s_vpn_server_config_radius_client_root_certificate = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_p2_s_vpn_server_config_radius_client_root_certificate_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [P2SVpnServerConfigRadiusClientRootCertificatePropertiesFormat](#p2svpnserverconfigradiusclientrootcertificatepropertiesformat) | false | Properties of the Radius client root certificate. |
        
## P2SVpnServerConfigRadiusClientRootCertificatePropertiesFormat

Properties of the Radius client root certificate of P2SVpnServerConfiguration.

```puppet
$azure_p2_s_vpn_server_config_radius_client_root_certificate_properties_format = {
  thumbprint => "thumbprint (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|thumbprint | String | false | The Radius client root certificate thumbprint. |
        
## P2SVpnServerConfigRadiusServerRootCertificate

Radius Server root certificate of P2SVpnServerConfiguration.

```puppet
$azure_p2_s_vpn_server_config_radius_server_root_certificate = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_p2_s_vpn_server_config_radius_server_root_certificate_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [P2SVpnServerConfigRadiusServerRootCertificatePropertiesFormat](#p2svpnserverconfigradiusserverrootcertificatepropertiesformat) | true | Properties of the P2SVpnServerConfiguration Radius Server root certificate. |
        
## P2SVpnServerConfigRadiusServerRootCertificatePropertiesFormat

Properties of Radius Server root certificate of P2SVpnServerConfiguration.

```puppet
$azure_p2_s_vpn_server_config_radius_server_root_certificate_properties_format = {
  publicCertData => "publicCertData",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|publicCertData | String | true | The certificate public data. |
        
## P2SVpnServerConfigVpnClientRevokedCertificate

VPN client revoked certificate of P2SVpnServerConfiguration.

```puppet
$azure_p2_s_vpn_server_config_vpn_client_revoked_certificate = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_p2_s_vpn_server_config_vpn_client_revoked_certificate_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [P2SVpnServerConfigVpnClientRevokedCertificatePropertiesFormat](#p2svpnserverconfigvpnclientrevokedcertificatepropertiesformat) | false | Properties of the vpn client revoked certificate. |
        
## P2SVpnServerConfigVpnClientRevokedCertificatePropertiesFormat

Properties of the revoked VPN client certificate of P2SVpnServerConfiguration.

```puppet
$azure_p2_s_vpn_server_config_vpn_client_revoked_certificate_properties_format = {
  thumbprint => "thumbprint (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|thumbprint | String | false | The revoked VPN client certificate thumbprint. |
        
## P2SVpnServerConfigVpnClientRootCertificate

VPN client root certificate of P2SVpnServerConfiguration.

```puppet
$azure_p2_s_vpn_server_config_vpn_client_root_certificate = {
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_p2_s_vpn_server_config_vpn_client_root_certificate_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [P2SVpnServerConfigVpnClientRootCertificatePropertiesFormat](#p2svpnserverconfigvpnclientrootcertificatepropertiesformat) | true | Properties of the P2SVpnServerConfiguration VPN client root certificate. |
        
## P2SVpnServerConfigVpnClientRootCertificatePropertiesFormat

Properties of VPN client root certificate of P2SVpnServerConfiguration.

```puppet
$azure_p2_s_vpn_server_config_vpn_client_root_certificate_properties_format = {
  publicCertData => "publicCertData",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|publicCertData | String | true | The certificate public data. |
        
## IpsecPolicy

An IPSec Policy configuration for a virtual network gateway connection

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



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the P2SVpnServerConfiguration

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualWans/%{virtual_wan_name}/p2sVpnServerConfigurations/%{p2_s_vpn_server_configuration_name}`|Put|Creates a P2SVpnServerConfiguration to associate with a VirtualWan if it doesn't exist else updates the existing P2SVpnServerConfiguration.|P2sVpnServerConfigurations_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualWans/%{virtual_wan_name}/p2sVpnServerConfigurations/%{p2_s_vpn_server_configuration_name}`|Get|Retrieves the details of a P2SVpnServerConfiguration.|P2sVpnServerConfigurations_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualWans/%{virtual_wan_name}/p2sVpnServerConfigurations`|Get|Retrieves all P2SVpnServerConfigurations for a particular VirtualWan.|P2sVpnServerConfigurations_ListByVirtualWan|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualWans/%{virtual_wan_name}/p2sVpnServerConfigurations/%{p2_s_vpn_server_configuration_name}`|Put|Creates a P2SVpnServerConfiguration to associate with a VirtualWan if it doesn't exist else updates the existing P2SVpnServerConfiguration.|P2sVpnServerConfigurations_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/virtualWans/%{virtual_wan_name}/p2sVpnServerConfigurations/%{p2_s_vpn_server_configuration_name}`|Delete|Deletes a P2SVpnServerConfiguration.|P2sVpnServerConfigurations_Delete|
