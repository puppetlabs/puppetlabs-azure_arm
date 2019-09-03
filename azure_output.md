Document: "outputs"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/streamanalytics/resource-manager/Microsoft.StreamAnalytics/stable/2016-03-01/outputs.json")

## Output

An output object, containing all information associated with the named output. All outputs are contained under a streaming job.

```puppet
azure_output {
  api_version => "api_version",
  job_name => "job_name",
  name => "name (optional)",
  output => "output",
  properties => $azure_output_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|job_name | String | true | The name of the streaming job. |
|name | String | false | Resource name |
|output | Hash | true | The definition of the output that will be used to create a new output or replace the existing one under the streaming job. |
|properties | [OutputProperties](#outputproperties) | false | The properties that are associated with an output. Required on PUT (CreateOrReplace) requests. |
|resource_group_name | String | true | The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal. |
|subscription_id | String | true | GUID which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## OutputProperties

The properties that are associated with an output.

```puppet
$azure_output_properties = {
  datasource => $azure_output_data_source
  diagnostics => $azure_diagnostics
  serialization => $azure_serialization
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|datasource | [OutputDataSource](#outputdatasource) | false | Describes the data source that output will be written to. Required on PUT (CreateOrReplace) requests. |
|diagnostics | [Diagnostics](#diagnostics) | false | Describes conditions applicable to the Input, Output, or the job overall, that warrant customer attention. |
|serialization | [Serialization](#serialization) | false | Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests. |
        
## OutputDataSource

Describes the data source that output will be written to.

```puppet
$azure_output_data_source = {
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|type | String | false | Indicates the type of data source output will be written to. Required on PUT (CreateOrReplace) requests. |
        
## Diagnostics

Describes conditions applicable to the Input, Output, or the job overall, that warrant customer attention.

```puppet
$azure_diagnostics = {
  conditions => $azure_diagnostic_condition
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|conditions | [DiagnosticCondition](#diagnosticcondition) | false | A collection of zero or more conditions applicable to the resource, or to the job overall, that warrant customer attention. |
        
## DiagnosticCondition

Condition applicable to the resource, or to the job overall, that warrant customer attention.

```puppet
$azure_diagnostic_condition = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## Serialization

Describes how data from an input is serialized or how data is serialized when written to an output.

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
