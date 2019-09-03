Document: "frontdoor"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/frontdoor/resource-manager/Microsoft.Network/stable/2019-05-01/frontdoor.json")

## FrontendEndpoint

A frontend endpoint used for routing.

```puppet
azure_frontend_endpoint {
  api_version => "api_version",
  front_door_name => "front_door_name",
  frontend_endpoint_parameters => "frontendEndpointParameters",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_frontend_endpoint_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|front_door_name | String | true | Name of the Front Door which is globally unique. |
|frontend_endpoint_parameters | Hash | true | Frontend endpoint properties needed to create a new endpoint. |
|id | String | false | Resource ID. |
|name | String | false | Resource name. |
|properties | [FrontendEndpointProperties](#frontendendpointproperties) | false | Properties of the Frontend endpoint |
|resource_group_name | String | true | Name of the Resource group within the Azure subscription. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## FrontendEndpointProperties

The JSON object that contains the properties required to create a frontend endpoint.

```puppet
$azure_frontend_endpoint_properties = {
  customHttpsConfiguration => $azure_custom_https_configuration
  hostName => "hostName (optional)",
  resourceState => $azure_resource_state
  sessionAffinityEnabledState => "sessionAffinityEnabledState (optional)",
  sessionAffinityTtlSeconds => "1234 (optional)",
  webApplicationFirewallPolicyLink => "webApplicationFirewallPolicyLink (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|customHttpsConfiguration | [CustomHttpsConfiguration](#customhttpsconfiguration) | false | The configuration specifying how to enable HTTPS |
|hostName | String | false | The host name of the frontendEndpoint. Must be a domain name. |
|resourceState | [ResourceState](#resourcestate) | false | Resource status. |
|sessionAffinityEnabledState | String | false | Whether to allow session affinity on this host. Valid options are 'Enabled' or 'Disabled' |
|sessionAffinityTtlSeconds | Integer | false | UNUSED. This field will be ignored. The TTL to use in seconds for session affinity, if applicable. |
|webApplicationFirewallPolicyLink | Hash | false | Defines the Web Application Firewall policy for each host (if applicable) |
        
## CustomHttpsConfiguration

Https settings for a domain

```puppet
$azure_custom_https_configuration = {
  certificateSource => "certificateSource",
  frontDoorCertificateSourceParameters => $azure_front_door_certificate_source_parameters
  keyVaultCertificateSourceParameters => $azure_key_vault_certificate_source_parameters
  minimumTlsVersion => "minimumTlsVersion",
  protocolType => "protocolType",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|certificateSource | String | true | Defines the source of the SSL certificate |
|frontDoorCertificateSourceParameters | [FrontDoorCertificateSourceParameters](#frontdoorcertificatesourceparameters) | false | Parameters required for enabling SSL with Front Door-managed certificates (if certificateSource=FrontDoor) |
|keyVaultCertificateSourceParameters | [KeyVaultCertificateSourceParameters](#keyvaultcertificatesourceparameters) | false | KeyVault certificate source parameters (if certificateSource=AzureKeyVault) |
|minimumTlsVersion | String | true | The minimum TLS version required from the clients to establish an SSL handshake with Front Door. |
|protocolType | String | true | Defines the TLS extension protocol that is used for secure delivery |
        
## FrontDoorCertificateSourceParameters

Parameters required for enabling SSL with Front Door-managed certificates

```puppet
$azure_front_door_certificate_source_parameters = {
  certificateType => "certificateType (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|certificateType | String | false | Defines the type of the certificate used for secure connections to a frontendEndpoint |
        
## KeyVaultCertificateSourceParameters

Parameters required for bring-your-own-certification via Key Vault

```puppet
$azure_key_vault_certificate_source_parameters = {
  secretName => "secretName (optional)",
  secretVersion => "secretVersion (optional)",
  vault => "vault (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|secretName | String | false | The name of the Key Vault secret representing the full certificate PFX |
|secretVersion | String | false | The version of the Key Vault secret representing the full certificate PFX |
|vault | Hash | false | The Key Vault containing the SSL certificate |
        
## ResourceState



```puppet
$azure_resource_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the FrontendEndpoint

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/frontendEndpoints/%{frontend_endpoint_name}`|Put|Creates a new frontend endpoint with the specified host name within the specified Front Door.|FrontendEndpoints_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/frontendEndpoints/%{frontend_endpoint_name}`|Get|Gets a Frontend endpoint with the specified name within the specified Front Door.|FrontendEndpoints_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/frontendEndpoints`|Get|Lists all of the frontend endpoints within a Front Door.|FrontendEndpoints_ListByFrontDoor|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/frontendEndpoints/%{frontend_endpoint_name}`|Put|Creates a new frontend endpoint with the specified host name within the specified Front Door.|FrontendEndpoints_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/frontendEndpoints/%{frontend_endpoint_name}`|Delete|Deletes an existing frontend endpoint with the specified parameters.|FrontendEndpoints_Delete|
