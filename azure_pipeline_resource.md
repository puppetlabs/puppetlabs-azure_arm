Document: "datafactory"


Path: "/tmp/azure-rest-api-specs/specification/datafactory/resource-manager/Microsoft.DataFactory/stable/2018-06-01/datafactory.json")

## PipelineResource

Pipeline resource type.

```puppet
azure_pipeline_resource {
  api_version => "api_version",
  factory_name => "factory_name",
  pipeline => "pipeline",
  pipeline_name => "pipeline_name",
  properties => $azure_pipeline
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|factory_name | String | true | The factory name. |
|pipeline | Hash | true | Pipeline resource definition. |
|pipeline_name | String | true | The pipeline name. |
|properties | [Pipeline](#pipeline) | true | Properties of the pipeline. |
|resource_group_name | String | true | The resource group name. |
|subscription_id | String | true | The subscription identifier. |
        
## Pipeline

A data factory pipeline.

```puppet
$azure_pipeline = {
  activities => $azure_activity
  annotations => "annotations (optional)",
  concurrency => "1234 (optional)",
  description => "description (optional)",
  folder => "folder (optional)",
  parameters => $azure_parameter_definition_specification
  variables => $azure_variable_definition_specification
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|activities | [Activity](#activity) | false | List of activities in pipeline. |
|annotations | Array | false | List of tags that can be used for describing the Pipeline. |
|concurrency | Integer | false | The max number of concurrent runs for the pipeline. |
|description | String | false | The description of the pipeline. |
|folder | Hash | false | The folder that this Pipeline is in. If not specified, Pipeline will appear at the root level. |
|parameters | [ParameterDefinitionSpecification](#parameterdefinitionspecification) | false | List of parameters for pipeline. |
|variables | [VariableDefinitionSpecification](#variabledefinitionspecification) | false | List of variables for pipeline. |
        
## Activity

A pipeline activity.

```puppet
$azure_activity = {
  dependsOn => $azure_activity_dependency
  description => "description (optional)",
  name => "name",
  type => "type",
  userProperties => $azure_user_property
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dependsOn | [ActivityDependency](#activitydependency) | false | Activity depends on condition. |
|description | String | false | Activity description. |
|name | String | true | Activity name. |
|type | String | true | Type of activity. |
|userProperties | [UserProperty](#userproperty) | false | Activity user properties. |
        
## ActivityDependency

Activity dependency information.

```puppet
$azure_activity_dependency = {
  activity => "activity",
  dependencyConditions => "dependencyConditions",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|activity | String | true | Activity name. |
|dependencyConditions | Array | true | Match-Condition for the dependency. |
        
## UserProperty

User property.

```puppet
$azure_user_property = {
  name => "name",
  value => "value",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | User property name. |
|value | Hash | true | User property value. Type: string (or Expression with resultType string). |
        
## ParameterDefinitionSpecification

Definition of all parameters for an entity.

```puppet
$azure_parameter_definition_specification = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## VariableDefinitionSpecification

Definition of variable for a Pipeline.

```puppet
$azure_variable_definition_specification = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the PipelineResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/pipelines/%{pipeline_name}`|Put|Creates or updates a pipeline.|Pipelines_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/pipelines/%{pipeline_name}`|Get|Gets a pipeline.|Pipelines_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/pipelines`|Get|Lists pipelines.|Pipelines_ListByFactory|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/pipelines/%{pipeline_name}`|Put|Creates or updates a pipeline.|Pipelines_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/pipelines/%{pipeline_name}`|Delete|Deletes a pipeline.|Pipelines_Delete|
