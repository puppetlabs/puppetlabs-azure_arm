Document: "inputs"
Path: "/root/specs/specification/streamanalytics/resource-manager/Microsoft.StreamAnalytics/stable/2016-03-01/inputs.json")

## Input

```puppet
azure_input {
  api_version => "api_version",
  id => "id (optional)",
  input => "input",
  job_name => "job_name",
  name => "name (optional)",
  properties => $azure_input_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|id | String | false | Resource Id |
|input | Hash | true | The definition of the input that will be used to create a new input or replace the existing one under the streaming job. |
|job_name | String | true | The name of the streaming job. |
|name | String | false | Resource name |
|properties | [InputProperties](#inputproperties) | false | The properties that are associated with an input. Required on PUT (CreateOrReplace) requests. |
|resource_group_name | String | true | The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal. |
|subscription_id | String | true | GUID which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | Resource type |
        
## InputProperties

```puppet
$azure_input_properties = {
  diagnostics => $azure_diagnostics
  etag => "etag (optional)",
  serialization => $azure_serialization
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|diagnostics | [Diagnostics](#diagnostics) | false | Describes conditions applicable to the Input, Output, or the job overall, that warrant customer attention. |
|etag | String | false | The current entity tag for the input. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency. |
|serialization | [Serialization](#serialization) | false | Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests. |
|type | String | false | Indicates whether the input is a source of reference data or stream data. Required on PUT (CreateOrReplace) requests. |
        
## Diagnostics

```puppet
$azure_diagnostics = {
  conditions => $azure_diagnostic_condition
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|conditions | [DiagnosticCondition](#diagnosticcondition) | false | A collection of zero or more conditions applicable to the resource, or to the job overall, that warrant customer attention. |
        
## DiagnosticCondition

```puppet
$azure_diagnostic_condition = {
  code => "code (optional)",
  message => "message (optional)",
  since => "since (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|code | String | false | The opaque diagnostic code. |
|message | String | false | The human-readable message describing the condition in detail. Localized in the Accept-Language of the client request. |
|since | String | false | The UTC timestamp of when the condition started. Customers should be able to find a corresponding event in the ops log around this time. |
        
## Serialization

```puppet
$azure_serialization = {
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|type | String | false | Indicates the type of serialization that the input or output uses. Required on PUT (CreateOrReplace) requests. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Input

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.StreamAnalytics/streamingjobs/%{job_name}/inputs/%{input_name}`|Put|Creates an input or replaces an already existing input under an existing streaming job.|Inputs_CreateOrReplace|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.StreamAnalytics/streamingjobs/%{job_name}/inputs/%{input_name}`|Get|Gets details about the specified input.|Inputs_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.StreamAnalytics/streamingjobs/%{job_name}/inputs`|Get|Lists all of the inputs under the specified streaming job.|Inputs_ListByStreamingJob|
|Update|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.StreamAnalytics/streamingjobs/%{job_name}/inputs/%{input_name}`|Put|Creates an input or replaces an already existing input under an existing streaming job.|Inputs_CreateOrReplace|
|Delete|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.StreamAnalytics/streamingjobs/%{job_name}/inputs/%{input_name}`|Delete|Deletes an input from the streaming job.|Inputs_Delete|