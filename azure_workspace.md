Document: "BatchAI"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/batchai/resource-manager/Microsoft.BatchAI/stable/2018-05-01/BatchAI.json")

## Workspace

Batch AI Workspace information.

```puppet
azure_workspace {
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_workspace_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Specifies the version of API used for this request. |
|parameters | Hash | true | Workspace creation parameters. |
|properties | [WorkspaceProperties](#workspaceproperties) | false | The properties associated with the workspace. |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|subscription_id | String | true | The subscriptionID for the Azure user. |
        
## WorkspaceProperties

Workspace specific properties.

```puppet
$azure_workspace_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Workspace

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}`|Put|Creates a Workspace.|Workspaces_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.BatchAI/workspaces`|Get|Gets a list of Workspaces associated with the given subscription.|Workspaces_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}`|Get|Gets information about a Workspace.|Workspaces_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.BatchAI/workspaces`|Get|Gets a list of Workspaces associated with the given subscription.|Workspaces_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}`|Put|Creates a Workspace.|Workspaces_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}`|Delete|Deletes a Workspace.|Workspaces_Delete|
