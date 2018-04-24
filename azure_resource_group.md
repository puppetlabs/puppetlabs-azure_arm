Document: "resources"
Path: "/root/specs/specification/resources/resource-manager/Microsoft.Resources/stable/2018-02-01/resources.json")

## ResourceGroup

```puppet
azure_resource_group {
  api_version => "api_version",
  id => "id (optional)",
  location => "location",
  managed_by => "managed_by (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_resource_group_properties
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for this operation. |
|id | String | false | The ID of the resource group. |
|location | String | true | The location of the resource group. It cannot be changed after the resource group has been created. It must be one of the supported Azure locations. |
|managed_by | String | false | The ID of the resource that manages this resource group. |
|name | String | false | The name of the resource group. |
|parameters | Hash | true | Parameters supplied to the create or update a resource group. |
|properties | [ResourceGroupProperties](#resourcegroupproperties) | false |  |
|subscription_id | String | true | The ID of the target subscription. |
|tags | Hash | false | The tags attached to the resource group. |
        
## ResourceGroupProperties

```puppet
$azure_resource_group_properties = {
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|provisioningState | String | false | The provisioning state.  |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ResourceGroup

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}`|Put|Creates or updates a resource group.|ResourceGroups_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/resourcegroups`|Get|Gets all the resource groups for a subscription.|ResourceGroups_List|
|List - get one|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}`|Get|Gets a resource group.|ResourceGroups_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourcegroups`|Get|Gets all the resource groups for a subscription.|ResourceGroups_List|
|Update|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}`|Put|Creates or updates a resource group.|ResourceGroups_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}`|Delete|When you delete a resource group, all of its resources are also deleted. Deleting a resource group deletes all of its template deployments and currently stored operations.|ResourceGroups_Delete|