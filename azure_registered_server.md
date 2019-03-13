Document: "storagesync"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/storagesync/resource-manager/Microsoft.StorageSync/stable/2018-10-01/storagesync.json")

## RegisteredServer

Registered Server resource.

```puppet
azure_registered_server {
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_registered_server_properties
  resource_group_name => "resource_group_name",
  server_id => "server_id",
  storage_sync_service_name => "storage_sync_service_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for this operation. |
|parameters | Hash | true | Body of Registered Server object. |
|properties | [RegisteredServerProperties](#registeredserverproperties) | false | RegisteredServer properties. |
|resource_group_name | String | true | The name of the resource group. The name is case insensitive. |
|server_id | String | true | GUID identifying the on-premises server. |
|storage_sync_service_name | String | true | Name of Storage Sync Service resource. |
|subscription_id | String | true | The ID of the target subscription. |
        
## RegisteredServerProperties

RegisteredServer Properties object.

```puppet
$azure_registered_server_properties = {
  agentVersion => "agentVersion (optional)",
  clusterId => "clusterId (optional)",
  clusterName => "clusterName (optional)",
  discoveryEndpointUri => "discoveryEndpointUri (optional)",
  friendlyName => "friendlyName (optional)",
  lastHeartBeat => "lastHeartBeat (optional)",
  lastOperationName => "lastOperationName (optional)",
  lastWorkflowId => "lastWorkflowId (optional)",
  managementEndpointUri => "managementEndpointUri (optional)",
  monitoringConfiguration => "monitoringConfiguration (optional)",
  provisioningState => "provisioningState (optional)",
  resourceLocation => "resourceLocation (optional)",
  serverCertificate => "serverCertificate (optional)",
  serverId => "serverId (optional)",
  serverManagementErrorCode => "1234 (optional)",
  serverOSVersion => "serverOSVersion (optional)",
  serverRole => "serverRole (optional)",
  serviceLocation => "serviceLocation (optional)",
  storageSyncServiceUid => "storageSyncServiceUid (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|agentVersion | String | false | Registered Server Agent Version |
|clusterId | String | false | Registered Server clusterId |
|clusterName | String | false | Registered Server clusterName |
|discoveryEndpointUri | String | false | Resource discoveryEndpointUri |
|friendlyName | String | false | Friendly Name |
|lastHeartBeat | String | false | Registered Server last heart beat |
|lastOperationName | String | false | Resource Last Operation Name |
|lastWorkflowId | String | false | Registered Server lastWorkflowId |
|managementEndpointUri | String | false | Management Endpoint Uri |
|monitoringConfiguration | String | false | Monitoring Configuration |
|provisioningState | String | false | Registered Server Provisioning State |
|resourceLocation | String | false | Resource Location |
|serverCertificate | String | false | Registered Server Certificate |
|serverId | String | false | Registered Server serverId |
|serverManagementErrorCode | Integer | false | Registered Server Management Error Code |
|serverOSVersion | String | false | Registered Server OS Version |
|serverRole | String | false | Registered Server serverRole |
|serviceLocation | String | false | Service Location |
|storageSyncServiceUid | String | false | Registered Server storageSyncServiceUid |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the RegisteredServer

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}/registeredServers/%{server_id}`|Put|Add a new registered server.|RegisteredServers_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}/registeredServers/%{server_id}`|Get|Get a given registered server.|RegisteredServers_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}/registeredServers`|Get|Get a given registered server list.|RegisteredServers_ListByStorageSyncService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}/registeredServers/%{server_id}`|Put|Add a new registered server.|RegisteredServers_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorageSync/storageSyncServices/%{storage_sync_service_name}/registeredServers/%{server_id}`|Delete|Delete the given registered server.|RegisteredServers_Delete|
