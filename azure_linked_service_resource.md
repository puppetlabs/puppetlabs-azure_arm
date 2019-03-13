Document: "datafactory"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/datafactory/resource-manager/Microsoft.DataFactory/stable/2018-06-01/datafactory.json")

## LinkedServiceResource

Linked service resource type.

```puppet
azure_linked_service_resource {
  api_version => "api_version",
  factory_name => "factory_name",
  linked_service => "linkedService",
  linked_service_name => "linked_service_name",
  properties => $azure_linked_service
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|factory_name | String | true | The factory name. |
|linked_service | Hash | true | Linked service resource definition. |
|linked_service_name | String | true | The linked service name. |
|properties | [LinkedService](#linkedservice) | true | Properties of linked service. |
|resource_group_name | String | true | The resource group name. |
|subscription_id | String | true | The subscription identifier. |
        
## LinkedService

The Azure Data Factory nested object which contains the information and credential which can be used to connect with related store or compute resource.

```puppet
$azure_linked_service = {
  annotations => "annotations (optional)",
  connectVia => $azure_integration_runtime_reference
  description => "description (optional)",
  parameters => $azure_parameter_definition_specification
  type => "type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|annotations | Array | false | List of tags that can be used for describing the Dataset. |
|connectVia | [IntegrationRuntimeReference](#integrationruntimereference) | false | The integration runtime reference. |
|description | String | false | Linked service description. |
|parameters | [ParameterDefinitionSpecification](#parameterdefinitionspecification) | false | Parameters for linked service. |
|type | String | true | Type of linked service. |
        
## IntegrationRuntimeReference

Integration runtime reference type.

```puppet
$azure_integration_runtime_reference = {
  parameters => $azure_parameter_value_specification
  referenceName => "referenceName",
  type => "type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|parameters | [ParameterValueSpecification](#parametervaluespecification) | false | Arguments for integration runtime. |
|referenceName | String | true | Reference integration runtime name. |
|type | String | true | Type of integration runtime. |
        
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

Here is a list of endpoints that we use to create, read, update and delete the LinkedServiceResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/linkedservices/%{linked_service_name}`|Put|Creates or updates a linked service.|LinkedServices_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/linkedservices/%{linked_service_name}`|Get|Gets a linked service.|LinkedServices_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/linkedservices`|Get|Lists linked services.|LinkedServices_ListByFactory|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/linkedservices/%{linked_service_name}`|Put|Creates or updates a linked service.|LinkedServices_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/linkedservices/%{linked_service_name}`|Delete|Deletes a linked service.|LinkedServices_Delete|
