Document: "machineLearningServices"


Path: "/tmp/azure-rest-api-specs/specification/machinelearningservices/resource-manager/Microsoft.MachineLearningServices/stable/2018-11-19/machineLearningServices.json")

## Workspace

An object that represents a machine learning workspace.

```puppet
azure_machinelearningservices_workspace {
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
|api_version | String | true | Version of Azure Machine Learning resource provider API. |
|location | String | false | Specifies the location of the resource. |
|parameters | Hash | true | The parameters for creating or updating a machine learning workspace. |
|properties | [WorkspaceProperties](#workspaceproperties) | false | The properties of the machine learning workspace. |
|resource_group_name | String | true | Name of the resource group in which workspace is located. |
|subscription_id | String | true | Azure subscription identifier. |
|tags | Hash | false | Contains resource tags defined as key/value pairs. |
        
## WorkspaceProperties

The properties of a machine learning workspace.

```puppet
$azure_workspace_properties = {
  applicationInsights => "applicationInsights (optional)",
  containerRegistry => "containerRegistry (optional)",
  description => "description (optional)",
  discoveryUrl => "discoveryUrl (optional)",
  friendlyName => "friendlyName (optional)",
  keyVault => "keyVault (optional)",
  storageAccount => "storageAccount (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|applicationInsights | String | false | ARM id of the application insights associated with this workspace. This cannot be changed once the workspace has been created |
|containerRegistry | String | false | ARM id of the container registry associated with this workspace. This cannot be changed once the workspace has been created |
|description | String | false | The description of this workspace. |
|discoveryUrl | String | false | Url for the discovery service to identify regional endpoints for machine learning experimentation services |
|friendlyName | String | false | The friendly name for this workspace. This name in mutable |
|keyVault | String | false | ARM id of the key vault associated with this workspace. This cannot be changed once the workspace has been created |
|storageAccount | String | false | ARM id of the storage account associated with this workspace. This cannot be changed once the workspace has been created |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Workspace

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.MachineLearningServices/workspaces/%{workspace_name}`|Put|Creates or updates a workspace with the specified parameters.|Workspaces_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.MachineLearningServices/workspaces`|Get|Lists all the available machine learning workspaces under the specified subscription.|Workspaces_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.MachineLearningServices/workspaces/%{workspace_name}`|Get|Gets the properties of the specified machine learning workspace.|Workspaces_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.MachineLearningServices/workspaces`|Get|Lists all the available machine learning workspaces under the specified subscription.|Workspaces_ListBySubscription|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.MachineLearningServices/workspaces/%{workspace_name}`|Put|Creates or updates a workspace with the specified parameters.|Workspaces_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.MachineLearningServices/workspaces/%{workspace_name}`|Delete|Deletes a machine learning workspace.|Workspaces_Delete|
