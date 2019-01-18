Document: "storsimple"


Path: "/tmp/azure-rest-api-specs/specification/storsimple8000series/resource-manager/Microsoft.StorSimple/stable/2017-06-01/storsimple.json")

## BackupSchedule

The backup schedule.

```puppet
azure_backup_schedule {
  api_version => "api_version",
  backup_policy_name => "backup_policy_name",
  device_name => "device_name",
  kind => "kind (optional)",
  manager_name => "manager_name",
  parameters => "parameters",
  properties => $azure_backup_schedule_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The api version |
|backup_policy_name | String | true | The backup policy name. |
|device_name | String | true | The device name |
|kind | String | false | The Kind of the object. Currently only Series8000 is supported |
|manager_name | String | true | The manager name |
|parameters | Hash | true | The backup schedule. |
|properties | [BackupScheduleProperties](#backupscheduleproperties) | true | The properties of the backup schedule. |
|resource_group_name | String | true | The resource group name |
|subscription_id | String | true | The subscription id |
        
## BackupScheduleProperties

The properties of the backup schedule.

```puppet
$azure_backup_schedule_properties = {
  backupType => "backupType",
  retentionCount => "1234",
  scheduleRecurrence => $azure_schedule_recurrence
  scheduleStatus => "scheduleStatus",
  startTime => "startTime",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|backupType | String | true | The type of backup which needs to be taken. |
|retentionCount | Integer | true | The number of backups to be retained. |
|scheduleRecurrence | [ScheduleRecurrence](#schedulerecurrence) | true | The schedule recurrence. |
|scheduleStatus | String | true | The schedule status. |
|startTime | String | true | The start time of the schedule. |
        
## ScheduleRecurrence

The schedule recurrence.

```puppet
$azure_schedule_recurrence = {
  recurrenceType => "recurrenceType",
  recurrenceValue => "1234",
  weeklyDaysList => "weeklyDaysList (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|recurrenceType | String | true | The recurrence type. |
|recurrenceValue | Integer | true | The recurrence value. |
|weeklyDaysList | Array | false | The week days list. Applicable only for schedules of recurrence type 'weekly'. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the BackupSchedule

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/devices/%{device_name}/backupPolicies/%{backup_policy_name}/schedules/%{backup_schedule_name}`|Put|Creates or updates the backup schedule.|BackupSchedules_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/devices/%{device_name}/backupPolicies/%{backup_policy_name}/schedules/%{backup_schedule_name}`|Get|Gets the properties of the specified backup schedule name.|BackupSchedules_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/devices/%{device_name}/backupPolicies/%{backup_policy_name}/schedules`|Get|Gets all the backup schedules in a backup policy.|BackupSchedules_ListByBackupPolicy|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/devices/%{device_name}/backupPolicies/%{backup_policy_name}/schedules/%{backup_schedule_name}`|Put|Creates or updates the backup schedule.|BackupSchedules_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/devices/%{device_name}/backupPolicies/%{backup_policy_name}/schedules/%{backup_schedule_name}`|Delete|Deletes the backup schedule.|BackupSchedules_Delete|
