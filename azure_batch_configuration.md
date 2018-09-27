Document: "logic"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/logic/resource-manager/Microsoft.Logic/stable/2016-06-01/logic.json")

## BatchConfiguration

The batch configuration resource definition.

```puppet
azure_batch_configuration {
  api_version => "api_version",
  batch_configuration => "batchConfiguration",
  integration_account_name => "integration_account_name",
  location => "location (optional)",
  properties => $azure_batch_configuration_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|batch_configuration | Hash | true | The batch configuration. |
|integration_account_name | String | true | The integration account name. |
|location | String | false | The resource location. |
|properties | [BatchConfigurationProperties](#batchconfigurationproperties) | true | The batch configuration properties. |
|resource_group_name | String | true | The resource group name. |
|subscription_id | String | true | The subscription id. |
|tags | Hash | false | The resource tags. |
        
## BatchConfigurationProperties

The batch configuration properties definition.

```puppet
$azure_batch_configuration_properties = {
  batchGroupName => "batchGroupName",
  changedTime => "changedTime (optional)",
  createdTime => "createdTime (optional)",
  metadata => "metadata (optional)",
  releaseCriteria => $azure_batch_release_criteria
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|batchGroupName | String | true | The name of the batch group. |
|changedTime | String | false | The artifact changed time. |
|createdTime | String | false | The artifact creation time. |
|metadata | String | false |  |
|releaseCriteria | [BatchReleaseCriteria](#batchreleasecriteria) | true | The batch release criteria. |
        
## BatchReleaseCriteria

The batch release criteria.

```puppet
$azure_batch_release_criteria = {
  batchSize => "1234 (optional)",
  messageCount => "1234 (optional)",
  recurrence => $azure_workflow_trigger_recurrence
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|batchSize | Integer | false | The batch size in bytes. |
|messageCount | Integer | false | The message count. |
|recurrence | [WorkflowTriggerRecurrence](#workflowtriggerrecurrence) | false | The recurrence. |
        
## WorkflowTriggerRecurrence

The workflow trigger recurrence.

```puppet
$azure_workflow_trigger_recurrence = {
  endTime => "endTime (optional)",
  frequency => $azure_recurrence_frequency
  interval => "1234 (optional)",
  schedule => $azure_recurrence_schedule
  startTime => "startTime (optional)",
  timeZone => "timeZone (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endTime | String | false | The end time. |
|frequency | [RecurrenceFrequency](#recurrencefrequency) | false | The frequency. |
|interval | Integer | false | The interval. |
|schedule | [RecurrenceSchedule](#recurrenceschedule) | false | The recurrence schedule. |
|startTime | String | false | The start time. |
|timeZone | String | false | The time zone. |
        
## RecurrenceFrequency



```puppet
$azure_recurrence_frequency = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## RecurrenceSchedule

The recurrence schedule.

```puppet
$azure_recurrence_schedule = {
  hours => "hours (optional)",
  minutes => "minutes (optional)",
  monthDays => "monthDays (optional)",
  monthlyOccurrences => $azure_recurrence_schedule_occurrence
  weekDays => "weekDays (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|hours | Array | false | The hours. |
|minutes | Array | false | The minutes. |
|monthDays | Array | false | The month days. |
|monthlyOccurrences | [RecurrenceScheduleOccurrence](#recurrencescheduleoccurrence) | false | The monthly occurrences. |
|weekDays | Array | false | The days of the week. |
        
## RecurrenceScheduleOccurrence

The recurrence schedule occurrence.

```puppet
$azure_recurrence_schedule_occurrence = {
  day => $azure_day_of_week
  occurrence => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|day | [DayOfWeek](#dayofweek) | false | The day of the week. |
|occurrence | Integer | false | The occurrence. |
        
## DayOfWeek



```puppet
$azure_day_of_week = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the BatchConfiguration

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/batchConfigurations/%{batch_configuration_name}`|Put|Create or update a batch configuration for an integration account.|IntegrationAccountBatchConfigurations_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/batchConfigurations/%{batch_configuration_name}`|Get|Get a batch configuration for an integration account.|IntegrationAccountBatchConfigurations_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/batchConfigurations`|Get|List the batch configurations for an integration account.|IntegrationAccountBatchConfigurations_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/batchConfigurations/%{batch_configuration_name}`|Put|Create or update a batch configuration for an integration account.|IntegrationAccountBatchConfigurations_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/batchConfigurations/%{batch_configuration_name}`|Delete|Delete a batch configuration for an integration account.|IntegrationAccountBatchConfigurations_Delete|
