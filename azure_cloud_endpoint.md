Document: "storagesync"


Path: "/tmp/azure-rest-api-specs/specification/storagesync/resource-manager/Microsoft.StorageSync/stable/2018-10-01/storagesync.json")

## CloudEndpoint

Cloud Endpoint object.

```puppet
azure_cloud_endpoint {
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_cloud_endpoint_properties
  resource_group_name => "resource_group_name",
  storage_sync_service_name => "storage_sync_service_name",
  subscription_id => "subscription_id",
  sync_group_name => "sync_group_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for this operation. |
|parameters | Hash | true | Body of Cloud Endpoint resource. |
|properties | [CloudEndpointProperties](#cloudendpointproperties) | false | Cloud Endpoint properties. |
|resource_group_name | String | true | The name of the resource group. The name is case insensitive. |
|storage_sync_service_name | String | true | Name of Storage Sync Service resource. |
|subscription_id | String | true | The ID of the target subscription. |
|sync_group_name | String | true | Name of Sync Group resource. |
        
## CloudEndpointProperties

CloudEndpoint Properties object.

```puppet
$azure_cloud_endpoint_properties = {
  friendlyName => "friendlyName (optional)",
  lastOperationName => "lastOperationName (optional)",
  lastWorkflowId => "lastWorkflowId (optional)",
  partnershipId => "partnershipId (optional)",
  provisioningState => "provisioningState (optional)",
  storageAccountResourceId => "storageAccountResourceId (optional)",
  storageAccountShareName => "storageAccountShareName (optional)",
  storageAccountTenantId => "storageAccountTenantId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|friendlyName | String | false | Friendly Name |
|lastOperationName | String | false | Resource Last Operation Name |
|lastWorkflowId | String | false | CloudEndpoint lastWorkflowId |
|partnershipId | String | false | Partnership Id |
|provisioningState | String | false | CloudEndpoint Provisioning State |
|storageAccountResourceId | String | false | Storage Account Resource Id |
|storageAccountShareName | String | false | Storage Account Share name |
|storageAccountTenantId | String | false | Storage Account Tenant Id |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the CloudEndpoint

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}/syncGroups/%{sync_group_name}/cloudEndpoints/%{cloud_endpoint_name}`|Put|Create a new CloudEndpoint.|CloudEndpoints_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}/syncGroups/%{sync_group_name}/cloudEndpoints/%{cloud_endpoint_name}`|Get|Get a given CloudEndpoint.|CloudEndpoints_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}/syncGroups/%{sync_group_name}/cloudEndpoints`|Get|Get a CloudEndpoint List.|CloudEndpoints_ListBySyncGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}/syncGroups/%{sync_group_name}/cloudEndpoints/%{cloud_endpoint_name}`|Put|Create a new CloudEndpoint.|CloudEndpoints_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}/syncGroups/%{sync_group_name}/cloudEndpoints/%{cloud_endpoint_name}`|Delete|Delete a given CloudEndpoint.|CloudEndpoints_Delete|
