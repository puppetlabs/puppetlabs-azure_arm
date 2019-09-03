Document: "gallery"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/compute/resource-manager/Microsoft.Compute/stable/2019-07-01/gallery.json")

## GalleryImage

Specifies information about the gallery Image Definition that you want to create or update.

```puppet
azure_gallery_image {
  api_version => "api_version",
  gallery_image => "galleryImage",
  gallery_name => "gallery_name",
  location => "location (optional)",
  properties => $azure_gallery_image_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|gallery_image | Hash | true | Parameters supplied to the create or update gallery image operation. |
|gallery_name | String | true | The name of the Shared Image Gallery in which the Image Definition is to be created. |
|location | String | false | Resource location |
|properties | [GalleryImageProperties](#galleryimageproperties) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
        
## GalleryImageProperties

Describes the properties of a gallery Image Definition.

```puppet
$azure_gallery_image_properties = {
  description => "description (optional)",
  disallowed => $azure_disallowed
  endOfLifeDate => "endOfLifeDate (optional)",
  eula => "eula (optional)",
  hyperVGeneration => "hyperVGeneration (optional)",
  identifier => $azure_gallery_image_identifier
  osState => "osState",
  osType => "osType",
  privacyStatementUri => "privacyStatementUri (optional)",
  purchasePlan => $azure_image_purchase_plan
  recommended => $azure_recommended_machine_configuration
  releaseNoteUri => "releaseNoteUri (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | The description of this gallery Image Definition resource. This property is updatable. |
|disallowed | [Disallowed](#disallowed) | false |  |
|endOfLifeDate | String | false | The end of life date of the gallery Image Definition. This property can be used for decommissioning purposes. This property is updatable. |
|eula | String | false | The Eula agreement for the gallery Image Definition. |
|hyperVGeneration | String | false | The hypervisor generation of the Virtual Machine. Applicable to OS disks only. |
|identifier | [GalleryImageIdentifier](#galleryimageidentifier) | true |  |
|osState | String | true | This property allows the user to specify whether the virtual machines created under this image are 'Generalized' or 'Specialized'. |
|osType | String | true | This property allows you to specify the type of the OS that is included in the disk when creating a VM from a managed image. <br><br> Possible values are: <br><br> **Windows** <br><br> **Linux** |
|privacyStatementUri | String | false | The privacy statement uri. |
|purchasePlan | [ImagePurchasePlan](#imagepurchaseplan) | false |  |
|recommended | [RecommendedMachineConfiguration](#recommendedmachineconfiguration) | false |  |
|releaseNoteUri | String | false | The release note uri. |
        
## Disallowed

Describes the disallowed disk types.

```puppet
$azure_disallowed = {
  diskTypes => "diskTypes (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|diskTypes | Array | false | A list of disk types. |
        
## GalleryImageIdentifier

This is the gallery Image Definition identifier.

```puppet
$azure_gallery_image_identifier = {
  offer => "offer",
  publisher => "publisher",
  sku => "sku",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|offer | String | true | The name of the gallery Image Definition offer. |
|publisher | String | true | The name of the gallery Image Definition publisher. |
|sku | String | true | The name of the gallery Image Definition SKU. |
        
## ImagePurchasePlan

Describes the gallery Image Definition purchase plan. This is used by marketplace images.

```puppet
$azure_image_purchase_plan = {
  name => "name (optional)",
  product => "product (optional)",
  publisher => "publisher (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | The plan ID. |
|product | String | false | The product ID. |
|publisher | String | false | The publisher ID. |
        
## RecommendedMachineConfiguration

The properties describe the recommended machine configuration for this Image Definition. These properties are updatable.

```puppet
$azure_recommended_machine_configuration = {
  memory => $azure_resource_range
  vCPUs => $azure_resource_range
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|memory | [ResourceRange](#resourcerange) | false |  |
|vCPUs | [ResourceRange](#resourcerange) | false |  |
        
## ResourceRange

Describes the resource range.

```puppet
$azure_resource_range = {
  max => "1234 (optional)",
  min => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|max | Integer | false | The maximum number of the resource. |
|min | Integer | false | The minimum number of the resource. |
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the GalleryImage

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/images/%{gallery_image_name}`|Put|Create or update a gallery Image Definition.|GalleryImages_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/images/%{gallery_image_name}`|Get|Retrieves information about a gallery Image Definition.|GalleryImages_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/images`|Get|List gallery Image Definitions in a gallery.|GalleryImages_ListByGallery|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/images/%{gallery_image_name}`|Put|Create or update a gallery Image Definition.|GalleryImages_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}/images/%{gallery_image_name}`|Delete|Delete a gallery image.|GalleryImages_Delete|
