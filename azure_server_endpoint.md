Document: "storagesync"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/storagesync/resource-manager/Microsoft.StorageSync/stable/2018-04-02/storagesync.json")

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
|api_version | String | true | Client Api Version. |
|parameters | Hash | true | Body of Server Endpoint object. |
|properties | [ServerEndpointProperties](#serverendpointproperties) | false | Server Endpoint properties. |
|resource_group_name | String | true | The name of the resource group within the user's subscription. The name is case insensitive. |
|storage_sync_service_name | String | true | Name of Storage Sync Service resource. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|sync_group_name | String | true | Name of Sync Group resource. |
        
## ServerEndpointProperties

ServerEndpoint Properties object.

```puppet
$azure_server_endpoint_properties = {
  cloudTiering => $azure_feature_status
  friendlyName => "friendlyName (optional)",
  lastOperationName => "lastOperationName (optional)",
  lastWorkflowId => "lastWorkflowId (optional)",
  provisioningState => "provisioningState (optional)",
  serverLocalPath => $azure_physical_path
  serverResourceId => $azure_resource_id
  syncStatus => "syncStatus (optional)",
  volumeFreeSpacePercent => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|cloudTiering | [FeatureStatus](#featurestatus) | false | Cloud Tiering. |
|friendlyName | String | false | Friendly Name |
|lastOperationName | String | false | Resource Last Operation Name |
|lastWorkflowId | String | false | ServerEndpoint lastWorkflowId |
|provisioningState | String | false | ServerEndpoint Provisioning State |
|serverLocalPath | [PhysicalPath](#physicalpath) | false | Server Local path. |
|serverResourceId | [ResourceId](#resourceid) | false | Server Resource Id. |
|syncStatus | Hash | false | Sync Health Status |
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
