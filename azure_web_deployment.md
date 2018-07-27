Document: "service"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/web/resource-manager/Microsoft.Web/stable/2015-08-01/service.json")

## Deployment

Represents user crendentials used for publishing activity

```puppet
azure_web_deployment {
  api_version => "api_version",
  deployment => "deployment",
  id => "id (optional)",
  instance_id => "instance_id",
  kind => "kind (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  slot => "slot",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|deployment | Hash | true | Details of deployment |
|id | String | false | Resource Id |
|instance_id | String | true | Id of web app instance |
|kind | String | false | Kind of resource |
|location | String | false | Resource Location |
|name | String | false | Resource Name |
|properties | String | false |  |
|resource_group_name | String | true | Name of resource group |
|slot | String | true | Name of web app slot. If not specified then will default to production slot. |
|subscription_id | String | true | Subscription Id |
|tags | Hash | false | Resource tags |
|type | String | false | Resource type |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Deployment

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/instances/%{instance_id}/deployments/%{id}`|Put||Sites_CreateInstanceDeploymentSlot|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/instances/%{instance_id}/deployments/%{id}`|Get||Sites_GetInstanceDeploymentSlot|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/deployments`|Get||Sites_GetDeploymentsSlot|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/instances/%{instance_id}/deployments/%{id}`|Put||Sites_CreateInstanceDeploymentSlot|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/instances/%{instance_id}/deployments/%{id}`|Delete||Sites_DeleteInstanceDeploymentSlot|
