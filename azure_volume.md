Document: "storsimple"


Path: "/tmp/azure-rest-api-specs/specification/storsimple8000series/resource-manager/Microsoft.StorSimple/stable/2017-06-01/storsimple.json")

## Volume

The volume.

```puppet
azure_volume {
  api_version => "api_version",
  device_name => "device_name",
  kind => "kind (optional)",
  manager_name => "manager_name",
  parameters => "parameters",
  properties => $azure_volume_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  volume_container_name => "volume_container_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The api version |
|device_name | String | true | The device name |
|kind | String | false | The Kind of the object. Currently only Series8000 is supported |
|manager_name | String | true | The manager name |
|parameters | Hash | true | Volume to be created or updated. |
|properties | [VolumeProperties](#volumeproperties) | true | The properties of the volume. |
|resource_group_name | String | true | The resource group name |
|subscription_id | String | true | The subscription id |
|volume_container_name | String | true | The volume container name. |
        
## VolumeProperties

The properties of volume.

```puppet
$azure_volume_properties = {
  accessControlRecordIds => "accessControlRecordIds",
  monitoringStatus => "monitoringStatus",
  sizeInBytes => "1234",
  volumeStatus => "volumeStatus",
  volumeType => "volumeType",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accessControlRecordIds | Array | true | The IDs of the access control records, associated with the volume. |
|monitoringStatus | String | true | The monitoring status of the volume. |
|sizeInBytes | Integer | true | The size of the volume in bytes. |
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
