Document: "storagesync"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/storagesync/resource-manager/Microsoft.StorageSync/stable/2018-10-01/storagesync.json")

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
  lastOperationName => "lastOperationName (optional)",
  lastWorkflowId => "lastWorkflowId (optional)",
  offlineDataTransfer => $azure_feature_status
  offlineDataTransferShareName => "offlineDataTransferShareName (optional)",
  provisioningState => "provisioningState (optional)",
  serverLocalPath => $azure_physical_path
  serverResourceId => $azure_resource_id
  syncStatus => $azure_server_endpoint_health
  tierFilesOlderThanDays => "1234 (optional)",
  volumeFreeSpacePercent => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|cloudTiering | [FeatureStatus](#featurestatus) | false | Cloud Tiering. |
|friendlyName | String | false | Friendly Name |
|lastOperationName | String | false | Resource Last Operation Name |
|lastWorkflowId | String | false | ServerEndpoint lastWorkflowId |
|offlineDataTransfer | [FeatureStatus](#featurestatus) | false | Offline data transfer |
|offlineDataTransferShareName | String | false | Offline data transfer share name |
|provisioningState | String | false | ServerEndpoint Provisioning State |
|serverLocalPath | [PhysicalPath](#physicalpath) | false | Server Local path. |
|serverResourceId | [ResourceId](#resourceid) | false | Server Resource Id. |
|syncStatus | [ServerEndpointHealth](#serverendpointhealth) | false | Server Endpoint properties. |
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
        
## ServerEndpointHealth

ServerEndpoint Health object.

```puppet
$azure_server_endpoint_health = {
  combinedHealth => $azure_health_state
  currentProgress => $azure_sync_progress_status
  downloadHealth => $azure_health_state
  downloadStatus => $azure_sync_session_status
  lastUpdatedTimestamp => "lastUpdatedTimestamp (optional)",
  offlineDataTransferStatus => $azure_offline_data_transfer_state
  uploadHealth => $azure_health_state
  uploadStatus => $azure_sync_session_status
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|combinedHealth | [HealthState](#healthstate) | false | Combined Health Status. |
|currentProgress | [SyncProgressStatus](#syncprogressstatus) | false | Current progress |
|downloadHealth | [HealthState](#healthstate) | false | Download Health Status. |
|downloadStatus | [SyncSessionStatus](#syncsessionstatus) | false | Download Status |
|lastUpdatedTimestamp | String | false | Last Updated Timestamp |
|offlineDataTransferStatus | [OfflineDataTransferState](#offlinedatatransferstate) | false | Offline Data Transfer State |
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
        
## SyncProgressStatus

Sync Session status object.

```puppet
$azure_sync_progress_status = {
  appliedBytes => "1234 (optional)",
  appliedItemCount => "1234 (optional)",
  perItemErrorCount => "1234 (optional)",
  progressTimestamp => "progressTimestamp (optional)",
  syncDirection => $azure_progress_type
  totalBytes => "1234 (optional)",
  totalItemCount => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|appliedBytes | Integer | false | Applied bytes |
|appliedItemCount | Integer | false | Applied item count. |
|perItemErrorCount | Integer | false | Per item error count |
|progressTimestamp | String | false | Progress timestamp |
|syncDirection | [ProgressType](#progresstype) | false | Sync direction. |
|totalBytes | Integer | false | Total bytes |
|totalItemCount | Integer | false | Total item count |
        
## ProgressType

Type of the ProgressType

```puppet
$azure_progress_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
## SyncSessionStatus

Sync Session status object.

```puppet
$azure_sync_session_status = {
  lastSyncPerItemErrorCount => "1234 (optional)",
  lastSyncResult => "1234 (optional)",
  lastSyncSuccessTimestamp => "lastSyncSuccessTimestamp (optional)",
  lastSyncTimestamp => "lastSyncTimestamp (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|lastSyncPerItemErrorCount | Integer | false | Last sync per item error count. |
|lastSyncResult | Integer | false | Last sync status |
|lastSyncSuccessTimestamp | String | false | Last sync success timestamp |
|lastSyncTimestamp | String | false | Last sync timestamp |
        
## OfflineDataTransferState

Type of the Health state

```puppet
$azure_offline_data_transfer_state = {
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
