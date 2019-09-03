Document: "graphrbac"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/graphrbac/data-plane/Microsoft.GraphRbac/stable/1.6/graphrbac.json")

## ServicePrincipal

Active Directory service principal information.

```puppet
azure_service_principal {
  account_enabled => "accountEnabled (optional)",
  alternative_names => "alternativeNames (optional)",
  api_version => "api_version",
  app_id => "app_id (optional)",
  app_role_assignment_required => "appRoleAssignmentRequired (optional)",
  app_roles => $azure_app_role
  display_name => "display_name (optional)",
  error_url => "error_url (optional)",
  homepage => "homepage (optional)",
  key_credentials => $azure_key_credential
  logout_url => "logout_url (optional)",
  oauth2_permissions => $azure_o_auth2_permission
  parameters => "parameters",
  password_credentials => $azure_password_credential
  preferred_token_signing_key_thumbprint => "preferred_token_signing_key_thumbprint (optional)",
  publisher_name => "publisher_name (optional)",
  reply_urls => "replyUrls (optional)",
  saml_metadata_url => "saml_metadata_url (optional)",
  service_principal_names => "servicePrincipalNames (optional)",
  service_principal_type => "service_principal_type (optional)",
  tags => "tags (optional)",
  tenant_id => "tenant_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_enabled | Boolean | false | whether or not the service principal account is enabled |
|alternative_names | Array | false | alternative names |
|api_version | String | true | Client API version. |
|app_id | String | false | The application ID. |
|app_role_assignment_required | Boolean | false | Specifies whether an AppRoleAssignment to a user or group is required before Azure AD will issue a user or access token to the application. |
|app_roles | [AppRole](#approle) | false | The collection of application roles that an application may declare. These roles can be assigned to users, groups or service principals. |
|display_name | String | false | The display name of the service principal. |
|error_url | String | false | A URL provided by the author of the associated application to report errors when using the application. |
|homepage | String | false | The URL to the homepage of the associated application. |
|key_credentials | [KeyCredential](#keycredential) | false | The collection of key credentials associated with the service principal. |
|logout_url | String | false | A URL provided by the author of the associated application to logout |
|oauth2_permissions | [OAuth2Permission](#oauth2permission) | false | The OAuth 2.0 permissions exposed by the associated application. |
|parameters | Hash | true | Parameters to create a service principal. |
|password_credentials | [PasswordCredential](#passwordcredential) | false | The collection of password credentials associated with the service principal. |
|preferred_token_signing_key_thumbprint | String | false | The thumbprint of preferred certificate to sign the token |
|publisher_name | String | false | The publisher's name of the associated application |
|reply_urls | Array | false | The URLs that user tokens are sent to for sign in with the associated application.  The redirect URIs that the oAuth 2.0 authorization code and access tokens are sent to for the associated application. |
|saml_metadata_url | String | false | The URL to the SAML metadata of the associated application |
|service_principal_names | Array | false | A collection of service principal names. |
|service_principal_type | String | false | the type of the service principal |
|tags | Array | false | Optional list of tags that you can apply to your service principals. Not nullable. |
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
        
## OAuth2Permission

Represents an OAuth 2.0 delegated permission scope. The specified OAuth 2.0 delegated permission scopes may be requested by client applications (through the requiredResourceAccess collection on the Application object) when calling a resource application. The oauth2Permissions property of the ServicePrincipal entity and of the Application entity is a collection of OAuth2Permission.

```puppet
$azure_o_auth2_permission = {
  adminConsentDescription => "adminConsentDescription (optional)",
  adminConsentDisplayName => "adminConsentDisplayName (optional)",
  id => "id (optional)",
  isEnabled => "isEnabled (optional)",
  type => "type (optional)",
  userConsentDescription => "userConsentDescription (optional)",
  userConsentDisplayName => "userConsentDisplayName (optional)",
  value => "value (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|adminConsentDescription | String | false | Permission help text that appears in the admin consent and app assignment experiences. |
|adminConsentDisplayName | String | false | Display name for the permission that appears in the admin consent and app assignment experiences. |
|id | String | false | Unique scope permission identifier inside the oauth2Permissions collection. |
|isEnabled | Boolean | false | When creating or updating a permission, this property must be set to true (which is the default). To delete a permission, this property must first be set to false. At that point, in a subsequent call, the permission may be removed.  |
|type | String | false | Specifies whether this scope permission can be consented to by an end user, or whether it is a tenant-wide permission that must be consented to by a Company Administrator. Possible values are 'User' or 'Admin'. |
|userConsentDescription | String | false | Permission help text that appears in the end user consent experience. |
|userConsentDisplayName | String | false | Display name for the permission that appears in the end user consent experience. |
|value | String | false | The value of the scope claim that the resource application should expect in the OAuth 2.0 access token. |
        
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



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ServicePrincipal

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/%{tenant_id}/servicePrincipals`|Post|Creates a service principal in the directory.|ServicePrincipals_Create|
|List - list all|``||||
|List - get one|`/%{tenant_id}/servicePrincipals/%{object_id}`|Get|Gets service principal information from the directory. Query by objectId or pass a filter to query by appId|ServicePrincipals_Get|
|List - get list using params|`/%{tenant_id}/servicePrincipals`|Get|Gets a list of service principals from the current tenant.|ServicePrincipals_List|
|Update|`/%{tenant_id}/servicePrincipals`|Post|Creates a service principal in the directory.|ServicePrincipals_Create|
|Delete|`/%{tenant_id}/servicePrincipals/%{object_id}`|Delete|Deletes a service principal from the directory.|ServicePrincipals_Delete|
