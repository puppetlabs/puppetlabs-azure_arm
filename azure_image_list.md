Document: "ContentModerator"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/cognitiveservices/data-plane/ContentModerator/stable/v1.0/ContentModerator.json")

## ImageList

Image List Properties.

```puppet
azure_image_list {
  body => "body",
  content_type => "content_type",
  description => "description (optional)",
  id => "1234 (optional)",
  list_id => "list_id",
  metadata => "Metadata (optional)",
  name => "name (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|body | String | true | Schema of the body. |
|content_type | String | true | The content type. |
|description | String | false | Description for image list. |
|id | Integer | false | Image List Id. |
|list_id | String | true | List Id of the image list. |
|metadata | Hash | false | Image List Metadata. |
|name | String | false | Image List Name. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ImageList

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/contentmoderator/lists/v1.0/imagelists`|Post|Creates an image list.|ListManagementImageLists_Create|
|List - list all|``||||
|List - get one|`/contentmoderator/lists/v1.0/imagelists/%{list_id}`|Get|Returns the details of the image list with list Id equal to list Id passed.|ListManagementImageLists_GetDetails|
|List - get list using params|``||||
|Update|`/contentmoderator/lists/v1.0/imagelists/%{list_id}`|Put|Updates an image list with list Id equal to list Id passed.|ListManagementImageLists_Update|
|Delete|`/contentmoderator/lists/v1.0/imagelists/%{list_id}`|Delete|Deletes image list with the list Id equal to list Id passed.|ListManagementImageLists_Delete|
