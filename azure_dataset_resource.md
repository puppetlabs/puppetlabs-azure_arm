Document: "datafactory"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/datafactory/resource-manager/Microsoft.DataFactory/stable/2018-06-01/datafactory.json")

## DatasetResource

Dataset resource type.

```puppet
azure_dataset_resource {
  api_version => "api_version",
  dataset => "dataset",
  dataset_name => "dataset_name",
  factory_name => "factory_name",
  properties => $azure_dataset
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|dataset | Hash | true | Dataset resource definition. |
|dataset_name | String | true | The dataset name. |
|factory_name | String | true | The factory name. |
|properties | [Dataset](#dataset) | true | Dataset properties. |
|resource_group_name | String | true | The resource group name. |
|subscription_id | String | true | The subscription identifier. |
        
## Dataset

The Azure Data Factory nested object which identifies data within different data stores, such as tables, files, folders, and documents.

```puppet
$azure_dataset = {
  annotations => "annotations (optional)",
  description => "description (optional)",
  folder => "folder (optional)",
  linkedServiceName => $azure_linked_service_reference
  parameters => $azure_parameter_definition_specification
  structure => "structure (optional)",
  type => "type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|annotations | Array | false | List of tags that can be used for describing the Dataset. |
|description | String | false | Dataset description. |
|folder | Hash | false | The folder that this Dataset is in. If not specified, Dataset will appear at the root level. |
|linkedServiceName | [LinkedServiceReference](#linkedservicereference) | true | Linked service reference. |
|parameters | [ParameterDefinitionSpecification](#parameterdefinitionspecification) | false | Parameters for dataset. |
|structure | Hash | false | Columns that define the structure of the dataset. Type: array (or Expression with resultType array), itemType: DatasetDataElement. |
|type | String | true | Type of dataset. |
        
## LinkedServiceReference

Linked service reference type.

```puppet
$azure_linked_service_reference = {
  parameters => $azure_parameter_value_specification
  referenceName => "referenceName",
  type => "type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|parameters | [ParameterValueSpecification](#parametervaluespecification) | false | Arguments for LinkedService. |
|referenceName | String | true | Reference LinkedService name. |
|type | String | true | Linked service reference type. |
        
## ParameterValueSpecification

An object mapping parameter names to argument values.

```puppet
$azure_parameter_value_specification = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ParameterDefinitionSpecification

Definition of all parameters for an entity.

```puppet
$azure_parameter_definition_specification = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DatasetResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/datasets/%{dataset_name}`|Put|Creates or updates a dataset.|Datasets_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/datasets/%{dataset_name}`|Get|Gets a dataset.|Datasets_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/datasets`|Get|Lists datasets.|Datasets_ListByFactory|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/datasets/%{dataset_name}`|Put|Creates or updates a dataset.|Datasets_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/datasets/%{dataset_name}`|Delete|Deletes a dataset.|Datasets_Delete|
