Document: "ML"


Path: "/tmp/azure-rest-api-specs/specification/labservices/resource-manager/Microsoft.LabServices/stable/2018-10-15/ML.json")

## GalleryImage

Represents an image from the Azure Marketplace

```puppet
azure_labservices_gallery_image {
  api_version => "api_version",
  gallery_image => "galleryImage",
  lab_account_name => "lab_account_name",
  location => "location (optional)",
  properties => $azure_gallery_image_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|gallery_image | Hash | true | Represents an image from the Azure Marketplace |
|lab_account_name | String | true | The name of the lab Account. |
|location | String | false | The location of the resource. |
|properties | [GalleryImageProperties](#galleryimageproperties) | false | The gallery image properties |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription ID. |
|tags | Hash | false | The tags of the resource. |
        
## GalleryImageProperties

The gallery image properties

```puppet
$azure_gallery_image_properties = {
  imageReference => $azure_gallery_image_reference
  isEnabled => "isEnabled (optional)",
  isOverride => "isOverride (optional)",
  isPlanAuthorized => "isPlanAuthorized (optional)",
  latestOperationResult => $azure_latest_operation_result
  provisioningState => "provisioningState (optional)",
  uniqueIdentifier => "uniqueIdentifier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|imageReference | [GalleryImageReference](#galleryimagereference) | false | The image reference of the gallery image. |
|isEnabled | Boolean | false | Indicates whether this gallery image is enabled. |
|isOverride | Boolean | false | Indicates whether this gallery has been overridden for this lab account |
|isPlanAuthorized | Boolean | false | Indicates if the plan has been authorized for programmatic deployment. |
|latestOperationResult | [LatestOperationResult](#latestoperationresult) | false | The details of the latest operation. ex: status, error |
|provisioningState | String | false | The provisioning status of the resource. |
|uniqueIdentifier | String | false | The unique immutable identifier of a resource (Guid). |
        
## GalleryImageReference

The reference information for an Azure Marketplace image.

```puppet
$azure_gallery_image_reference = {
  offer => "offer (optional)",
  osType => "osType (optional)",
  publisher => "publisher (optional)",
  sku => "sku (optional)",
  version => "version (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|offer | String | false | The offer of the gallery image. |
|osType | String | false | The OS type of the gallery image. |
|publisher | String | false | The publisher of the gallery image. |
|sku | String | false | The SKU of the gallery image. |
|version | String | false | The version of the gallery image. |
        
## LatestOperationResult

Details of the status of an operation.

```puppet
$azure_latest_operation_result = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the GalleryImage

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}/galleryimages/%{gallery_image_name}`|Put|Create or replace an existing Gallery Image.|GalleryImages_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}/galleryimages/%{gallery_image_name}`|Get|Get gallery image|GalleryImages_Get|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}/galleryimages/%{gallery_image_name}`|Put|Create or replace an existing Gallery Image.|GalleryImages_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}/galleryimages/%{gallery_image_name}`|Delete|Delete gallery image.|GalleryImages_Delete|
