Document: "storagesync"


Path: "/tmp/azure-rest-api-specs/specification/storagesync/resource-manager/Microsoft.StorageSync/stable/2018-10-01/storagesync.json")

## StorageSyncService

Storage Sync Service object.

```puppet
azure_storage_sync_service {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_storage_sync_service_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for this operation. |
|location | String | false | The geo-location where the resource lives |
|parameters | Hash | true | Storage Sync Service resource name. |
|properties | [StorageSyncServiceProperties](#storagesyncserviceproperties) | false | Storage Sync Service properties. |
|resource_group_name | String | true | The name of the resource group. The name is case insensitive. |
|subscription_id | String | true | The ID of the target subscription. |
|tags | Hash | false | Resource tags. |
        
## StorageSyncServiceProperties

Storage Sync Service Properties object.

```puppet
$azure_storage_sync_service_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the StorageSyncService

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}`|Put|Create a new StorageSyncService.|StorageSyncServices_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.StorageSync/storageSyncServices`|Get|Get a StorageSyncService list by subscription.|StorageSyncServices_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}`|Get|Get a given StorageSyncService.|StorageSyncServices_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices`|Get|Get a StorageSyncService list by Resource group name.|StorageSyncServices_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}`|Put|Create a new StorageSyncService.|StorageSyncServices_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}`|Delete|Delete a given StorageSyncService.|StorageSyncServices_Delete|
