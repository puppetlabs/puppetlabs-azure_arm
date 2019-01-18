Document: "apimauthorizationservers"


Path: "/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimauthorizationservers.json")

## AuthorizationServerContract

External OAuth authorization server settings.

```puppet
azure_authorization_server_contract {
  api_version => "api_version",
  authsid => "authsid",
  if_match => "if_match",
  parameters => "parameters",
  properties => $azure_authorization_server_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|authsid | String | true | Identifier of the authorization server. |
|if_match | String | true | ETag of the Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update. |
|parameters | Hash | true | Create or update parameters. |
|properties | [AuthorizationServerContractProperties](#authorizationservercontractproperties) | false | Properties of the External OAuth authorization server Contract. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## AuthorizationServerContractProperties

External OAuth authorization server settings Properties.

```puppet
$azure_authorization_server_contract_properties = {
  authorizationEndpoint => "authorizationEndpoint",
  authorizationMethods => "authorizationMethods (optional)",
  bearerTokenSendingMethods => "bearerTokenSendingMethods (optional)",
  clientAuthenticationMethod => "clientAuthenticationMethod (optional)",
  clientId => "clientId",
  clientRegistrationEndpoint => "clientRegistrationEndpoint",
  clientSecret => "clientSecret (optional)",
  defaultScope => "defaultScope (optional)",
  description => "description (optional)",
  displayName => "displayName",
  grantTypes => "grantTypes",
  resourceOwnerPassword => "resourceOwnerPassword (optional)",
  resourceOwnerUsername => "resourceOwnerUsername (optional)",
  supportState => "supportState (optional)",
  tokenBodyParameters => "tokenBodyParameters (optional)",
  tokenEndpoint => "tokenEndpoint (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|authorizationEndpoint | String | true | OAuth authorization endpoint. See http://tools.ietf.org/html/rfc6749#section-3.2. |
|authorizationMethods | Array | false | HTTP verbs supported by the authorization endpoint. GET must be always present. POST is optional. |
|bearerTokenSendingMethods | Array | false | Specifies the mechanism by which access token is passed to the API.  |
|clientAuthenticationMethod | Array | false | Method of authentication supported by the token endpoint of this authorization server. Possible values are Basic and/or Body. When Body is specified, client credentials and other parameters are passed within the request body in the application/x-www-form-urlencoded format. |
|clientId | String | true | Client or app id registered with this authorization server. |
|clientRegistrationEndpoint | String | true | Optional reference to a page where client or app registration for this authorization server is performed. Contains absolute URL to entity being referenced. |
|clientSecret | String | false | Client or app secret registered with this authorization server. |
|defaultScope | String | false | Access token scope that is going to be requested by default. Can be overridden at the API level. Should be provided in the form of a string containing space-delimited values. |
|description | String | false | Description of the authorization server. Can contain HTML formatting tags. |
|displayName | String | true | User-friendly authorization server name. |
|grantTypes | Array | true | Form of an authorization grant, which the client uses to request the access token. |
|resourceOwnerPassword | String | false | Can be optionally specified when resource owner password grant type is supported by this authorization server. Default resource owner password. |
|resourceOwnerUsername | String | false | Can be optionally specified when resource owner password grant type is supported by this authorization server. Default resource owner username. |
|supportState | Boolean | false | If true, authorization server will include state parameter from the authorization request to its response. Client may use state parameter to raise protocol security. |
|tokenBodyParameters | Array | false | Additional parameters required by the token endpoint of this authorization server represented as an array of JSON objects with name and value string properties, i.e. {'name' : 'name value', 'value': 'a value'}. |
|tokenEndpoint | String | false | OAuth token endpoint. Contains absolute URI to entity being referenced. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the AuthorizationServerContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/authorizationServers/%{authsid}`|Put|Creates new authorization server or updates an existing authorization server.|AuthorizationServer_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/authorizationServers/%{authsid}`|Get|Gets the details of the authorization server specified by its identifier.|AuthorizationServer_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/authorizationServers`|Get|Lists a collection of authorization servers defined within a service instance.|AuthorizationServer_ListByService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/authorizationServers/%{authsid}`|Put|Creates new authorization server or updates an existing authorization server.|AuthorizationServer_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/authorizationServers/%{authsid}`|Delete|Deletes specific authorization server instance.|AuthorizationServer_Delete|
