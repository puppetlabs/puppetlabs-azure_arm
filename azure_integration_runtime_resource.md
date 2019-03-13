Document: "datafactory"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/datafactory/resource-manager/Microsoft.DataFactory/stable/2018-06-01/datafactory.json")

## IntegrationRuntimeResource

Integration runtime resource type.

```puppet
azure_integration_runtime_resource {
  api_version => "api_version",
  factory_name => "factory_name",
  integration_runtime => "integrationRuntime",
  integration_runtime_name => "integration_runtime_name",
  properties => $azure_integration_runtime
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|factory_name | String | true | The factory name. |
|integration_runtime | Hash | true | Integration runtime resource definition. |
|integration_runtime_name | String | true | The integration runtime name. |
|properties | [IntegrationRuntime](#integrationruntime) | true | Integration runtime properties. |
|resource_group_name | String | true | The resource group name. |
|subscription_id | String | true | The subscription identifier. |
        
## IntegrationRuntime

Azure Data Factory nested object which serves as a compute resource for activities.

```puppet
$azure_integration_runtime = {
  description => "description (optional)",
  type => $azure_integration_runtime_type
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | Integration runtime description. |
|type | [IntegrationRuntimeType](#integrationruntimetype) | true | Type of integration runtime. |
        
## IntegrationRuntimeType

The type of integration runtime.

```puppet
$azure_integration_runtime_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the IntegrationRuntimeResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/integrationRuntimes/%{integration_runtime_name}`|Put|Creates or updates an integration runtime.|IntegrationRuntimes_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/integrationRuntimes/%{integration_runtime_name}`|Get|Gets an integration runtime.|IntegrationRuntimes_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/integrationRuntimes`|Get|Lists integration runtimes.|IntegrationRuntimes_ListByFactory|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/integrationRuntimes/%{integration_runtime_name}`|Put|Creates or updates an integration runtime.|IntegrationRuntimes_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/integrationRuntimes/%{integration_runtime_name}`|Delete|Deletes an integration runtime.|IntegrationRuntimes_Delete|
