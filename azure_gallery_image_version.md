Document: "gallery"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/compute/resource-manager/Microsoft.Compute/stable/2018-06-01/gallery.json")

## GalleryImageVersion

Specifies information about the gallery image version that you want to create or update.

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
|gallery_image_name | String | true | The name of the gallery image. |
|gallery_image_version | Hash | true | Parameters supplied to the create or update gallery image version operation. |
|gallery_name | String | true | The name of the gallery. |
|location | String | false | Resource location |
|properties | [GalleryImageVersionProperties](#galleryimageversionproperties) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
        
## GalleryImageVersionProperties

Describes the properties of a gallery image version.

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
|storageProfile | [GalleryImageVersionStorageProfile](#galleryimageversionstorageprofile) | false |  |
        
## GalleryImageVersionPublishingProfile

The publishing profile of a gallery image version.

```puppet
$azure_gallery_image_version_publishing_profile = {
  endOfLifeDate => "endOfLifeDate (optional)",
  excludeFromLatest => "excludeFromLatest (optional)",
  regions => "regions (optional)",
  scaleTier => "scaleTier (optional)",
  source => "source (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endOfLifeDate | String | false | The end of life date of the gallery image version. |
|excludeFromLatest | Boolean | false | The flag means that if it is set to true, people deploying VMs with 'latest' as version will not use this version. |
|regions | Array | false | The regions where the artifact is going to be published. |
|scaleTier | String | false | The scale tier of the gallery image version. Valid values are 'S30' and 'S100' |
|source | String | false |  |
        
## ReplicationStatus

This is the replication status of the gallery image version.

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

This is the storage profile of a gallery image version.

```puppet
$azure_gallery_image_version_storage_profile = {
  dataDiskImages => $azure_gallery_data_disk_image
  osDiskImage => $azure_gallery_os_disk_image
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dataDiskImages | [GalleryDataDiskImage](#gallerydatadiskimage) | false | A list of data disk images. |
|osDiskImage | [GalleryOSDiskImage](#galleryosdiskimage) | false |  |
        
## GalleryDataDiskImage

This is the data disk image.

```puppet
$azure_gallery_data_disk_image = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## GalleryOSDiskImage

This is the OS disk image.

```puppet
$azure_gallery_os_disk_image = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the GalleryImageVersion

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/images/%{gallery_image_name}/versions/%{gallery_image_version_name}`|Put|Create or update a gallery image version.|GalleryImageVersions_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/images/%{gallery_image_name}/versions/%{gallery_image_version_name}`|Get|Retrieves information about a gallery image version.|GalleryImageVersions_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/images/%{gallery_image_name}/versions`|Get|List gallery image versions under a gallery image.|GalleryImageVersions_ListByGalleryImage|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/images/%{gallery_image_name}/versions/%{gallery_image_version_name}`|Put|Create or update a gallery image version.|GalleryImageVersions_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/images/%{gallery_image_name}/versions/%{gallery_image_version_name}`|Delete|Delete a gallery image version.|GalleryImageVersions_Delete|
