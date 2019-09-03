Document: "streamingjobs"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/streamanalytics/resource-manager/Microsoft.StreamAnalytics/stable/2016-03-01/streamingjobs.json")

## StreamingJob

A streaming job object, containing all information associated with the named streaming job.

```puppet
azure_streaming_job {
  api_version => "api_version",
  job_name => "job_name",
  location => "location (optional)",
  properties => $azure_streaming_job_properties
  resource_group_name => "resource_group_name",
  streaming_job => "streamingJob",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|job_name | String | true | The name of the streaming job. |
|location | String | false | Resource location. Required on PUT (CreateOrReplace) requests. |
|properties | [StreamingJobProperties](#streamingjobproperties) | false | The properties that are associated with a streaming job.  Required on PUT (CreateOrReplace) requests. |
|resource_group_name | String | true | The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal. |
|streaming_job | Hash | true | The definition of the streaming job that will be used to create a new streaming job or replace the existing one. |
|subscription_id | String | true | GUID which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
        
## StreamingJobProperties

The properties that are associated with a streaming job.

```puppet
$azure_streaming_job_properties = {
  compatibilityLevel => $azure_compatibility_level
  dataLocale => "dataLocale (optional)",
  eventsLateArrivalMaxDelayInSeconds => "1234 (optional)",
  eventsOutOfOrderMaxDelayInSeconds => "1234 (optional)",
  eventsOutOfOrderPolicy => $azure_events_out_of_order_policy
  functions => $azure_function
  inputs => $azure_input
  outputErrorPolicy => $azure_output_error_policy
  outputs => $azure_output
  outputStartMode => $azure_output_start_mode
  outputStartTime => "outputStartTime (optional)",
  sku => $azure_sku
  transformation => $azure_transformation
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|compatibilityLevel | [CompatibilityLevel](#compatibilitylevel) | false | Controls certain runtime behaviors of the streaming job. |
|dataLocale | String | false | The data locale of the stream analytics job. Value should be the name of a supported .NET Culture from the set https://msdn.microsoft.com/en-us/library/system.globalization.culturetypes(v=vs.110).aspx. Defaults to 'en-US' if none specified. |
|eventsLateArrivalMaxDelayInSeconds | Integer | false | The maximum tolerable delay in seconds where events arriving late could be included.  Supported range is -1 to 1814399 (20.23:59:59 days) and -1 is used to specify wait indefinitely. If the property is absent, it is interpreted to have a value of -1. |
|eventsOutOfOrderMaxDelayInSeconds | Integer | false | The maximum tolerable delay in seconds where out-of-order events can be adjusted to be back in order. |
|eventsOutOfOrderPolicy | [EventsOutOfOrderPolicy](#eventsoutoforderpolicy) | false | Indicates the policy to apply to events that arrive out of order in the input event stream. |
|functions | [Function](#function) | false | A list of one or more functions for the streaming job. The name property for each function is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual transformation. |
|inputs | [Input](#input) | false | A list of one or more inputs to the streaming job. The name property for each input is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual input. |
|outputErrorPolicy | [OutputErrorPolicy](#outputerrorpolicy) | false | Indicates the policy to apply to events that arrive at the output and cannot be written to the external storage due to being malformed (missing column values, column values of wrong type or size). |
|outputs | [Output](#output) | false | A list of one or more outputs for the streaming job. The name property for each output is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual output. |
|outputStartMode | [OutputStartMode](#outputstartmode) | false | This property should only be utilized when it is desired that the job be started immediately upon creation. Value may be JobStartTime, CustomTime, or LastOutputEventTime to indicate whether the starting point of the output event stream should start whenever the job is started, start at a custom user time stamp specified via the outputStartTime property, or start from the last event output time. |
|outputStartTime | String | false | Value is either an ISO-8601 formatted time stamp that indicates the starting point of the output event stream, or null to indicate that the output event stream will start whenever the streaming job is started. This property must have a value if outputStartMode is set to CustomTime. |
|sku | [Sku](#sku) | false | Describes the SKU of the streaming job. Required on PUT (CreateOrReplace) requests. |
|transformation | [Transformation](#transformation) | false | Indicates the query and the number of streaming units to use for the streaming job. The name property of the transformation is required when specifying this property in a PUT request. This property cannot be modify via a PATCH operation. You must use the PATCH API available for the individual transformation. |
        
## CompatibilityLevel

Controls certain runtime behaviors of the streaming job.

```puppet
$azure_compatibility_level = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## EventsOutOfOrderPolicy

Indicates the policy to apply to events that arrive out of order in the input event stream.

```puppet
$azure_events_out_of_order_policy = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## Function

A function object, containing all information associated with the named function. All functions are contained under a streaming job.

```puppet
$azure_function = {
  name => "name (optional)",
  properties => $azure_function_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | Resource name |
|properties | [FunctionProperties](#functionproperties) | false | The properties that are associated with a function. |
        
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
        
## Input

An input object, containing all information associated with the named input. All inputs are contained under a streaming job.

```puppet
$azure_input = {
  name => "name (optional)",
  properties => $azure_input_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | Resource name |
|properties | [InputProperties](#inputproperties) | false | The properties that are associated with an input. Required on PUT (CreateOrReplace) requests. |
        
## InputProperties

The properties that are associated with an input.

```puppet
$azure_input_properties = {
  diagnostics => $azure_diagnostics
  serialization => $azure_serialization
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|diagnostics | [Diagnostics](#diagnostics) | false | Describes conditions applicable to the Input, Output, or the job overall, that warrant customer attention. |
|serialization | [Serialization](#serialization) | false | Describes how data from an input is serialized or how data is serialized when written to an output. Required on PUT (CreateOrReplace) requests. |
|type | String | false | Indicates whether the input is a source of reference data or stream data. Required on PUT (CreateOrReplace) requests. |
        
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
        
## OutputErrorPolicy

Indicates the policy to apply to events that arrive at the output and cannot be written to the external storage due to being malformed (missing column values, column values of wrong type or size).

```puppet
$azure_output_error_policy = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## Output

An output object, containing all information associated with the named output. All outputs are contained under a streaming job.

```puppet
$azure_output = {
  name => "name (optional)",
  properties => $azure_output_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | Resource name |
|properties | [OutputProperties](#outputproperties) | false | The properties that are associated with an output. Required on PUT (CreateOrReplace) requests. |
        
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
        
        
        
## OutputStartMode

Value may be JobStartTime, CustomTime, or LastOutputEventTime to indicate whether the starting point of the output event stream should start whenever the job is started, start at a custom user time stamp specified via the outputStartTime property, or start from the last event output time.

```puppet
$azure_output_start_mode = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## Sku

The properties that are associated with a SKU.

```puppet
$azure_sku = {
  name => "name (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | The name of the SKU. Required on PUT (CreateOrReplace) requests. |
        
## Transformation

A transformation object, containing all information associated with the named transformation. All transformations are contained under a streaming job.

```puppet
$azure_transformation = {
  name => "name (optional)",
  properties => $azure_transformation_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | Resource name |
|properties | [TransformationProperties](#transformationproperties) | false | The properties that are associated with a transformation. Required on PUT (CreateOrReplace) requests. |
        
## TransformationProperties

The properties that are associated with a transformation.

```puppet
$azure_transformation_properties = {
  query => "query (optional)",
  streamingUnits => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|query | String | false | Specifies the query that will be run in the streaming job. You can learn more about the Stream Analytics Query Language (SAQL) here: https://msdn.microsoft.com/library/azure/dn834998 . Required on PUT (CreateOrReplace) requests. |
|streamingUnits | Integer | false | Specifies the number of streaming units that the streaming job uses. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the StreamingJob

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.StreamAnalytics/streamingjobs/%{job_name}`|Put|Creates a streaming job or replaces an already existing streaming job.|StreamingJobs_CreateOrReplace|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.StreamAnalytics/streamingjobs`|Get|Lists all of the streaming jobs in the given subscription.|StreamingJobs_List|
|List - get one|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.StreamAnalytics/streamingjobs/%{job_name}`|Get|Gets details about the specified streaming job.|StreamingJobs_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.StreamAnalytics/streamingjobs`|Get|Lists all of the streaming jobs in the specified resource group.|StreamingJobs_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.StreamAnalytics/streamingjobs/%{job_name}`|Put|Creates a streaming job or replaces an already existing streaming job.|StreamingJobs_CreateOrReplace|
|Delete|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.StreamAnalytics/streamingjobs/%{job_name}`|Delete|Deletes a streaming job.|StreamingJobs_Delete|
