Document: "graphrbac"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/graphrbac/data-plane/Microsoft.GraphRbac/stable/1.6/graphrbac.json")

## Application

Active Directory application information.

```puppet
azure_application {
  allow_guests_sign_in => "allowGuestsSignIn (optional)",
  allow_passthrough_users => "allowPassthroughUsers (optional)",
  api_version => "api_version",
  app_id => "app_id (optional)",
  app_logo_url => "app_logo_url (optional)",
  app_permissions => "appPermissions (optional)",
  app_roles => $azure_app_role
  available_to_other_tenants => "availableToOtherTenants (optional)",
  display_name => "display_name (optional)",
  error_url => "error_url (optional)",
  group_membership_claims => $azure_group_membership_claims
  homepage => "homepage (optional)",
  identifier_uris => "identifierUris (optional)",
  informational_urls => $azure_informational_url
  is_device_only_auth_supported => "isDeviceOnlyAuthSupported (optional)",
  key_credentials => $azure_key_credential
  known_client_applications => "knownClientApplications (optional)",
  logout_url => "logout_url (optional)",
  oauth2_allow_implicit_flow => "oauth2AllowImplicitFlow (optional)",
  oauth2_allow_url_path_matching => "oauth2AllowUrlPathMatching (optional)",
  oauth2_permissions => $azure_o_auth2_permission
  oauth2_require_post_response => "oauth2RequirePostResponse (optional)",
  optional_claims => $azure_optional_claims
  org_restrictions => "orgRestrictions (optional)",
  parameters => "parameters",
  password_credentials => $azure_password_credential
  pre_authorized_applications => $azure_pre_authorized_application
  public_client => "publicClient (optional)",
  publisher_domain => "publisher_domain (optional)",
  reply_urls => "replyUrls (optional)",
  required_resource_access => $azure_required_resource_access
  saml_metadata_url => "saml_metadata_url (optional)",
  sign_in_audience => "sign_in_audience (optional)",
  tenant_id => "tenant_id",
  www_homepage => "www_homepage (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|allow_guests_sign_in | Boolean | false | A property on the application to indicate if the application accepts other IDPs or not or partially accepts. |
|allow_passthrough_users | Boolean | false | Indicates that the application supports pass through users who have no presence in the resource tenant. |
|api_version | String | true | Client API version. |
|app_id | String | false | The application ID. |
|app_logo_url | String | false | The url for the application logo image stored in a CDN. |
|app_permissions | Array | false | The application permissions. |
|app_roles | [AppRole](#approle) | false | The collection of application roles that an application may declare. These roles can be assigned to users, groups or service principals. |
|available_to_other_tenants | Boolean | false | Whether the application is available to other tenants. |
|display_name | String | false | The display name of the application. |
|error_url | String | false | A URL provided by the author of the application to report errors when using the application. |
|group_membership_claims | [GroupMembershipClaims](#groupmembershipclaims) | false | Configures the groups claim issued in a user or OAuth 2.0 access token that the app expects. |
|homepage | String | false | The home page of the application. |
|identifier_uris | Array | false | A collection of URIs for the application. |
|informational_urls | [InformationalUrl](#informationalurl) | false | URLs with more information about the application. |
|is_device_only_auth_supported | Boolean | false | Specifies whether this application supports device authentication without a user. The default is false. |
|key_credentials | [KeyCredential](#keycredential) | false | A collection of KeyCredential objects. |
|known_client_applications | Array | false | Client applications that are tied to this resource application. Consent to any of the known client applications will result in implicit consent to the resource application through a combined consent dialog (showing the OAuth permission scopes required by the client and the resource). |
|logout_url | String | false | the url of the logout page |
|oauth2_allow_implicit_flow | Boolean | false | Whether to allow implicit grant flow for OAuth2 |
|oauth2_allow_url_path_matching | Boolean | false | Specifies whether during a token Request Azure AD will allow path matching of the redirect URI against the applications collection of replyURLs. The default is false. |
|oauth2_permissions | [OAuth2Permission](#oauth2permission) | false | The collection of OAuth 2.0 permission scopes that the web API (resource) application exposes to client applications. These permission scopes may be granted to client applications during consent. |
|oauth2_require_post_response | Boolean | false | Specifies whether, as part of OAuth 2.0 token requests, Azure AD will allow POST requests, as opposed to GET requests. The default is false, which specifies that only GET requests will be allowed. |
|optional_claims | [OptionalClaims](#optionalclaims) | false |  |
|org_restrictions | Array | false | A list of tenants allowed to access application. |
|parameters | Hash | true | The parameters for creating an application. |
|password_credentials | [PasswordCredential](#passwordcredential) | false | A collection of PasswordCredential objects |
|pre_authorized_applications | [PreAuthorizedApplication](#preauthorizedapplication) | false | list of pre-authorized applications. |
|public_client | Boolean | false | Specifies whether this application is a public client (such as an installed application running on a mobile device). Default is false. |
|publisher_domain | String | false | Reliable domain which can be used to identify an application. |
|reply_urls | Array | false | A collection of reply URLs for the application. |
|required_resource_access | [RequiredResourceAccess](#requiredresourceaccess) | false | Specifies resources that this application requires access to and the set of OAuth permission scopes and application roles that it needs under each of those resources. This pre-configuration of required resource access drives the consent experience. |
|saml_metadata_url | String | false | The URL to the SAML metadata for the application. |
|sign_in_audience | String | false | Audience for signing in to the application (AzureADMyOrganization, AzureADAllOrganizations, AzureADAndMicrosoftAccounts). |
|tenant_id | String | true | The tenant ID. |
|www_homepage | String | false | The primary Web page. |
        
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
        
## GroupMembershipClaims

Configures the groups claim issued in a user or OAuth 2.0 access token that the app expects.

```puppet
$azure_group_membership_claims = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## InformationalUrl

