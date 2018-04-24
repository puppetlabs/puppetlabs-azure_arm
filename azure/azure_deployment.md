Document: "WebApps"
Path: "/root/specs/specification/web/resource-manager/Microsoft.Web/stable/2018-02-01/WebApps.json")

## Deployment

```puppet
azure_deployment {
  api_version => "api_version",
  deployment => "deployment",
  id => "id (optional)",
  kind => "kind (optional)",
  name => "name (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  slot => "slot",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|deployment | Hash | true | Deployment details. |
|id | String | false | Resource Id. |
|kind | String | false | Kind of resource. |
|name | String | false | Resource Name. |
|properties | String | false | Deployment resource specific properties |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|slot | String | true | Name of the deployment slot. If a slot is not specified, the API creates a deployment for the production slot. |
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |
|type | String | false | Resource type. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Deployment

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/deployments/%{id}`|Put|Create a deployment for an app, or a deployment slot.|WebApps_CreateDeploymentSlot|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/deployments/%{id}`|Get|Get a deployment by its ID for an app, or a deployment slot.|WebApps_GetDeploymentSlot|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/deployments`|Get|List deployments for an app, or a deployment slot.|WebApps_ListDeploymentsSlot|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/deployments/%{id}`|Put|Create a deployment for an app, or a deployment slot.|WebApps_CreateDeploymentSlot|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/deployments/%{id}`|Delete|Delete a deployment by its ID for an app, or a deployment slot.|WebApps_DeleteDeploymentSlot|