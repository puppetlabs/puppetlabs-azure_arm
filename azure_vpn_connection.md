Document: "virtualWan"


Path: "/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/virtualWan.json")

## VpnConnection

VpnConnection Resource.

```puppet
azure_vpn_connection {
  api_version => "api_version",
  connection_name => "connection_name",
  gateway_name => "gateway_name",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_vpn_connection_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  vpn_connection_parameters => "VpnConnectionParameters",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|connection_name | String | true | The name of the connection. |
|gateway_name | String | true | The name of the gateway. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [VpnConnectionProperties](#vpnconnectionproperties) | false |  |
|resource_group_name | String | true | The resource group name of the VpnGateway. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|vpn_connection_parameters | Hash | true | Parameters supplied to create or Update a VPN Connection. |
        
## VpnConnectionProperties

Parameters for VpnConnection

```puppet
$azure_vpn_connection_properties = {
  connectionBandwidth => "1234 (optional)",
  connectionStatus => $azure_vpn_connection_status
  enableBgp => "enableBgp (optional)",
  enableInternetSecurity => "enableInternetSecurity (optional)",
  enableRateLimiting => "enableRateLimiting (optional)",
  ipsecPolicies => $azure_ipsec_policy
  provisioningState => $azure_provisioning_state
  remoteVpnSite => $azure_sub_resource
  routingWeight => "1234 (optional)",
  sharedKey => "sharedKey (optional)",
  vpnConnectionProtocolType => $azure_connection_protocol
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|connectionBandwidth | Integer | false | Expected bandwidth in MBPS. |
|connectionStatus | [VpnConnectionStatus](#vpnconnectionstatus) | false | The connection status. |
|enableBgp | Boolean | false | EnableBgp flag |
|enableInternetSecurity | Boolean | false | Enable internet security |
|enableRateLimiting | Boolean | false | EnableBgp flag |
|ipsecPolicies | [IpsecPolicy](#ipsecpolicy) | false | The IPSec Policies to be considered by this connection. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | The provisioning state of the resource. |
|remoteVpnSite | [SubResource](#subresource) | false | Id of the connected vpn site. |
|routingWeight | Integer | false | routing weight for vpn connection. |
|sharedKey | String | false | SharedKey for the vpn connection. |
|vpnConnectionProtocolType | [ConnectionProtocol](#connectionprotocol) | false | Connection protocol used for this connection |
        
## VpnConnectionStatus

The current state of the vpn connection.

```puppet
$azure_vpn_connection_status = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
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
        
## ConnectionProtocol

Gateway connection protocol. Possible values are: 'IKEv2', 'IKEv1'.

```puppet
$azure_connection_protocol = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the VpnConnection

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/vpnGateways/%{gateway_name}/vpnConnections/%{connection_name}`|Put|Creates a vpn connection to a scalable vpn gateway if it doesn't exist else updates the existing connection.|VpnConnections_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/vpnGateways/%{gateway_name}/vpnConnections/%{connection_name}`|Get|Retrieves the details of a vpn connection.|VpnConnections_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/vpnGateways/%{gateway_name}/vpnConnections`|Get|Retrieves all vpn connections for a particular virtual wan vpn gateway.|VpnConnections_ListByVpnGateway|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/vpnGateways/%{gateway_name}/vpnConnections/%{connection_name}`|Put|Creates a vpn connection to a scalable vpn gateway if it doesn't exist else updates the existing connection.|VpnConnections_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/vpnGateways/%{gateway_name}/vpnConnections/%{connection_name}`|Delete|Deletes a vpn connection.|VpnConnections_Delete|
