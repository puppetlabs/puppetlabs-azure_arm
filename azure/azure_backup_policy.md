Document: "storsimple"
Path: "/root/specs/specification/storsimple8000series/resource-manager/Microsoft.StorSimple/stable/2017-06-01/storsimple.json")

## BackupPolicy

```puppet
azure_backup_policy {
  api_version => "api_version",
  device_name => "device_name",
  id => "id (optional)",
  kind => "kind (optional)",
  manager_name => "manager_name",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_backup_policy_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The api version |
|device_name | String | true | The device name |
|id | String | false | The path ID that uniquely identifies the object. |
|kind | String | false | The Kind of the object. Currently only Series8000 is supported |
|manager_name | String | true | The manager name |
|name | String | false | The name of the object. |
|parameters | Hash | true | The backup policy. |
|properties | [BackupPolicyProperties](#backuppolicyproperties) | true | The properties of the backup policy. |
|resource_group_name | String | true | The resource group name |
|subscription_id | String | true | The subscription id |
|type | String | false | The hierarchical type of the object. |
        
## BackupPolicyProperties

```puppet
$azure_backup_policy_properties = {
  backupPolicyCreationType => "backupPolicyCreationType (optional)",
  lastBackupTime => "lastBackupTime (optional)",
  nextBackupTime => "nextBackupTime (optional)",
  scheduledBackupStatus => "scheduledBackupStatus (optional)",
  schedulesCount => "1234 (optional)",
  ssmHostName => "ssmHostName (optional)",
  volumeIds => "volumeIds",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|backupPolicyCreationType | String | false | The backup policy creation type. Indicates whether this was created through SaaS or through StorSimple Snapshot Manager. |
|lastBackupTime | String | false | The time of the last backup for the backup policy. |
|nextBackupTime | String | false | The time of the next backup for the backup policy. |
|scheduledBackupStatus | String | false | Indicates whether atleast one of the schedules in the backup policy is active or not. |
|schedulesCount | Integer | false | The count of schedules the backup policy contains. |
|ssmHostName | String | false | If the backup policy was created by StorSimple Snapshot Manager, then this field indicates the hostname of the StorSimple Snapshot Manager. |
|volumeIds | Array | true | The path IDs of the volumes which are part of the backup policy. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the BackupPolicy

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/devices/%{device_name}/backupPolicies/%{backup_policy_name}`|Put|Creates or updates the backup policy.|BackupPolicies_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/devices/%{device_name}/backupPolicies/%{backup_policy_name}`|Get|Gets the properties of the specified backup policy name.|BackupPolicies_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/devices/%{device_name}/backupPolicies`|Get|Gets all the backup policies in a device.|BackupPolicies_ListByDevice|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/devices/%{device_name}/backupPolicies/%{backup_policy_name}`|Put|Creates or updates the backup policy.|BackupPolicies_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/devices/%{device_name}/backupPolicies/%{backup_policy_name}`|Delete|Deletes the backup policy.|BackupPolicies_Delete|