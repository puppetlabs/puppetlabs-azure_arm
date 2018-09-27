Document: "storagesync"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/storagesync/resource-manager/Microsoft.StorageSync/stable/2018-04-02/storagesync.json")

## ServerEndpoint

Server Endpoint object.

```puppet
azure_server_endpoint {
  api_version => "api_version",
  parameters => "parameters",
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
|resource_group_name | String | true | The name of the resource group within the user's subscription. The name is case insensitive. |
|storage_sync_service_name | String | true | Name of Storage Sync Service resource. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|sync_group_name | String | true | Name of Sync Group resource. |



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
