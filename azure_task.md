Document: "containerregistry_build"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/containerregistry/resource-manager/Microsoft.ContainerRegistry/stable/2018-09-01/containerregistry_build.json")

## Task

The task that has the ARM resource and task properties. 
The task will have all information to schedule a run against it.

```puppet
azure_task {
  api_version => "api_version",
  location => "location (optional)",
  properties => $azure_task_properties
  registry_name => "registry_name",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  task_create_parameters => "taskCreateParameters",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The client API version. |
|location | String | false | The location of the resource. This cannot be changed after the resource is created. |
|properties | [TaskProperties](#taskproperties) | false | The properties of a task. |
|registry_name | String | true | The name of the container registry. |
|resource_group_name | String | true | The name of the resource group to which the container registry belongs. |
|subscription_id | String | true | The Microsoft Azure subscription ID. |
|tags | Hash | false | The tags of the resource. |
|task_create_parameters | Hash | true | The parameters for creating a task. |
        
## TaskProperties

The properties of a task.

```puppet
$azure_task_properties = {
  agentConfiguration => $azure_agent_properties
  platform => $azure_platform_properties
  status => "status (optional)",
  step => $azure_task_step_properties
  timeout => "1234 (optional)",
  trigger => $azure_trigger_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|agentConfiguration | [AgentProperties](#agentproperties) | false | The machine configuration of the run agent. |
|platform | [PlatformProperties](#platformproperties) | true | The platform properties against which the run has to happen. |
|status | String | false | The current status of task. |
|step | [TaskStepProperties](#taskstepproperties) | true | The properties of a task step. |
|timeout | Integer | false | Run timeout in seconds. |
|trigger | [TriggerProperties](#triggerproperties) | false | The properties that describe all triggers for the task. |
        
## AgentProperties

The properties that determine the run agent configuration.

```puppet
$azure_agent_properties = {
  cpu => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|cpu | Integer | false | The CPU configuration in terms of number of cores required for the run. |
        
## PlatformProperties

The platform properties against which the run has to happen.

```puppet
$azure_platform_properties = {
  architecture => "architecture (optional)",
  os => "os",
  variant => "variant (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|architecture | String | false | The OS architecture. |
|os | String | true | The operating system type required for the run. |
|variant | String | false | Variant of the CPU. |
        
## TaskStepProperties

Base properties for any task step.

```puppet
$azure_task_step_properties = {
  baseImageDependencies => $azure_base_image_dependency
  contextAccessToken => "contextAccessToken (optional)",
  contextPath => "contextPath (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|baseImageDependencies | [BaseImageDependency](#baseimagedependency) | false | List of base image dependencies for a step. |
|contextAccessToken | String | false | The token (git PAT or SAS token of storage account blob) associated with the context for a step. |
|contextPath | String | false | The URL(absolute or relative) of the source context for the task step. |
        
## BaseImageDependency

Properties that describe a base image dependency.

```puppet
$azure_base_image_dependency = {
  digest => "digest (optional)",
  registry => "registry (optional)",
  repository => "repository (optional)",
  tag => "tag (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|digest | String | false | The sha256-based digest of the image manifest. |
|registry | String | false | The registry login server. |
|repository | String | false | The repository name. |
|tag | String | false | The tag name. |
|type | String | false | The type of the base image dependency. |
        
## TriggerProperties

The properties of a trigger.

```puppet
$azure_trigger_properties = {
  baseImageTrigger => $azure_base_image_trigger
  sourceTriggers => $azure_source_trigger
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|baseImageTrigger | [BaseImageTrigger](#baseimagetrigger) | false | The trigger based on base image dependencies. |
|sourceTriggers | [SourceTrigger](#sourcetrigger) | false | The collection of triggers based on source code repository. |
        
## BaseImageTrigger

The trigger based on base image dependency.

```puppet
$azure_base_image_trigger = {
  baseImageTriggerType => "baseImageTriggerType",
  name => "name",
  status => "status (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|baseImageTriggerType | String | true | The type of the auto trigger for base image dependency updates. |
|name | String | true | The name of the trigger. |
|status | String | false | The current status of trigger. |
        
## SourceTrigger

The properties of a source based trigger.

```puppet
$azure_source_trigger = {
  name => "name",
  sourceRepository => $azure_source_properties
  sourceTriggerEvents => "sourceTriggerEvents",
  status => "status (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | The name of the trigger. |
|sourceRepository | [SourceProperties](#sourceproperties) | true | The properties that describes the source(code) for the task. |
|sourceTriggerEvents | Array | true | The source event corresponding to the trigger. |
|status | String | false | The current status of trigger. |
        
## SourceProperties

The properties of the source code repository.

```puppet
$azure_source_properties = {
  branch => "branch (optional)",
  repositoryUrl => "repositoryUrl",
  sourceControlAuthProperties => $azure_auth_info
  sourceControlType => "sourceControlType",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|branch | String | false | The branch name of the source code. |
|repositoryUrl | String | true | The full URL to the source code repository |
|sourceControlAuthProperties | [AuthInfo](#authinfo) | false | The authorization properties for accessing the source code repository and to set upwebhooks for notifications. |
|sourceControlType | String | true | The type of source control service. |
        
## AuthInfo

The authorization properties for accessing the source code repository.

```puppet
$azure_auth_info = {
  expiresIn => "1234 (optional)",
  refreshToken => "refreshToken (optional)",
  scope => "scope (optional)",
  token => "token",
  tokenType => "tokenType",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|expiresIn | Integer | false | Time in seconds that the token remains valid |
|refreshToken | String | false | The refresh token used to refresh the access token. |
|scope | String | false | The scope of the access token. |
|token | String | true | The access token used to access the source control provider. |
|tokenType | String | true | The type of Auth token. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Task

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}/tasks/%{task_name}`|Put|Creates a task for a container registry with the specified parameters.|Tasks_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}/tasks/%{task_name}`|Get|Get the properties of a specified task.|Tasks_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}/tasks`|Get|Lists all the tasks for a specified container registry.|Tasks_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}/tasks/%{task_name}`|Put|Creates a task for a container registry with the specified parameters.|Tasks_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}/tasks/%{task_name}`|Delete|Deletes a specified task.|Tasks_Delete|
