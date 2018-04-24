Document: "compute"
Path: "/root/specs/specification/compute/resource-manager/Microsoft.Compute/stable/2017-12-01/compute.json")

## Image

```puppet
azure_image {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_image_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|id | String | false | Resource Id |
|location | String | false | Resource location |
|name | String | false | Resource name |
|parameters | Hash | true | Parameters supplied to the Create Image operation. |
|properties | [ImageProperties](#imageproperties) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
|type | String | false | Resource type |
        
## ImageProperties

```puppet
$azure_image_properties = {
  provisioningState => "provisioningState (optional)",
  sourceVirtualMachine => $azure_sub_resource
  storageProfile => $azure_image_storage_profile
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|provisioningState | String | false | The provisioning state. |
|sourceVirtualMachine | [SubResource](#subresource) | false | The source virtual machine from which Image is created. |
|storageProfile | [ImageStorageProfile](#imagestorageprofile) | false | Specifies the storage settings for the virtual machine disks. |
        
## SubResource

```puppet
$azure_sub_resource = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource Id |
        
## ImageStorageProfile

```puppet
$azure_image_storage_profile = {
  dataDisks => $azure_image_data_disk
  osDisk => $azure_image_os_disk
  zoneResilient => "zoneResilient (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dataDisks | [ImageDataDisk](#imagedatadisk) | false | Specifies the parameters that are used to add a data disk to a virtual machine. <br><br> For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-about-disks-vhds?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json). |
|osDisk | [ImageOSDisk](#imageosdisk) | false | Specifies information about the operating system disk used by the virtual machine. <br><br> For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-about-disks-vhds?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json). |
|zoneResilient | Boolean | false | Specifies whether an image is zone resilient or not. Default is false. Zone resilient images can be created only in regions that provide Zone Redundant Storage (ZRS). |
        
## ImageDataDisk

```puppet
$azure_image_data_disk = {
  blobUri => "blobUri (optional)",
  caching => "caching (optional)",
  diskSizeGB => "1234 (optional)",
  lun => "1234",
  managedDisk => $azure_sub_resource
  snapshot => $azure_sub_resource
  storageAccountType => $azure_storage_account_type
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|blobUri | String | false | The Virtual Hard Disk. |
|caching | String | false | Specifies the caching requirements. <br><br> Possible values are: <br><br> **None** <br><br> **ReadOnly** <br><br> **ReadWrite** <br><br> Default: **None for Standard storage. ReadOnly for Premium storage** |
|diskSizeGB | Integer | false | Specifies the size of empty data disks in gigabytes. This element can be used to overwrite the name of the disk in a virtual machine image. <br><br> This value cannot be larger than 1023 GB |
|lun | Integer | true | Specifies the logical unit number of the data disk. This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM. |
|managedDisk | [SubResource](#subresource) | false | The managedDisk. |
|snapshot | [SubResource](#subresource) | false | The snapshot. |
|storageAccountType | [StorageAccountType](#storageaccounttype) | false | Specifies the storage account type for the managed disk. Possible values are: Standard_LRS or Premium_LRS. |
        
        
        
## StorageAccountType

```puppet
$azure_storage_account_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ImageOSDisk

```puppet
$azure_image_os_disk = {
  blobUri => "blobUri (optional)",
  caching => "caching (optional)",
  diskSizeGB => "1234 (optional)",
  managedDisk => $azure_sub_resource
  osState => "osState",
  osType => "osType",
  snapshot => $azure_sub_resource
  storageAccountType => $azure_storage_account_type
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|blobUri | String | false | The Virtual Hard Disk. |
|caching | String | false | Specifies the caching requirements. <br><br> Possible values are: <br><br> **None** <br><br> **ReadOnly** <br><br> **ReadWrite** <br><br> Default: **None for Standard storage. ReadOnly for Premium storage** |
|diskSizeGB | Integer | false | Specifies the size of empty data disks in gigabytes. This element can be used to overwrite the name of the disk in a virtual machine image. <br><br> This value cannot be larger than 1023 GB |
|managedDisk | [SubResource](#subresource) | false | The managedDisk. |
|osState | String | true | The OS State. |
|osType | String | true | This property allows you to specify the type of the OS that is included in the disk if creating a VM from a custom image. <br><br> Possible values are: <br><br> **Windows** <br><br> **Linux** |
|snapshot | [SubResource](#subresource) | false | The snapshot. |
|storageAccountType | [StorageAccountType](#storageaccounttype) | false | Specifies the storage account type for the managed disk. Possible values are: Standard_LRS or Premium_LRS. |
        
        
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Image

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/images/%{image_name}`|Put|Create or update an image.|Images_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Compute/images`|Get|Gets the list of Images in the subscription. Use nextLink property in the response to get the next page of Images. Do this till nextLink is null to fetch all the Images.|Images_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/images/%{image_name}`|Get|Gets an image.|Images_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/images`|Get|Gets the list of images under a resource group.|Images_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/images/%{image_name}`|Put|Create or update an image.|Images_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/images/%{image_name}`|Delete|Deletes an Image.|Images_Delete|