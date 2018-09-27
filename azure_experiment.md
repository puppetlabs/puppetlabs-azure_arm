Document: "BatchAI"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/batchai/resource-manager/Microsoft.BatchAI/stable/2018-05-01/BatchAI.json")

## Experiment

Experiment information.

```puppet
azure_experiment {
  api_version => "api_version",
  properties => $azure_experiment_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  workspace_name => "workspace_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Specifies the version of API used for this request. |
|properties | [ExperimentProperties](#experimentproperties) | false | The properties associated with the experiment. |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|subscription_id | String | true | The subscriptionID for the Azure user. |
|workspace_name | String | true | The name of the workspace. Workspace names can only contain a combination of alphanumeric characters along with dash (-) and underscore (_). The name must be from 1 through 64 characters long. |
        
## ExperimentProperties

Experiment properties.

```puppet
$azure_experiment_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Experiment

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}/experiments/%{experiment_name}`|Put|Creates an Experiment.|Experiments_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}/experiments/%{experiment_name}`|Get|Gets information about an Experiment.|Experiments_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}/experiments`|Get|Gets a list of Experiments within the specified Workspace.|Experiments_ListByWorkspace|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}/experiments/%{experiment_name}`|Put|Creates an Experiment.|Experiments_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}/experiments/%{experiment_name}`|Delete|Deletes an Experiment.|Experiments_Delete|
