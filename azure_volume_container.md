Document: "storsimple"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/storsimple8000series/resource-manager/Microsoft.StorSimple/stable/2017-06-01/storsimple.json")

## VolumeContainer

The volume container.

```puppet
azure_volume_container {
  api_version => "api_version",
  device_name => "device_name",
  kind => "kind (optional)",
  manager_name => "manager_name",
  parameters => "parameters",
  properties => $azure_volume_container_properties
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
|parameters | Hash | true | The volume container to be added or updated. |
|properties | [VolumeContainerProperties](#volumecontainerproperties) | true | The volume container properties. |
|resource_group_name | String | true | The resource group name |
|subscription_id | String | true | The subscription id |
        
## VolumeContainerProperties

The properties of volume container.

```puppet
$azure_volume_container_properties = {
  bandWidthRateInMbps => "1234 (optional)",
  bandwidthSettingId => "bandwidthSettingId (optional)",
  encryptionKey => $azure_asymmetric_encrypted_secret
  storageAccountCredentialId => "storageAccountCredentialId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|bandWidthRateInMbps | Integer | false | The bandwidth-rate set on the volume container. |
|bandwidthSettingId | String | false | The ID of the bandwidth setting associated with the volume container. |
|encryptionKey | [AsymmetricEncryptedSecret](#asymmetricencryptedsecret) | false | The key used to encrypt data in the volume container. It is required when property 'EncryptionStatus' is 'Enabled'. |
|storageAccountCredentialId | String | true | The path ID of storage account associated with the volume container. |
        
## AsymmetricEncryptedSecret

Represent the secrets intended for encryption with asymmetric key pair.

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
