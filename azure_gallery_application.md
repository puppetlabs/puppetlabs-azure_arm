Document: "gallery"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/compute/resource-manager/Microsoft.Compute/stable/2019-07-01/gallery.json")

## GalleryApplication

Specifies information about the gallery Application Definition that you want to create or update.

```puppet
azure_gallery_application {
  api_version => "api_version",
  gallery_application => "galleryApplication",
  gallery_name => "gallery_name",
  location => "location (optional)",
  properties => $azure_gallery_application_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|gallery_application | Hash | true | Parameters supplied to the create or update gallery Application operation. |
|gallery_name | String | true | The name of the Shared Application Gallery in which the Application Definition is to be created. |
|location | String | false | Resource location |
|properties | [GalleryApplicationProperties](#galleryapplicationproperties) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
        
## GalleryApplicationProperties

Describes the properties of a gallery Application Definition.

```puppet
$azure_gallery_application_properties = {
  description => "description (optional)",
  endOfLifeDate => "endOfLifeDate (optional)",
  eula => "eula (optional)",
  privacyStatementUri => "privacyStatementUri (optional)",
  releaseNoteUri => "releaseNoteUri (optional)",
  supportedOSType => "supportedOSType",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | The description of this gallery Application Definition resource. This property is updatable. |
|endOfLifeDate | String | false | The end of life date of the gallery Application Definition. This property can be used for decommissioning purposes. This property is updatable. |
|eula | String | false | The Eula agreement for the gallery Application Definition. |
|privacyStatementUri | String | false | The privacy statement uri. |
|releaseNoteUri | String | false | The release note uri. |
|supportedOSType | String | true | This property allows you to specify the supported type of the OS that application is built for. <br><br> Possible values are: <br><br> **Windows** <br><br> **Linux** |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the GalleryApplication

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/applications/%{gallery_application_name}`|Put|Create or update a gallery Application Definition.|GalleryApplications_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/applications/%{gallery_application_name}`|Get|Retrieves information about a gallery Application Definition.|GalleryApplications_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/applications`|Get|List gallery Application Definitions in a gallery.|GalleryApplications_ListByGallery|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/applications/%{gallery_application_name}`|Put|Create or update a gallery Application Definition.|GalleryApplications_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/applications/%{gallery_application_name}`|Delete|Delete a gallery Application.|GalleryApplications_Delete|
