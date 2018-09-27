Document: "storagesync"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/storagesync/resource-manager/Microsoft.StorageSync/stable/2018-04-02/storagesync.json")

## StorageSyncService

Storage Sync Service object.

```puppet
azure_storage_sync_service {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|location | String | false | The location of the resource. |
|parameters | Hash | true | Storage Sync Service resource name. |
|resource_group_name | String | true | The name of the resource group within the user's subscription. The name is case insensitive. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | The tags of the resource. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the StorageSyncService

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}`|Put|Create a new StorageSyncService.|StorageSyncServices_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.StorageSync/storageSyncServices`|Get|Get a StorageSyncService list by subscription.|StorageSyncServices_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}`|Get|Get a given StorageSyncService.|StorageSyncServices_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.StorageSync/storageSyncServices`|Get|Get a StorageSyncService list by subscription.|StorageSyncServices_ListBySubscription|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}`|Put|Create a new StorageSyncService.|StorageSyncServices_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}`|Delete|Delete a given StorageSyncService.|StorageSyncServices_Delete|
