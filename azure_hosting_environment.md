Document: "service"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/web/resource-manager/Microsoft.Web/stable/2015-08-01/service.json")

## HostingEnvironment

Description of an hostingEnvironment (App Service Environment)

```puppet
azure_hosting_environment {
  api_version => "api_version",
  hosting_environment_envelope => "hostingEnvironmentEnvelope",
  id => "id (optional)",
  kind => "kind (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|hosting_environment_envelope | Hash | true | Properties of hostingEnvironment (App Service Environment) |
|id | String | false | Resource Id |
|kind | String | false | Kind of resource |
|location | String | false | Resource Location |
|name | String | false | Resource Name |
|properties | String | false |  |
|resource_group_name | String | true | Name of resource group |
|subscription_id | String | true | Subscription Id |
|tags | Hash | false | Resource tags |
|type | String | false | Resource type |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the HostingEnvironment

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/hostingEnvironments/%{name}`|Put||HostingEnvironments_CreateOrUpdateHostingEnvironment|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Web/hostingEnvironments`|Get||Global_GetAllHostingEnvironments|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/hostingEnvironments/%{name}`|Get||HostingEnvironments_GetHostingEnvironment|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/hostingEnvironments`|Get||HostingEnvironments_GetHostingEnvironments|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/hostingEnvironments/%{name}`|Put||HostingEnvironments_CreateOrUpdateHostingEnvironment|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/hostingEnvironments/%{name}`|Delete||HostingEnvironments_DeleteHostingEnvironment|
