Document: "machineLearningServices"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/machinelearningservices/resource-manager/Microsoft.MachineLearningServices/stable/2019-06-01/machineLearningServices.json")

## ComputeResource

Machine Learning compute object wrapped into ARM resource envelope.

```puppet
azure_compute_resource {
  api_version => "api_version",
  compute_name => "compute_name",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_compute
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
|properties | [Compute](#compute) | false | Compute properties |
|resource_group_name | String | true | Name of the resource group in which workspace is located. |
|subscription_id | String | true | Azure subscription identifier. |
|tags | Hash | false | Contains resource tags defined as key/value pairs. |
|underlying_resource_action | String | true | Delete the underlying compute if 'Delete', or detach the underlying compute from workspace if 'Detach'. |
|workspace_name | String | true | Name of Azure Machine Learning workspace. |
        
## Compute

Machine Learning compute object.

```puppet
$azure_compute = {
  computeLocation => "computeLocation (optional)",
  computeType => $azure_compute_type
  description => "description (optional)",
  provisioningErrors => $azure_machine_learning_service_error
  resourceId => "resourceId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|computeLocation | String | false | Location for the underlying compute |
|computeType | [ComputeType](#computetype) | true | The type of compute |
|description | String | false | The description of the Machine Learning compute. |
|provisioningErrors | [MachineLearningServiceError](#machinelearningserviceerror) | false | Errors during provisioning |
|resourceId | String | false | ARM resource id of the underlying compute |
        
## ComputeType

The type of compute

```puppet
$azure_compute_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## MachineLearningServiceError

Wrapper for error response to follow ARM guidelines.

```puppet
$azure_machine_learning_service_error = {
  error => $azure_error_response
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|error | [ErrorResponse](#errorresponse) | false | The error response. |
        
## ErrorResponse

Error response information.

```puppet
$azure_error_response = {
  details => $azure_error_detail
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|details | [ErrorDetail](#errordetail) | false | An array of error detail objects. |
        
## ErrorDetail

Error detail information.

```puppet
$azure_error_detail = {
  code => "code",
  message => "message",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|code | String | true | Error code. |
|message | String | true | Error message. |



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
