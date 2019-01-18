Document: "machineLearningServices"


Path: "/tmp/azure-rest-api-specs/specification/machinelearningservices/resource-manager/Microsoft.MachineLearningServices/stable/2018-11-19/machineLearningServices.json")

## ComputeResource

Machine Learning compute object wrapped into ARM resource envelope.

```puppet
azure_compute_resource {
  api_version => "api_version",
  compute_name => "compute_name",
  location => "location (optional)",
  parameters => "parameters",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  underlying_resource_action => "underlying_resource_action",
  workspace_name => "workspace_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of Azure Machine Learning resource provider API. |
|compute_name | String | true | Name of the Azure Machine Learning compute. |
|location | String | false | Specifies the location of the resource. |
|parameters | Hash | true | Payload with Machine Learning compute definition. |
|resource_group_name | String | true | Name of the resource group in which workspace is located. |
|subscription_id | String | true | Azure subscription identifier. |
|tags | Hash | false | Contains resource tags defined as key/value pairs. |
|underlying_resource_action | String | true | Delete the underlying compute if 'Delete', or detach the underlying compute from workspace if 'Detach'. |
|workspace_name | String | true | Name of Azure Machine Learning workspace. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ComputeResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.MachineLearningServices/workspaces/%{workspace_name}/computes/%{compute_name}`|Put|Creates or updates compute. This call will overwrite a compute if it exists. This is a nonrecoverable operation. If your intent is to create a new compute, do a GET first to verify that it does not exist yet.|MachineLearningCompute_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.MachineLearningServices/workspaces/%{workspace_name}/computes/%{compute_name}`|Get|Gets compute definition by its name. Any secrets (storage keys, service credentials, etc) are not returned - use 'keys' nested resource to get them.|MachineLearningCompute_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.MachineLearningServices/workspaces/%{workspace_name}/computes`|Get|Gets computes in specified workspace.|MachineLearningCompute_ListByWorkspace|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.MachineLearningServices/workspaces/%{workspace_name}/computes/%{compute_name}`|Put|Creates or updates compute. This call will overwrite a compute if it exists. This is a nonrecoverable operation. If your intent is to create a new compute, do a GET first to verify that it does not exist yet.|MachineLearningCompute_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.MachineLearningServices/workspaces/%{workspace_name}/computes/%{compute_name}`|Delete|Deletes specified Machine Learning compute.|MachineLearningCompute_Delete|
