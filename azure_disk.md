Document: "disk"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/compute/resource-manager/Microsoft.Compute/stable/2019-03-01/disk.json")

## Disk

Disk resource.

```puppet
azure_disk {
  api_version => "api_version",
  disk => "disk",
  location => "location (optional)",
  properties => $azure_disk_properties
  resource_group_name => "resource_group_name",
  sku => $azure_disk_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  zones => "zones (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|disk | Hash | true | Disk object supplied in the body of the Put disk operation. |
|location | String | false | Resource location |
|properties | [DiskProperties](#diskproperties) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|sku | [DiskSku](#disksku) | false |  |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
|zones | Array | false | The Logical zone list for Disk. |
        
## DiskProperties

Disk resource properties.

```puppet
$azure_disk_properties = {
  creationData => $azure_creation_data
  diskIOPSReadWrite => "1234 (optional)",
  diskMBpsReadWrite => "1234 (optional)",
  diskSizeGB => "1234 (optional)",
  encryptionSettingsCollection => $azure_encryption_settings_collection
  hyperVGeneration => "hyperVGeneration (optional)",
  osType => "osType (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|creationData | [CreationData](#creationdata) | true | Disk source information. CreationData information cannot be changed after the disk has been created. |
|diskIOPSReadWrite | Integer | false | The number of IOPS allowed for this disk; only settable for UltraSSD disks. One operation can transfer between 4k and 256k bytes. |
|diskMBpsReadWrite | Integer | false | The bandwidth allowed for this disk; only settable for UltraSSD disks. MBps means millions of bytes per second - MB here uses the ISO notation, of powers of 10. |
|diskSizeGB | Integer | false | If creationData.createOption is Empty, this field is mandatory and it indicates the size of the disk to create. If this field is present for updates or creation with other options, it indicates a resize. Resizes are only allowed if the disk is not attached to a running VM, and can only increase the disk's size. |
|encryptionSettingsCollection | [EncryptionSettingsCollection](#encryptionsettingscollection) | false | Encryption settings collection used for Azure Disk Encryption, can contain multiple encryption settings per disk or snapshot. |
|hyperVGeneration | String | false | The hypervisor generation of the Virtual Machine. Applicable to OS disks only. |
|osType | String | false | The Operating System type. |
        
## CreationData

Data used when creating a disk.

```puppet
$azure_creation_data = {
  createOption => "createOption",
  imageReference => $azure_image_disk_reference
  sourceResourceId => "sourceResourceId (optional)",
  sourceUri => "sourceUri (optional)",
  storageAccountId => "storageAccountId (optional)",
  uploadSizeBytes => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|createOption | String | true | This enumerates the possible sources of a disk's creation. |
|imageReference | [ImageDiskReference](#imagediskreference) | false | Disk source information. |
|sourceResourceId | String | false | If createOption is Copy, this is the ARM id of the source snapshot or disk. |
|sourceUri | String | false | If createOption is Import, this is the URI of a blob to be imported into a managed disk. |
|storageAccountId | String | false | If createOption is Import, the Azure Resource Manager identifier of the storage account containing the blob to import as a disk. Required only if the blob is in a different subscription |
|uploadSizeBytes | Integer | false | If createOption is Upload, this is the size of the contents of the upload including the VHD footer. This value should be between 20972032 (20 MiB + 512 bytes for the VHD footer) and 35183298347520 bytes (32 TiB + 512 bytes for the VHD footer). |
        
## ImageDiskReference

The source image used for creating the disk.

```puppet
$azure_image_disk_reference = {
  id => "id",
  lun => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | true | A relative uri containing either a Platform Image Repository or user image reference. |
|lun | Integer | false | If the disk is created from an image's data disk, this is an index that indicates which of the data disks in the image to use. For OS disks, this field is null. |
        
## EncryptionSettingsCollection

Encryption settings for disk or snapshot

```puppet
$azure_encryption_settings_collection = {
  enabled => "enabled",
  encryptionSettings => $azure_encryption_settings_element
  encryptionSettingsVersion => "encryptionSettingsVersion (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|enabled | Boolean | true | Set this flag to true and provide DiskEncryptionKey and optional KeyEncryptionKey to enable encryption. Set this flag to false and remove DiskEncryptionKey and KeyEncryptionKey to disable encryption. If EncryptionSettings is null in the request object, the existing settings remain unchanged. |
|encryptionSettings | [EncryptionSettingsElement](#encryptionsettingselement) | false | A collection of encryption settings, one for each disk volume. |
|encryptionSettingsVersion | String | false | Describes what type of encryption is used for the disks. Once this field is set, it cannot be overwritten. '1.0' corresponds to Azure Disk Encryption with AAD app.'1.1' corresponds to Azure Disk Encryption. |
        
## EncryptionSettingsElement

Encryption settings for one disk volume.

```puppet
$azure_encryption_settings_element = {
  diskEncryptionKey => $azure_key_vault_and_secret_reference
  keyEncryptionKey => $azure_key_vault_and_key_reference
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|diskEncryptionKey | [KeyVaultAndSecretReference](#keyvaultandsecretreference) | false | Key Vault Secret Url and vault id of the disk encryption key |
|keyEncryptionKey | [KeyVaultAndKeyReference](#keyvaultandkeyreference) | false | Key Vault Key Url and vault id of the key encryption key. KeyEncryptionKey is optional and when provided is used to unwrap the disk encryption key. |
        
## KeyVaultAndSecretReference

Key Vault Secret Url and vault id of the encryption key 

```puppet
$azure_key_vault_and_secret_reference = {
  secretUrl => "secretUrl",
  sourceVault => $azure_source_vault
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|secretUrl | String | true | Url pointing to a key or secret in KeyVault |
|sourceVault | [SourceVault](#sourcevault) | true | Resource id of the KeyVault containing the key or secret |
        
## SourceVault

The vault id is an Azure Resource Manager Resource id in the form /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.KeyVault/vaults/{vaultName}

```puppet
$azure_source_vault = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource Id |
        
## KeyVaultAndKeyReference

Key Vault Key Url and vault id of KeK, KeK is optional and when provided is used to unwrap the encryptionKey

```puppet
$azure_key_vault_and_key_reference = {
  keyUrl => "keyUrl",
  sourceVault => $azure_source_vault
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|keyUrl | String | true | Url pointing to a key or secret in KeyVault |
|sourceVault | [SourceVault](#sourcevault) | true | Resource id of the KeyVault containing the key or secret |
        
        
## DiskSku

The disks sku name. Can be Standard_LRS, Premium_LRS, StandardSSD_LRS, or UltraSSD_LRS.

```puppet
$azure_disk_sku = {
  name => "name (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | The sku name. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Disk

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/disks/%{disk_name}`|Put|Creates or updates a disk.|Disks_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Compute/disks`|Get|Lists all the disks under a subscription.|Disks_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/disks/%{disk_name}`|Get|Gets information about a disk.|Disks_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/disks`|Get|Lists all the disks under a resource group.|Disks_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/disks/%{disk_name}`|Put|Creates or updates a disk.|Disks_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/disks/%{disk_name}`|Delete|Deletes a disk.|Disks_Delete|
