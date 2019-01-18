Document: "graphrbac"


Path: "/tmp/azure-rest-api-specs/specification/graphrbac/data-plane/Microsoft.GraphRbac/stable/1.6/graphrbac.json")

## ServicePrincipal

Active Directory service principal information.

```puppet
azure_service_principal {
  api_version => "api_version",
  app_id => "app_id (optional)",
  app_roles => $azure_app_role
  display_name => "display_name (optional)",
  parameters => "parameters",
  service_principal_names => "servicePrincipalNames (optional)",
  tenant_id => "tenant_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|app_id | String | false | The application ID. |
|app_roles | [AppRole](#approle) | false | The collection of application roles that an application may declare. These roles can be assigned to users, groups or service principals. |
|display_name | String | false | The display name of the service principal. |
|parameters | Hash | true | Parameters to create a service principal. |
|service_principal_names | Array | false | A collection of service principal names. |
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
