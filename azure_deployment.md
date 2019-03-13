Document: "WebApps"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/web/resource-manager/Microsoft.Web/stable/2018-02-01/WebApps.json")

## Deployment

User credentials used for publishing activity.

```puppet
azure_deployment {
  api_version => "api_version",
  deployment => "deployment",
  kind => "kind (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|deployment | Hash | true | Deployment details. |
|kind | String | false | Kind of resource. |
|properties | String | false | Deployment resource specific properties |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Deployment

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/deployments/%{id}`|Put|Create a deployment for an app, or a deployment slot.|WebApps_CreateDeployment|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/deployments/%{id}`|Get|Get a deployment by its ID for an app, or a deployment slot.|WebApps_GetDeployment|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/deployments`|Get|List deployments for an app, or a deployment slot.|WebApps_ListDeploymentsSlot|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/deployments/%{id}`|Put|Create a deployment for an app, or a deployment slot.|WebApps_CreateDeployment|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/deployments/%{id}`|Delete|Delete a deployment by its ID for an app, or a deployment slot.|WebApps_DeleteDeployment|
