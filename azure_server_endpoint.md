Document: "storagesync"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/storagesync/resource-manager/Microsoft.StorageSync/stable/2019-03-01/storagesync.json")

## ServerEndpoint

Server Endpoint object.

```puppet
azure_server_endpoint {
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_server_endpoint_properties
  resource_group_name => "resource_group_name",
  storage_sync_service_name => "storage_sync_service_name",
  subscription_id => "subscription_id",
  sync_group_name => "sync_group_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for this operation. |
|parameters | Hash | true | Body of Server Endpoint object. |
|properties | [ServerEndpointProperties](#serverendpointproperties) | false | Server Endpoint properties. |
|resource_group_name | String | true | The name of the resource group. The name is case insensitive. |
|storage_sync_service_name | String | true | Name of Storage Sync Service resource. |
|subscription_id | String | true | The ID of the target subscription. |
|sync_group_name | String | true | Name of Sync Group resource. |
        
## ServerEndpointProperties

ServerEndpoint Properties object.

```puppet
$azure_server_endpoint_properties = {
  cloudTiering => $azure_feature_status
  friendlyName => "friendlyName (optional)",
  offlineDataTransfer => $azure_feature_status
  offlineDataTransferShareName => "offlineDataTransferShareName (optional)",
  serverLocalPath => $azure_physical_path
  serverResourceId => $azure_resource_id
  syncStatus => $azure_server_endpoint_sync_status
  tierFilesOlderThanDays => "1234 (optional)",
  volumeFreeSpacePercent => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|cloudTiering | [FeatureStatus](#featurestatus) | false | Cloud Tiering. |
|friendlyName | String | false | Friendly Name |
|offlineDataTransfer | [FeatureStatus](#featurestatus) | false | Offline data transfer |
|offlineDataTransferShareName | String | false | Offline data transfer share name |
|serverLocalPath | [PhysicalPath](#physicalpath) | false | Server Local path. |
|serverResourceId | [ResourceId](#resourceid) | false | Server Resource Id. |
|syncStatus | [ServerEndpointSyncStatus](#serverendpointsyncstatus) | false | Server Endpoint sync status |
|tierFilesOlderThanDays | Integer | false | Tier files older than days. |
|volumeFreeSpacePercent | Integer | false | Level of free space to be maintained by Cloud Tiering if it is enabled. |
        
## FeatureStatus

Type of the Feature Status

```puppet
$azure_feature_status = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
## PhysicalPath

Server folder used for data synchronization

```puppet
$azure_physical_path = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ResourceId

Arm resource identifier.

```puppet
$azure_resource_id = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ServerEndpointSyncStatus

Server Endpoint sync status

```puppet
$azure_server_endpoint_sync_status = {
  combinedHealth => $azure_health_state
  downloadActivity => $azure_sync_activity_status
  downloadHealth => $azure_health_state
  downloadStatus => $azure_sync_session_status
  offlineDataTransferStatus => $azure_offline_data_transfer_state
  syncActivity => $azure_sync_activity_state
  uploadActivity => $azure_sync_activity_status
  uploadHealth => $azure_health_state
  uploadStatus => $azure_sync_session_status
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|combinedHealth | [HealthState](#healthstate) | false | Combined Health Status. |
|downloadActivity | [SyncActivityStatus](#syncactivitystatus) | false | Download sync activity |
|downloadHealth | [HealthState](#healthstate) | false | Download Health Status. |
|downloadStatus | [SyncSessionStatus](#syncsessionstatus) | false | Download Status |
|offlineDataTransferStatus | [OfflineDataTransferState](#offlinedatatransferstate) | false | Offline Data Transfer State |
|syncActivity | [SyncActivityState](#syncactivitystate) | false | Sync activity |
|uploadActivity | [SyncActivityStatus](#syncactivitystatus) | false | Upload sync activity |
|uploadHealth | [HealthState](#healthstate) | false | Upload Health Status. |
|uploadStatus | [SyncSessionStatus](#syncsessionstatus) | false | Upload Status |
        
## HealthState

Type of the Health state

```puppet
$azure_health_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## SyncActivityStatus

Sync Session status object.

```puppet
$azure_sync_activity_status = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
## SyncSessionStatus

Sync Session status object.

```puppet
$azure_sync_session_status = {
  filesNotSyncingErrors => $azure_files_not_syncing_error
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|filesNotSyncingErrors | [FilesNotSyncingError](#filesnotsyncingerror) | false | Array of per-item errors coming from the last sync session. Reserved for future use. |
        
## FilesNotSyncingError

Files not syncing error object

```puppet
$azure_files_not_syncing_error = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## OfflineDataTransferState

Type of the Health state

```puppet
$azure_offline_data_transfer_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## SyncActivityState

Type of the sync activity state

```puppet
$azure_sync_activity_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ServerEndpoint

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}/syncGroups/%{sync_group_name}/serverEndpoints/%{server_endpoint_name}`|Put|Create a new ServerEndpoint.|ServerEndpoints_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}/syncGroups/%{sync_group_name}/serverEndpoints/%{server_endpoint_name}`|Get|Get a ServerEndpoint.|ServerEndpoints_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}/syncGroups/%{sync_group_name}/serverEndpoints`|Get|Get a ServerEndpoint list.|ServerEndpoints_ListBySyncGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}/syncGroups/%{sync_group_name}/serverEndpoints/%{server_endpoint_name}`|Put|Create a new ServerEndpoint.|ServerEndpoints_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}/syncGroups/%{sync_group_name}/serverEndpoints/%{server_endpoint_name}`|Delete|Delete a given ServerEndpoint.|ServerEndpoints_Delete|
