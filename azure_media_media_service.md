Document: "media"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/mediaservices/resource-manager/Microsoft.Media/stable/2015-10-01/media.json")

## MediaService

The properties of a Media Service resource.

```puppet
azure_media_media_service {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_media_service_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. The current version is 2015-10-01. |
|location | String | false | The geographic location of the resource. This must be one of the supported and registered Azure Geo Regions (for example, West US, East US, Southeast Asia, and so forth). |
|parameters | Hash | true | Media Service properties needed for creation. |
|properties | [MediaServiceProperties](#mediaserviceproperties) | false | The additional properties of a Media Service resource. |
|resource_group_name | String | true | Name of the resource group within the Azure subscription. |
|subscription_id | String | true | The unique identifier for a Microsoft Azure subscription. |
|tags | Hash | false | Tags to help categorize the resource in the Azure portal. |
        
## MediaServiceProperties

The additional properties of a Media Service resource.

```puppet
$azure_media_service_properties = {
  apiEndpoints => $azure_api_endpoint
  storageAccounts => $azure_storage_account
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|apiEndpoints | [ApiEndpoint](#apiendpoint) | false | Read-only property that lists the Media Services REST API endpoints for this resource. If supplied on a PUT or PATCH, the value will be ignored. |
|storageAccounts | [StorageAccount](#storageaccount) | false | The storage accounts for this resource. |
        
## ApiEndpoint

The properties for a Media Services REST API endpoint.

```puppet
$azure_api_endpoint = {
  endpoint => "endpoint (optional)",
  majorVersion => "majorVersion (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endpoint | String | false | The Media Services REST endpoint. |
|majorVersion | String | false | The version of Media Services REST API. |
        
## StorageAccount

The properties of a storage account associated with this resource.

```puppet
$azure_storage_account = {
  id => "id",
  isPrimary => "isPrimary",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | true | The id of the storage account resource. Media Services relies on tables and queues as well as blobs, so the primary storage account must be a Standard Storage account (either Microsoft.ClassicStorage or Microsoft.Storage). Blob only storage accounts can be added as secondary storage accounts (isPrimary false). |
|isPrimary | Boolean | true | Is this storage account resource the primary storage account for the Media Service resource. Blob only storage must set this to false. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the MediaService

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{media_service_name}`|Put|Creates a Media Service.|MediaService_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{media_service_name}`|Get|Gets a Media Service.|MediaService_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices`|Get|Lists all of the Media Services in a resource group.|MediaService_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{media_service_name}`|Put|Creates a Media Service.|MediaService_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{media_service_name}`|Delete|Deletes a Media Service.|MediaService_Delete|
