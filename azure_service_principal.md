Document: "graphrbac"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/graphrbac/data-plane/stable/1.6/graphrbac.json")

## ServicePrincipal

Active Directory service principal information.

```puppet
azure_service_principal {
  api_version => "api_version",
  app_id => "app_id (optional)",
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
|display_name | String | false | The display name of the service principal. |
|parameters | Hash | true | Parameters to create a service principal. |
|service_principal_names | Array | false | A collection of service principal names. |
|tenant_id | String | true | The tenant ID. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ServicePrincipal

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/%{tenant_id}/servicePrincipals`|Post|Creates a service principal in the directory.|ServicePrincipals_Create|
|List - list all|``||||
|List - get one|`/%{tenant_id}/servicePrincipals/%{object_id}`|Get|Gets service principal information from the directory.|ServicePrincipals_Get|
|List - get list using params|`/%{tenant_id}/servicePrincipals`|Get|Gets a list of service principals from the current tenant.|ServicePrincipals_List|
|Update|`/%{tenant_id}/servicePrincipals`|Post|Creates a service principal in the directory.|ServicePrincipals_Create|
|Delete|`/%{tenant_id}/servicePrincipals/%{object_id}`|Delete|Deletes a service principal from the directory.|ServicePrincipals_Delete|
