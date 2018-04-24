Document: "storsimple"
Path: "/root/specs/specification/storsimple8000series/resource-manager/Microsoft.StorSimple/stable/2017-06-01/storsimple.json")

## VolumeContainer

```puppet
azure_volume_container {
  api_version => "api_version",
  device_name => "device_name",
  id => "id (optional)",
  kind => "kind (optional)",
  manager_name => "manager_name",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_volume_container_properties
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
|parameters | Hash | true | The volume container to be added or updated. |
|properties | [VolumeContainerProperties](#volumecontainerproperties) | true | The volume container properties. |
|resource_group_name | String | true | The resource group name |
|subscription_id | String | true | The subscription id |
|type | String | false | The hierarchical type of the object. |
        
## VolumeContainerProperties

```puppet
$azure_volume_container_properties = {
  bandWidthRateInMbps => "1234 (optional)",
  bandwidthSettingId => "bandwidthSettingId (optional)",
  encryptionKey => $azure_asymmetric_encrypted_secret
  encryptionStatus => "encryptionStatus (optional)",
  ownerShipStatus => "ownerShipStatus (optional)",
  storageAccountCredentialId => "storageAccountCredentialId",
  totalCloudStorageUsageInBytes => "1234 (optional)",
  volumeCount => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|bandWidthRateInMbps | Integer | false | The bandwidth-rate set on the volume container. |
|bandwidthSettingId | String | false | The ID of the bandwidth setting associated with the volume container. |
|encryptionKey | [AsymmetricEncryptedSecret](#asymmetricencryptedsecret) | false | The key used to encrypt data in the volume container. It is required when property 'EncryptionStatus' is 'Enabled'. |
|encryptionStatus | String | false | The flag to denote whether encryption is enabled or not. |
|ownerShipStatus | String | false | The owner ship status of the volume container. Only when the status is 'NotOwned', the delete operation on the volume container is permitted. |
|storageAccountCredentialId | String | true | The path ID of storage account associated with the volume container. |
|totalCloudStorageUsageInBytes | Integer | false | The total cloud storage for the volume container. |
|volumeCount | Integer | false | The number of volumes in the volume Container. |
        
## AsymmetricEncryptedSecret

```puppet
$azure_asymmetric_encrypted_secret = {
  encryptionAlgorithm => "encryptionAlgorithm",
  encryptionCertThumbprint => "encryptionCertThumbprint (optional)",
  value => "value",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|encryptionAlgorithm | String | true | The algorithm used to encrypt 'Value'. |
|encryptionCertThumbprint | String | false | Thumbprint certificate that was used to encrypt 'Value'. If the value in unencrypted, it will be null. |
|value | String | true | The value of the secret. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the VolumeContainer

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/devices/%{device_name}/volumeContainers/%{volume_container_name}`|Put|Creates or updates the volume container.|VolumeContainers_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/devices/%{device_name}/volumeContainers/%{volume_container_name}`|Get|Gets the properties of the specified volume container name.|VolumeContainers_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/devices/%{device_name}/volumeContainers`|Get|Gets all the volume containers in a device.|VolumeContainers_ListByDevice|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/devices/%{device_name}/volumeContainers/%{volume_container_name}`|Put|Creates or updates the volume container.|VolumeContainers_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/devices/%{device_name}/volumeContainers/%{volume_container_name}`|Delete|Deletes the volume container.|VolumeContainers_Delete|