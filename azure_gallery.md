Document: "gallery"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/compute/resource-manager/Microsoft.Compute/stable/2018-06-01/gallery.json")

## Gallery

Specifies information about the gallery that you want to create or update.

```puppet
azure_gallery {
  api_version => "api_version",
  gallery => "gallery",
  location => "location (optional)",
  properties => $azure_gallery_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|gallery | Hash | true | Parameters supplied to the create or update gallery operation. |
|location | String | false | Resource location |
|properties | [GalleryProperties](#galleryproperties) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
        
## GalleryProperties

Describes the properties of a gallery.

```puppet
$azure_gallery_properties = {
  description => "description (optional)",
  identifier => $azure_gallery_identifier
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | The description of this gallery resource. |
|identifier | [GalleryIdentifier](#galleryidentifier) | false |  |
        
## GalleryIdentifier

Describes the gallery unique name.

```puppet
$azure_gallery_identifier = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Gallery

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}`|Put|Create or update a gallery.|Galleries_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Compute/galleries`|Get|List galleries under a subscription.|Galleries_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}`|Get|Retrieves information about a gallery.|Galleries_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Compute/galleries`|Get|List galleries under a subscription.|Galleries_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}`|Put|Create or update a gallery.|Galleries_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/galleries/%{gallery_name}`|Delete|Delete a gallery.|Galleries_Delete|
