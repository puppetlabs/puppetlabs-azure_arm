Document: "datafactory"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/datafactory/resource-manager/Microsoft.DataFactory/stable/2018-06-01/datafactory.json")

## TriggerResource

Trigger resource type.

```puppet
azure_trigger_resource {
  api_version => "api_version",
  factory_name => "factory_name",
  properties => $azure_trigger
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  trigger => "trigger",
  trigger_name => "trigger_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|factory_name | String | true | The factory name. |
|properties | [Trigger](#trigger) | true | Properties of the trigger. |
|resource_group_name | String | true | The resource group name. |
|subscription_id | String | true | The subscription identifier. |
|trigger | Hash | true | Trigger resource definition. |
|trigger_name | String | true | The trigger name. |
        
## Trigger

Azure data factory nested object which contains information about creating pipeline run

```puppet
$azure_trigger = {
  description => "description (optional)",
  runtimeState => $azure_trigger_runtime_state
  type => "type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | Trigger description. |
|runtimeState | [TriggerRuntimeState](#triggerruntimestate) | false | Indicates if trigger is running or not. Updated when Start/Stop APIs are called on the Trigger. |
|type | String | true | Trigger type. |
        
## TriggerRuntimeState

Enumerates possible state of Triggers.

```puppet
$azure_trigger_runtime_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the TriggerResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/triggers/%{trigger_name}`|Put|Creates or updates a trigger.|Triggers_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/triggers/%{trigger_name}`|Get|Gets a trigger.|Triggers_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/triggers`|Get|Lists triggers.|Triggers_ListByFactory|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/triggers/%{trigger_name}`|Put|Creates or updates a trigger.|Triggers_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataFactory/factories/%{factory_name}/triggers/%{trigger_name}`|Delete|Deletes a trigger.|Triggers_Delete|