Represents a group of URIs that provide terms of service, marketing, support and privacy policy information about an application. The default value for each string is null.

```puppet
$azure_informational_url = {
  marketing => "marketing (optional)",
  privacy => "privacy (optional)",
  support => "support (optional)",
  termsOfService => "termsOfService (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|marketing | String | false | The marketing URI |
|privacy | String | false | The privacy policy URI |
|support | String | false | The support URI |
|termsOfService | String | false | The terms of service URI |
        
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
        
## OptionalClaims

Specifying the claims to be included in the token.

```puppet
$azure_optional_claims = {
  accessToken => $azure_optional_claim
  idToken => $azure_optional_claim
  samlToken => $azure_optional_claim
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accessToken | [OptionalClaim](#optionalclaim) | false | Optional claims requested to be included in the access token. |
|idToken | [OptionalClaim](#optionalclaim) | false | Optional claims requested to be included in the id token. |
|samlToken | [OptionalClaim](#optionalclaim) | false | Optional claims requested to be included in the saml token. |
        
## OptionalClaim

Specifying the claims to be included in a token.

```puppet
$azure_optional_claim = {
  additionalProperties => "additionalProperties (optional)",
  essential => "essential (optional)",
  name => "name (optional)",
  source => "source (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|additionalProperties | Hash | false |  |
|essential | Boolean | false | Is this a required claim. |
|name | String | false | Claim name. |
|source | String | false | Claim source. |
        
        
        
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
        
## PreAuthorizedApplication

Contains information about pre authorized client application.

```puppet
$azure_pre_authorized_application = {
  appId => "appId (optional)",
  extensions => $azure_pre_authorized_application_extension
  permissions => $azure_pre_authorized_application_permission
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|appId | String | false | Represents the application id. |
|extensions | [PreAuthorizedApplicationExtension](#preauthorizedapplicationextension) | false | Collection of extensions from the resource application. |
|permissions | [PreAuthorizedApplicationPermission](#preauthorizedapplicationpermission) | false | Collection of required app permissions/entitlements from the resource application. |
        
## PreAuthorizedApplicationExtension

Representation of an app PreAuthorizedApplicationExtension required by a pre authorized client app.

```puppet
$azure_pre_authorized_application_extension = {
  conditions => "conditions (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|conditions | Array | false | The extension's conditions. |
        
## PreAuthorizedApplicationPermission

Contains information about the pre-authorized permissions.

```puppet
$azure_pre_authorized_application_permission = {
  accessGrants => "accessGrants (optional)",
  directAccessGrant => "directAccessGrant (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accessGrants | Array | false | The list of permissions. |
|directAccessGrant | Boolean | false | Indicates whether the permission set is DirectAccess or impersonation. |
        
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
|List - get list using params|`/%{tenant_id}/deletedApplications`|Get|Gets a list of deleted applications in the directory.|DeletedApplications_List|
|Update|`/%{tenant_id}/deletedApplications/%{object_id}/restore`|Post|Restores the deleted application in the directory.|DeletedApplications_Restore|
|Delete|`/%{tenant_id}/deletedApplications/%{application_object_id}`|Delete|Hard-delete an application.|DeletedApplications_HardDelete|
