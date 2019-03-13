Document: "Encoding"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/mediaservices/resource-manager/Microsoft.Media/stable/2018-07-01/Encoding.json")

## Job

A Job resource type. The progress and state can be obtained by polling a Job or subscribing to events using EventGrid.

```puppet
azure_media_job {
  account_name => "account_name",
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_job_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  transform_name => "transform_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The Media Services account name. |
|api_version | String | true | The Version of the API to be used with the client request. |
|parameters | Hash | true | The request parameters |
|properties | [JobProperties](#jobproperties) | false | The resource properties. |
|resource_group_name | String | true | The name of the resource group within the Azure subscription. |
|subscription_id | String | true | The unique identifier for a Microsoft Azure subscription. |
|transform_name | String | true | The Transform name. |
        
## JobProperties

Properties of the Job.

```puppet
$azure_job_properties = {
  correlationData => "correlationData (optional)",
  description => "description (optional)",
  input => $azure_job_input
  outputs => $azure_job_output
  priority => "priority (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|correlationData | Hash | false | Customer provided correlation data that will be returned in Job and JobOutput state events. |
|description | String | false | Optional customer supplied description of the Job. |
|input | [JobInput](#jobinput) | true | The inputs for the Job. |
|outputs | [JobOutput](#joboutput) | true | The outputs for the Job. |
|priority | String | false | Priority with which the job should be processed. Higher priority jobs are processed before lower priority jobs. If not set, the default is normal. |
        
## JobInput

Base class for inputs to a Job.

```puppet
$azure_job_input = {
  @odata.type => "@odata.type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|@odata.type | String | true | The discriminator for derived types. |
        
## JobOutput

Describes all the properties of a JobOutput.

```puppet
$azure_job_output = {
  @odata.type => "@odata.type",
  error => $azure_job_error
  label => "label (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|@odata.type | String | true | The discriminator for derived types. |
|error | [JobError](#joberror) | false | If the JobOutput is in the Error state, it contains the details of the error. |
|label | String | false | A label that is assigned to a JobOutput in order to help uniquely identify it. This is useful when your Transform has more than one TransformOutput, whereby your Job has more than one JobOutput. In such cases, when you submit the Job, you will add two or more JobOutputs, in the same order as TransformOutputs in the Transform. Subsequently, when you retrieve the Job, either through events or on a GET request, you can use the label to easily identify the JobOutput. If a label is not provided, a default value of '{presetName}_{outputIndex}' will be used, where the preset name is the name of the preset in the corresponding TransformOutput and the output index is the relative index of the this JobOutput within the Job. Note that this index is the same as the relative index of the corresponding TransformOutput within its Transform. |
        
## JobError

Details of JobOutput errors.

```puppet
$azure_job_error = {
  details => $azure_job_error_detail
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|details | [JobErrorDetail](#joberrordetail) | false | An array of details about specific errors that led to this reported error. |
        
## JobErrorDetail

Details of JobOutput errors.

```puppet
$azure_job_error_detail = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Job

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/transforms/%{transform_name}/jobs/%{job_name}`|Put|Creates a Job.|Jobs_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/transforms/%{transform_name}/jobs/%{job_name}`|Get|Gets a Job.|Jobs_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/transforms/%{transform_name}/jobs`|Get|Lists all of the Jobs for the Transform.|Jobs_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/transforms/%{transform_name}/jobs/%{job_name}`|Put|Creates a Job.|Jobs_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/transforms/%{transform_name}/jobs/%{job_name}`|Delete|Deletes a Job.|Jobs_Delete|
