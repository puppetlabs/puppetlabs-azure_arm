Document: "apimopenidconnectproviders"
Path: "/root/specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2017-03-01/apimopenidconnectproviders.json")

## OpenidConnectProviderContract

```puppet
azure_openid_connect_provider_contract {
  api_version => "api_version",
  id => "id (optional)",
  if_match => "if_match",
  name => "name (optional)",
  opid => "opid",
  parameters => "parameters",
  properties => $azure_openid_connect_provider_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|id | String | false | Resource ID. |
|if_match | String | true | The entity state (Etag) version of the OpenID Connect Provider to delete. A value of '*' can be used for If-Match to unconditionally apply the operation. |
|name | String | false | Resource name. |
|opid | String | true | Identifier of the OpenID Connect Provider. |
|parameters | Hash | true | Create parameters. |
|properties | [OpenidConnectProviderContractProperties](#openidconnectprovidercontractproperties) | false | OpenId Connect Provider contract properties. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | Resource type for API Management resource. |
        
## OpenidConnectProviderContractProperties

```puppet
$azure_openid_connect_provider_contract_properties = {
  clientId => "clientId",
  clientSecret => "clientSecret (optional)",
  description => "description (optional)",
  displayName => "displayName",
  metadataEndpoint => "metadataEndpoint",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|clientId | String | true | Client ID of developer console which is the client application. |
|clientSecret | String | false | Client Secret of developer console which is the client application. |
|description | String | false | User-friendly description of OpenID Connect Provider. |
|displayName | String | true | User-friendly OpenID Connect Provider name. |
|metadataEndpoint | String | true | Metadata endpoint URI. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the OpenidConnectProviderContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/openidConnectProviders/%{opid}`|Put|Creates or updates the OpenID Connect Provider.|OpenIdConnectProvider_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/openidConnectProviders/%{opid}`|Get|Gets specific OpenID Connect Provider.|OpenIdConnectProvider_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/openidConnectProviders`|Get|Lists all OpenID Connect Providers.|OpenIdConnectProvider_ListByService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/openidConnectProviders/%{opid}`|Put|Creates or updates the OpenID Connect Provider.|OpenIdConnectProvider_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/openidConnectProviders/%{opid}`|Delete|Deletes specific OpenID Connect Provider of the API Management service instance.|OpenIdConnectProvider_Delete|