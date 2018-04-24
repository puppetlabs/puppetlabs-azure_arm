Document: "functions"
Path: "/root/specs/specification/streamanalytics/resource-manager/Microsoft.StreamAnalytics/stable/2016-03-01/functions.json")

## Function

```puppet
azure_function {
  api_version => "api_version",
  function => "function",
  id => "id (optional)",
  job_name => "job_name",
  name => "name (optional)",
  properties => $azure_function_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|function | Hash | true | The definition of the function that will be used to create a new function or replace the existing one under the streaming job. |
|id | String | false | Resource Id |
|job_name | String | true | The name of the streaming job. |
|name | String | false | Resource name |
|properties | [FunctionProperties](#functionproperties) | false | The properties that are associated with a function. |
|resource_group_name | String | true | The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal. |
|subscription_id | String | true | GUID which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | Resource type |
        
## FunctionProperties

```puppet
$azure_function_properties = {
  etag => "etag (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | The current entity tag for the function. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency. |
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