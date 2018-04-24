Document: "apimidentityprovider"
Path: "/root/specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2017-03-01/apimidentityprovider.json")

## IdentityProviderContract

```puppet
azure_identity_provider_contract {
  api_version => "api_version",
  id => "id (optional)",
  identity_provider_name => "identity_provider_name",
  if_match => "if_match",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_identity_provider_contract_properties
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
|identity_provider_name | String | true | Identity Provider Type identifier. |
|if_match | String | true | The entity state (Etag) version of the backend to delete. A value of '*' can be used for If-Match to unconditionally apply the operation. |
|name | String | false | Resource name. |
|parameters | Hash | true | Create parameters. |
|properties | [IdentityProviderContractProperties](#identityprovidercontractproperties) | false | Identity Provider contract properties. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | Resource type for API Management resource. |
        
## IdentityProviderContractProperties

```puppet
$azure_identity_provider_contract_properties = {
  allowedTenants => "allowedTenants (optional)",
  clientId => "clientId",
  clientSecret => "clientSecret",
  passwordResetPolicyName => "passwordResetPolicyName (optional)",
  profileEditingPolicyName => "profileEditingPolicyName (optional)",
  signinPolicyName => "signinPolicyName (optional)",
  signupPolicyName => "signupPolicyName (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|allowedTenants | Array | false | List of Allowed Tenants when configuring Azure Active Directory login. |
|clientId | String | true | Client Id of the Application in the external Identity Provider. It is App ID for Facebook login, Client ID for Google login, App ID for Microsoft. |
|clientSecret | String | true | Client secret of the Application in external Identity Provider, used to authenticate login request. For example, it is App Secret for Facebook login, API Key for Google login, Public Key for Microsoft. |
|passwordResetPolicyName | String | false | Password Reset Policy Name. Only applies to AAD B2C Identity Provider. |
|profileEditingPolicyName | String | false | Profile Editing Policy Name. Only applies to AAD B2C Identity Provider. |
|signinPolicyName | String | false | Signin Policy Name. Only applies to AAD B2C Identity Provider. |
|signupPolicyName | String | false | Signup Policy Name. Only applies to AAD B2C Identity Provider. |
|type | String | false | Identity Provider Type identifier. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the IdentityProviderContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/identityProviders/%{identity_provider_name}`|Put|Creates or Updates the IdentityProvider configuration.|IdentityProvider_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/identityProviders/%{identity_provider_name}`|Get|Gets the configuration details of the identity Provider configured in specified service instance.|IdentityProvider_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/identityProviders`|Get|Lists a collection of Identity Provider configured in the specified service instance.|IdentityProvider_ListByService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/identityProviders/%{identity_provider_name}`|Put|Creates or Updates the IdentityProvider configuration.|IdentityProvider_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/identityProviders/%{identity_provider_name}`|Delete|Deletes the specified identity provider configuration.|IdentityProvider_Delete|