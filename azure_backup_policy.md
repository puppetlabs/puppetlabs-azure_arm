Document: "storsimple"


Path: "/tmp/azure-rest-api-specs/specification/storsimple8000series/resource-manager/Microsoft.StorSimple/stable/2017-06-01/storsimple.json")

## BackupPolicy

The backup policy.

```puppet
azure_backup_policy {
  api_version => "api_version",
  device_name => "device_name",
  kind => "kind (optional)",
  manager_name => "manager_name",
  parameters => "parameters",
  properties => $azure_backup_policy_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The api version |
|device_name | String | true | The device name |
|kind | String | false | The Kind of the object. Currently only Series8000 is supported |
|manager_name | String | true | The manager name |
|parameters | Hash | true | The backup policy. |
|properties | [BackupPolicyProperties](#backuppolicyproperties) | true | The properties of the backup policy. |
|resource_group_name | String | true | The resource group name |
|subscription_id | String | true | The subscription id |
        
## BackupPolicyProperties

The properties of the backup policy.

```puppet
$azure_backup_policy_properties = {
  volumeIds => "volumeIds",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
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
