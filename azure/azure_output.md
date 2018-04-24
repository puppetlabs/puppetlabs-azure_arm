Document: "outputs"
Path: "/root/specs/specification/streamanalytics/resource-manager/Microsoft.StreamAnalytics/stable/2016-03-01/outputs.json")

## Output

```puppet
azure_output {
  api_version => "api_version",
  id => "id (optional)",
  job_name => "job_name",
  name => "name (optional)",
  output => "output",
  properties => $azure_output_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|id | String | false | Resource Id |
|job_name | String | true | The name of the streaming job. |
|name | String | false | Resource name |
|output | Hash | true | The definition of the output that will be used to create a new output or replace the existing one under the streaming job. |
|properties | [OutputProperties](#outputproperties) | false | The properties that are associated with an output. Required on PUT (CreateOrReplace) requests. |
|resource_group_name | String | true | The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal. |
|subscription_id | String | true | GUID which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | Resource type |
        
## OutputProperties

```puppet
$azure_output_properties = {
  datasource => $azure_output_data_source
  diagnostics => $azure_diagnostics
  etag => "etag (optional)",
  serialization => $azure_serialization
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|datasource | [OutputDataSource](#outputdatasource) | false | Describes the data source that output will be written to. Required on PUT (CreateOrReplace) requests. |
|diagnostics | [Diagnostics](#diagnostics) | false | Describes conditions applicable to the Input, Output, or the job overall, that warrant customer attention. |
|etag | String | false | The current entity tag for the output. This is an opaque string. You can use it to detect whether the resource has changed between requests. You can also use it in the If-Match or If-None-Match headers for write operations for optimistic concurrency. |
|serialization | [Serialization](#serialization) | false | Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests. |
        
## OutputDataSource

```puppet
$azure_output_data_source = {
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|type | String | false | Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests. |
        
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

Here is a list of endpoints that we use to create, read, update and delete the Output

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.StreamAnalytics/streamingjobs/%{job_name}/outputs/%{output_name}`|Put|Creates an output or replaces an already existing output under an existing streaming job.|Outputs_CreateOrReplace|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.StreamAnalytics/streamingjobs/%{job_name}/outputs/%{output_name}`|Get|Gets details about the specified output.|Outputs_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.StreamAnalytics/streamingjobs/%{job_name}/outputs`|Get|Lists all of the outputs under the specified streaming job.|Outputs_ListByStreamingJob|
|Update|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.StreamAnalytics/streamingjobs/%{job_name}/outputs/%{output_name}`|Put|Creates an output or replaces an already existing output under an existing streaming job.|Outputs_CreateOrReplace|
|Delete|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.StreamAnalytics/streamingjobs/%{job_name}/outputs/%{output_name}`|Delete|Deletes an output from the streaming job.|Outputs_Delete|