Document: "functions"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/streamanalytics/resource-manager/Microsoft.StreamAnalytics/stable/2016-03-01/functions.json")

## Function

A function object, containing all information associated with the named function. All functions are contained under a streaming job.

```puppet
azure_function {
  api_version => "api_version",
  function => "function",
  job_name => "job_name",
  name => "name (optional)",
  properties => $azure_function_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|function | Hash | true | The definition of the function that will be used to create a new function or replace the existing one under the streaming job. |
|job_name | String | true | The name of the streaming job. |
|name | String | false | Resource name |
|properties | [FunctionProperties](#functionproperties) | false | The properties that are associated with a function. |
|resource_group_name | String | true | The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal. |
|subscription_id | String | true | GUID which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## FunctionProperties

The properties that are associated with a function.

```puppet
$azure_function_properties = {
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|type | String | false | Indicates the type of function. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Function

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.StreamAnalytics/streamingjobs/%{job_name}/functions/%{function_name}`|Put|Creates a function or replaces an already existing function under an existing streaming job.|Functions_CreateOrReplace|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.StreamAnalytics/streamingjobs/%{job_name}/functions/%{function_name}`|Get|Gets details about the specified function.|Functions_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.StreamAnalytics/streamingjobs/%{job_name}/functions`|Get|Lists all of the functions under the specified streaming job.|Functions_ListByStreamingJob|
|Update|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.StreamAnalytics/streamingjobs/%{job_name}/functions/%{function_name}`|Put|Creates a function or replaces an already existing function under an existing streaming job.|Functions_CreateOrReplace|
|Delete|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.StreamAnalytics/streamingjobs/%{job_name}/functions/%{function_name}`|Delete|Deletes a function from the streaming job.|Functions_Delete|
