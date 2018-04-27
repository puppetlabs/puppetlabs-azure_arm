Document: "graphrbac"
Path: "/root/specs/specification/graphrbac/data-plane/stable/1.6/graphrbac.json")

## Application

```puppet
azure_application {
  api_version => "api_version",
  app_id => "app_id (optional)",
  app_permissions => "appPermissions (optional)",
  available_to_other_tenants => "availableToOtherTenants (optional)",
  deletion_timestamp => "deletion_timestamp (optional)",
  display_name => "display_name (optional)",
  homepage => "homepage (optional)",
  identifier_uris => "identifierUris (optional)",
  oauth2_allow_implicit_flow => "oauth2AllowImplicitFlow (optional)",
  object_id => "object_id (optional)",
  object_type => "object_type (optional)",
  parameters => "parameters",
  reply_urls => "replyUrls (optional)",
  tenant_id => "tenant_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|app_id | String | false | The application ID. |
|app_permissions | Array | false | The application permissions. |
|available_to_other_tenants | Boolean | false | Whether the application is be available to other tenants. |
|deletion_timestamp | String | false | The time at which the directory object was deleted. |
|display_name | String | false | The display name of the application. |
|homepage | String | false | The home page of the application. |
|identifier_uris | Array | false | A collection of URIs for the application. |
|oauth2_allow_implicit_flow | Boolean | false | Whether to allow implicit grant flow for OAuth2 |
|object_id | String | false | The object ID. |
|object_type | String | false | The object type. |
|parameters | Hash | true | The parameters for creating an application. |
|reply_urls | Array | false | A collection of reply URLs for the application. |
|tenant_id | String | true | The tenant ID. |



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