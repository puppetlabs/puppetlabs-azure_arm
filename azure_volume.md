Document: "storsimple"
Path: "/root/specs/specification/storsimple8000series/resource-manager/Microsoft.StorSimple/stable/2017-06-01/storsimple.json")

## Volume

```puppet
azure_volume {
  api_version => "api_version",
  device_name => "device_name",
  id => "id (optional)",
  kind => "kind (optional)",
  manager_name => "manager_name",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_volume_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
  volume_container_name => "volume_container_name",
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
|parameters | Hash | true | Volume to be created or updated. |
|properties | [VolumeProperties](#volumeproperties) | true | The properties of the volume. |
|resource_group_name | String | true | The resource group name |
|subscription_id | String | true | The subscription id |
|type | String | false | The hierarchical type of the object. |
|volume_container_name | String | true | The volume container name. |
        
## VolumeProperties

```puppet
$azure_volume_properties = {
  accessControlRecordIds => "accessControlRecordIds",
  backupPolicyIds => "backupPolicyIds (optional)",
  backupStatus => "backupStatus (optional)",
  monitoringStatus => "monitoringStatus",
  operationStatus => "operationStatus (optional)",
  sizeInBytes => "1234",
  volumeContainerId => "volumeContainerId (optional)",
  volumeStatus => "volumeStatus",
  volumeType => "volumeType",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accessControlRecordIds | Array | true | The IDs of the access control records, associated with the volume. |
|backupPolicyIds | Array | false | The IDs of the backup policies, in which this volume is part of. |
|backupStatus | String | false | The backup status of the volume. |
|monitoringStatus | String | true | The monitoring status of the volume. |
|operationStatus | String | false | The operation status on the volume. |
|sizeInBytes | Integer | true | The size of the volume in bytes. |
|volumeContainerId | String | false | The ID of the volume container, in which this volume is created. |
|volumeStatus | String | true | The volume status. |
|volumeType | String | true | The type of the volume. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Volume

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/devices/%{device_name}/volumeContainers/%{volume_container_name}/volumes/%{volume_name}`|Put|Creates or updates the volume.|Volumes_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/devices/%{device_name}/volumeContainers/%{volume_container_name}/volumes/%{volume_name}`|Get|Returns the properties of the specified volume name.|Volumes_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/devices/%{device_name}/volumeContainers/%{volume_container_name}/volumes`|Get|Retrieves all the volumes in a volume container.|Volumes_ListByVolumeContainer|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/devices/%{device_name}/volumeContainers/%{volume_container_name}/volumes/%{volume_name}`|Put|Creates or updates the volume.|Volumes_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/devices/%{device_name}/volumeContainers/%{volume_container_name}/volumes/%{volume_name}`|Delete|Deletes the volume.|Volumes_Delete|