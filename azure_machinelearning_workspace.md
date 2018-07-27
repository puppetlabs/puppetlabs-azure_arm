Document: "workspaces"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/machinelearning/resource-manager/Microsoft.MachineLearning/stable/2016-04-01/workspaces.json")

## Workspace

An object that represents a machine learning workspace.

```puppet
azure_machinelearning_workspace {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_workspace_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The client API version. |
|location | String | false | The location of the resource. This cannot be changed after the resource is created. |
|parameters | Hash | true | The parameters for creating or updating a machine learning workspace. |
|properties | [WorkspaceProperties](#workspaceproperties) | false | The properties of the machine learning workspace. |
|resource_group_name | String | true | The name of the resource group to which the machine learning workspace belongs. |
|subscription_id | String | true | The Microsoft Azure subscription ID. |
|tags | Hash | false | The tags of the resource. |
        
## WorkspaceProperties

The properties of a machine learning workspace.

```puppet
$azure_workspace_properties = {
  keyVaultIdentifierId => "keyVaultIdentifierId (optional)",
  ownerEmail => "ownerEmail (optional)",
  userStorageAccountId => "userStorageAccountId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|keyVaultIdentifierId | String | false | The key vault identifier used for encrypted workspaces. |
|ownerEmail | String | false | The email id of the owner for this workspace. |
|userStorageAccountId | String | true | The fully qualified arm id of the storage account associated with this workspace. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Workspace

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.MachineLearning/workspaces/%{workspace_name}`|Put|Creates or updates a workspace with the specified parameters.|Workspaces_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.MachineLearning/workspaces`|Get|Lists all the available machine learning workspaces under the specified subscription.|Workspaces_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.MachineLearning/workspaces/%{workspace_name}`|Get|Gets the properties of the specified machine learning workspace.|Workspaces_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.MachineLearning/workspaces`|Get|Lists all the available machine learning workspaces under the specified subscription.|Workspaces_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.MachineLearning/workspaces/%{workspace_name}`|Put|Creates or updates a workspace with the specified parameters.|Workspaces_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.MachineLearning/workspaces/%{workspace_name}`|Delete|Deletes a machine learning workspace.|Workspaces_Delete|
