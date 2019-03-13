Document: "Encoding"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/mediaservices/resource-manager/Microsoft.Media/stable/2018-07-01/Encoding.json")

## Transform

A Transform encapsulates the rules or instructions for generating desired outputs from input media, such as by transcoding or by extracting insights. After the Transform is created, it can be applied to input media by creating Jobs.

```puppet
azure_transform {
  account_name => "account_name",
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_transform_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The Media Services account name. |
|api_version | String | true | The Version of the API to be used with the client request. |
|parameters | Hash | true | The request parameters |
|properties | [TransformProperties](#transformproperties) | false | The resource properties. |
|resource_group_name | String | true | The name of the resource group within the Azure subscription. |
|subscription_id | String | true | The unique identifier for a Microsoft Azure subscription. |
        
## TransformProperties

A Transform.

```puppet
$azure_transform_properties = {
  description => "description (optional)",
  outputs => $azure_transform_output
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | An optional verbose description of the Transform. |
|outputs | [TransformOutput](#transformoutput) | true | An array of one or more TransformOutputs that the Transform should generate. |
        
## TransformOutput

Describes the properties of a TransformOutput, which are the rules to be applied while generating the desired output.

```puppet
$azure_transform_output = {
  onError => "onError (optional)",
  preset => $azure_preset
  relativePriority => "relativePriority (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|onError | String | false | A Transform can define more than one outputs. This property defines what the service should do when one output fails - either continue to produce other outputs, or, stop the other outputs. The overall Job state will not reflect failures of outputs that are specified with 'ContinueJob'. The default is 'StopProcessingJob'. |
|preset | [Preset](#preset) | true | Preset that describes the operations that will be used to modify, transcode, or extract insights from the source file to generate the output. |
|relativePriority | String | false | Sets the relative priority of the TransformOutputs within a Transform. This sets the priority that the service uses for processing TransformOutputs. The default priority is Normal. |
        
## Preset

Base type for all Presets, which define the recipe or instructions on how the input media files should be processed.

```puppet
$azure_preset = {
  @odata.type => "@odata.type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|@odata.type | String | true | The discriminator for derived types. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Transform

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/transforms/%{transform_name}`|Put|Creates or updates a new Transform.|Transforms_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/transforms/%{transform_name}`|Get|Gets a Transform.|Transforms_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/transforms`|Get|Lists the Transforms in the account.|Transforms_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/transforms/%{transform_name}`|Put|Creates or updates a new Transform.|Transforms_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/transforms/%{transform_name}`|Delete|Deletes a Transform.|Transforms_Delete|
