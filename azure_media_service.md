Document: "Accounts"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/mediaservices/resource-manager/Microsoft.Media/stable/2018-07-01/Accounts.json")

## MediaService

A Media Services account.

```puppet
azure_media_service {
  account_name => "account_name",
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
|account_name | String | true | The Media Services account name. |
|api_version | String | true | The Version of the API to be used with the client request. |
|location | String | false | The Azure Region of the resource. |
|parameters | Hash | true | The request parameters |
|properties | [MediaServiceProperties](#mediaserviceproperties) | false | The resource properties. |
|resource_group_name | String | true | The name of the resource group within the Azure subscription. |
|subscription_id | String | true | The unique identifier for a Microsoft Azure subscription. |
|tags | Hash | false | Resource tags. |
        
## MediaServiceProperties

Properties of the Media Services account.

```puppet
$azure_media_service_properties = {
  storageAccounts => $azure_storage_account
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|storageAccounts | [StorageAccount](#storageaccount) | false | The storage accounts for this resource. |
        
## StorageAccount

The storage account details.

```puppet
$azure_storage_account = {
  id => "id (optional)",
  type => "type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | The ID of the storage account resource. Media Services relies on tables and queues as well as blobs, so the primary storage account must be a Standard Storage account (either Microsoft.ClassicStorage or Microsoft.Storage). Blob only storage accounts can be added as secondary storage accounts. |
|type | String | true | The type of the storage account. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the MediaService

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{account_name}`|Put|Creates or updates a Media Services account|Mediaservices_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{account_name}`|Get|Get the details of a Media Services account|Mediaservices_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices`|Get|List Media Services accounts in the resource group|Mediaservices_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{account_name}`|Put|Creates or updates a Media Services account|Mediaservices_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{account_name}`|Delete|Deletes a Media Services account|Mediaservices_Delete|
