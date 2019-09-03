Document: "gallery"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/compute/resource-manager/Microsoft.Compute/stable/2019-07-01/gallery.json")

## GalleryImageVersion

Specifies information about the gallery Image Version that you want to create or update.

```puppet
azure_gallery_image_version {
  api_version => "api_version",
  gallery_image_name => "gallery_image_name",
  gallery_image_version => "galleryImageVersion",
  gallery_name => "gallery_name",
  location => "location (optional)",
  properties => $azure_gallery_image_version_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|gallery_image_name | String | true | The name of the gallery Image Definition in which the Image Version is to be created. |
|gallery_image_version | Hash | true | Parameters supplied to the create or update gallery Image Version operation. |
|gallery_name | String | true | The name of the Shared Image Gallery in which the Image Definition resides. |
|location | String | false | Resource location |
|properties | [GalleryImageVersionProperties](#galleryimageversionproperties) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
        
## GalleryImageVersionProperties

Describes the properties of a gallery Image Version.

```puppet
$azure_gallery_image_version_properties = {
  publishingProfile => $azure_gallery_image_version_publishing_profile
  replicationStatus => $azure_replication_status
  storageProfile => $azure_gallery_image_version_storage_profile
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|publishingProfile | [GalleryImageVersionPublishingProfile](#galleryimageversionpublishingprofile) | false |  |
|replicationStatus | [ReplicationStatus](#replicationstatus) | false |  |
|storageProfile | [GalleryImageVersionStorageProfile](#galleryimageversionstorageprofile) | true |  |
        
## GalleryImageVersionPublishingProfile

The publishing profile of a gallery Image Version.

```puppet
$azure_gallery_image_version_publishing_profile = {
  endOfLifeDate => "endOfLifeDate (optional)",
  excludeFromLatest => "excludeFromLatest (optional)",
  replicaCount => "1234 (optional)",
  storageAccountType => "storageAccountType (optional)",
  targetRegions => "targetRegions (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endOfLifeDate | String | false | The end of life date of the gallery Image Version. This property can be used for decommissioning purposes. This property is updatable. |
|excludeFromLatest | Boolean | false | If set to true, Virtual Machines deployed from the latest version of the Image Definition won't use this Image Version. |
|replicaCount | Integer | false | The number of replicas of the Image Version to be created per region. This property would take effect for a region when regionalReplicaCount is not specified. This property is updatable. |
|storageAccountType | String | false | Specifies the storage account type to be used to store the image. This property is not updatable. |
|targetRegions | Array | false | The target regions where the Image Version is going to be replicated to. This property is updatable. |
        
## ReplicationStatus

This is the replication status of the gallery Image Version.

```puppet
$azure_replication_status = {
  summary => $azure_regional_replication_status
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|summary | [RegionalReplicationStatus](#regionalreplicationstatus) | false | This is a summary of replication status for each region. |
        
## RegionalReplicationStatus

This is the regional replication status.

```puppet
$azure_regional_replication_status = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## GalleryImageVersionStorageProfile

This is the storage profile of a Gallery Image Version.

```puppet
$azure_gallery_image_version_storage_profile = {
  dataDiskImages => $azure_gallery_data_disk_image
  osDiskImage => $azure_gallery_os_disk_image
  source => $azure_gallery_artifact_version_source
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dataDiskImages | [GalleryDataDiskImage](#gallerydatadiskimage) | false | A list of data disk images. |
|osDiskImage | [GalleryOSDiskImage](#galleryosdiskimage) | false |  |
|source | [GalleryArtifactVersionSource](#galleryartifactversionsource) | false |  |
        
## GalleryDataDiskImage

This is the data disk image.

```puppet
$azure_gallery_data_disk_image = {
  hostCaching => "hostCaching (optional)",
  lun => "1234",
  source => "source (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|hostCaching | String | false | The host caching of the disk. Valid values are 'None', 'ReadOnly', and 'ReadWrite' |
|lun | Integer | true | This property specifies the logical unit number of the data disk. This value is used to identify data disks within the Virtual Machine and therefore must be unique for each data disk attached to the Virtual Machine. |
|source | String | false |  |
        
## GalleryOSDiskImage

This is the OS disk image.

```puppet
$azure_gallery_os_disk_image = {
  hostCaching => "hostCaching (optional)",
  source => "source (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|hostCaching | String | false | The host caching of the disk. Valid values are 'None', 'ReadOnly', and 'ReadWrite' |
|source | String | false |  |
        
## GalleryArtifactVersionSource

The gallery artifact version source.

```puppet
$azure_gallery_artifact_version_source = {
  id => "id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | true | The id of the gallery artifact version source. Can specify a disk uri, snapshot uri, or user image. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the GalleryImageVersion

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/images/%{gallery_image_name}/versions/%{gallery_image_version_name}`|Put|Create or update a gallery Image Version.|GalleryImageVersions_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/images/%{gallery_image_name}/versions/%{gallery_image_version_name}`|Get|Retrieves information about a gallery Image Version.|GalleryImageVersions_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/images/%{gallery_image_name}/versions`|Get|List gallery Image Versions in a gallery Image Definition.|GalleryImageVersions_ListByGalleryImage|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/images/%{gallery_image_name}/versions/%{gallery_image_version_name}`|Put|Create or update a gallery Image Version.|GalleryImageVersions_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/images/%{gallery_image_name}/versions/%{gallery_image_version_name}`|Delete|Delete a gallery Image Version.|GalleryImageVersions_Delete|
