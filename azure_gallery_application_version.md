Document: "gallery"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/compute/resource-manager/Microsoft.Compute/stable/2019-07-01/gallery.json")

## GalleryApplicationVersion

Specifies information about the gallery Application Version that you want to create or update.

```puppet
azure_gallery_application_version {
  api_version => "api_version",
  gallery_application_name => "gallery_application_name",
  gallery_application_version => "galleryApplicationVersion",
  gallery_name => "gallery_name",
  location => "location (optional)",
  properties => $azure_gallery_application_version_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|gallery_application_name | String | true | The name of the gallery Application Definition in which the Application Version is to be created. |
|gallery_application_version | Hash | true | Parameters supplied to the create or update gallery Application Version operation. |
|gallery_name | String | true | The name of the Shared Application Gallery in which the Application Definition resides. |
|location | String | false | Resource location |
|properties | [GalleryApplicationVersionProperties](#galleryapplicationversionproperties) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
        
## GalleryApplicationVersionProperties

Describes the properties of a gallery Image Version.

```puppet
$azure_gallery_application_version_properties = {
  publishingProfile => $azure_gallery_application_version_publishing_profile
  replicationStatus => $azure_replication_status
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|publishingProfile | [GalleryApplicationVersionPublishingProfile](#galleryapplicationversionpublishingprofile) | true |  |
|replicationStatus | [ReplicationStatus](#replicationstatus) | false |  |
        
## GalleryApplicationVersionPublishingProfile

The publishing profile of a gallery Image Version.

```puppet
$azure_gallery_application_version_publishing_profile = {
  contentType => "contentType (optional)",
  enableHealthCheck => "enableHealthCheck (optional)",
  endOfLifeDate => "endOfLifeDate (optional)",
  excludeFromLatest => "excludeFromLatest (optional)",
  replicaCount => "1234 (optional)",
  source => $azure_user_artifact_source
  storageAccountType => "storageAccountType (optional)",
  targetRegions => "targetRegions (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|contentType | String | false | Optional. May be used to help process this file. The type of file contained in the source, e.g. zip, json, etc. |
|enableHealthCheck | Boolean | false | Optional. Whether or not this application reports health. |
|endOfLifeDate | String | false | The end of life date of the gallery Image Version. This property can be used for decommissioning purposes. This property is updatable. |
|excludeFromLatest | Boolean | false | If set to true, Virtual Machines deployed from the latest version of the Image Definition won't use this Image Version. |
|replicaCount | Integer | false | The number of replicas of the Image Version to be created per region. This property would take effect for a region when regionalReplicaCount is not specified. This property is updatable. |
|source | [UserArtifactSource](#userartifactsource) | true |  |
|storageAccountType | String | false | Specifies the storage account type to be used to store the image. This property is not updatable. |
|targetRegions | Array | false | The target regions where the Image Version is going to be replicated to. This property is updatable. |
        
## UserArtifactSource

The source image from which the Image Version is going to be created.

```puppet
$azure_user_artifact_source = {
  fileName => "fileName",
  mediaLink => "mediaLink",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|fileName | String | true | Required. The fileName of the artifact. |
|mediaLink | String | true | Required. The mediaLink of the artifact, must be a readable storage blob. |
        
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



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the GalleryApplicationVersion

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/applications/%{gallery_application_name}/versions/%{gallery_application_version_name}`|Put|Create or update a gallery Application Version.|GalleryApplicationVersions_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/applications/%{gallery_application_name}/versions/%{gallery_application_version_name}`|Get|Retrieves information about a gallery Application Version.|GalleryApplicationVersions_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/applications/%{gallery_application_name}/versions`|Get|List gallery Application Versions in a gallery Application Definition.|GalleryApplicationVersions_ListByGalleryApplication|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/applications/%{gallery_application_name}/versions/%{gallery_application_version_name}`|Put|Create or update a gallery Application Version.|GalleryApplicationVersions_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/applications/%{gallery_application_name}/versions/%{gallery_application_version_name}`|Delete|Delete a gallery Application Version.|GalleryApplicationVersions_Delete|
