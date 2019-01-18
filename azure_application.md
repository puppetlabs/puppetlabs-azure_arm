Document: "graphrbac"


Path: "/tmp/azure-rest-api-specs/specification/graphrbac/data-plane/Microsoft.GraphRbac/stable/1.6/graphrbac.json")

## Application

Active Directory application information.

```puppet
azure_application {
  api_version => "api_version",
  app_id => "app_id (optional)",
  app_permissions => "appPermissions (optional)",
  app_roles => $azure_app_role
  available_to_other_tenants => "availableToOtherTenants (optional)",
  display_name => "display_name (optional)",
  homepage => "homepage (optional)",
  identifier_uris => "identifierUris (optional)",
  key_credentials => $azure_key_credential
  oauth2_allow_implicit_flow => "oauth2AllowImplicitFlow (optional)",
  parameters => "parameters",
  password_credentials => $azure_password_credential
  reply_urls => "replyUrls (optional)",
  required_resource_access => $azure_required_resource_access
  tenant_id => "tenant_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|app_id | String | false | The application ID. |
|app_permissions | Array | false | The application permissions. |
|app_roles | [AppRole](#approle) | false | The collection of application roles that an application may declare. These roles can be assigned to users, groups or service principals. |
|available_to_other_tenants | Boolean | false | Whether the application is be available to other tenants. |
|display_name | String | false | The display name of the application. |
|homepage | String | false | The home page of the application. |
|identifier_uris | Array | false | A collection of URIs for the application. |
|key_credentials | [KeyCredential](#keycredential) | false | A collection of KeyCredential objects. |
|oauth2_allow_implicit_flow | Boolean | false | Whether to allow implicit grant flow for OAuth2 |
|parameters | Hash | true | The parameters for creating an application. |
|password_credentials | [PasswordCredential](#passwordcredential) | false | A collection of PasswordCredential objects |
|reply_urls | Array | false | A collection of reply URLs for the application. |
|required_resource_access | [RequiredResourceAccess](#requiredresourceaccess) | false | Specifies resources that this application requires access to and the set of OAuth permission scopes and application roles that it needs under each of those resources. This pre-configuration of required resource access drives the consent experience. |
|tenant_id | String | true | The tenant ID. |
        
## AppRole



```puppet
$azure_app_role = {
  allowedMemberTypes => "allowedMemberTypes (optional)",
  description => "description (optional)",
  displayName => "displayName (optional)",
  id => "id (optional)",
  isEnabled => "isEnabled (optional)",
  value => "value (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|allowedMemberTypes | Array | false | Specifies whether this app role definition can be assigned to users and groups by setting to 'User', or to other applications (that are accessing this application in daemon service scenarios) by setting to 'Application', or to both.  |
|description | String | false | Permission help text that appears in the admin app assignment and consent experiences. |
|displayName | String | false | Display name for the permission that appears in the admin consent and app assignment experiences. |
|id | String | false | Unique role identifier inside the appRoles collection. |
|isEnabled | Boolean | false | When creating or updating a role definition, this must be set to true (which is the default). To delete a role, this must first be set to false. At that point, in a subsequent call, this role may be removed. |
|value | String | false | Specifies the value of the roles claim that the application should expect in the authentication and access tokens. |
        
## KeyCredential

Active Directory Key Credential information.

```puppet
$azure_key_credential = {
  customKeyIdentifier => "customKeyIdentifier (optional)",
  endDate => "endDate (optional)",
  keyId => "keyId (optional)",
  startDate => "startDate (optional)",
  type => "type (optional)",
  usage => "usage (optional)",
  value => "value (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|customKeyIdentifier | String | false | Custom Key Identifier |
|endDate | String | false | End date. |
|keyId | String | false | Key ID. |
|startDate | String | false | Start date. |
|type | String | false | Type. Acceptable values are 'AsymmetricX509Cert' and 'Symmetric'. |
|usage | String | false | Usage. Acceptable values are 'Verify' and 'Sign'. |
|value | String | false | Key value. |
        
## PasswordCredential

Active Directory Password Credential information.

```puppet
$azure_password_credential = {
  customKeyIdentifier => "customKeyIdentifier (optional)",
  endDate => "endDate (optional)",
  keyId => "keyId (optional)",
  startDate => "startDate (optional)",
  value => "value (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|customKeyIdentifier | String | false | Custom Key Identifier |
|endDate | String | false | End date. |
|keyId | String | false | Key ID. |
|startDate | String | false | Start date. |
|value | String | false | Key value. |
        
## RequiredResourceAccess

Specifies the set of OAuth 2.0 permission scopes and app roles under the specified resource that an application requires access to. The specified OAuth 2.0 permission scopes may be requested by client applications (through the requiredResourceAccess collection) when calling a resource application. The requiredResourceAccess property of the Application entity is a collection of RequiredResourceAccess.

```puppet
$azure_required_resource_access = {
  resourceAccess => $azure_resource_access
  resourceAppId => "resourceAppId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|resourceAccess | [ResourceAccess](#resourceaccess) | true | The list of OAuth2.0 permission scopes and app roles that the application requires from the specified resource. |
|resourceAppId | String | false | The unique identifier for the resource that the application requires access to. This should be equal to the appId declared on the target resource application. |
        
## ResourceAccess

Specifies an OAuth 2.0 permission scope or an app role that an application requires. The resourceAccess property of the RequiredResourceAccess type is a collection of ResourceAccess.

```puppet
$azure_resource_access = {
  id => "id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | true | The unique identifier for one of the OAuth2Permission or AppRole instances that the resource application exposes. |
|type | String | false | Specifies whether the id property references an OAuth2Permission or an AppRole. Possible values are 'scope' or 'role'. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Application

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/%{tenant_id}/applications`|Post|Create a new application.|Applications_Create|
|List - list all|``||||
|List - get one|`/%{tenant_id}/applications/%{application_object_id}`|Get|Get an application by object ID.|Applications_Get|
|List - get list using params|`/%{tenant_id}/applications`|Get|Lists applications by filter parameters.|Applications_List|
|Update|`/%{tenant_id}/applications`|Post|Create a new application.|Applications_Create|
|Delete|`/%{tenant_id}/applications/%{application_object_id}`|Delete|Delete an application.|Applications_Delete|
