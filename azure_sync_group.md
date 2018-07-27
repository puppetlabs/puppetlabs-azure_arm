Document: "storagesync"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/storagesync/resource-manager/Microsoft.StorageSync/stable/2018-04-02/storagesync.json")

## SyncGroup

Sync Group object.

```puppet
azure_sync_group {
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_sync_group_properties
  resource_group_name => "resource_group_name",
  storage_sync_service_name => "storage_sync_service_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|parameters | Hash | true | Sync Group Body |
|properties | [SyncGroupProperties](#syncgroupproperties) | false | SyncGroup properties. |
|resource_group_name | String | true | The name of the resource group within the user's subscription. The name is case insensitive. |
|storage_sync_service_name | String | true | Name of Storage Sync Service resource. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## SyncGroupProperties

SyncGroup Properties object.

```puppet
$azure_sync_group_properties = {
  uniqueId => "uniqueId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|uniqueId | String | false | Unique Id |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the SyncGroup

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}/syncGroups/%{sync_group_name}`|Put|Create a new SyncGroup.|SyncGroups_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}/syncGroups/%{sync_group_name}`|Get|Get a given SyncGroup.|SyncGroups_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}/syncGroups`|Get|Get a SyncGroup List.|SyncGroups_ListByStorageSyncService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}/syncGroups/%{sync_group_name}`|Put|Create a new SyncGroup.|SyncGroups_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}/syncGroups/%{sync_group_name}`|Delete|Delete a given SyncGroup.|SyncGroups_Delete|
