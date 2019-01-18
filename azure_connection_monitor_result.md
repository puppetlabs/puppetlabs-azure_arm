Document: "networkWatcher"


Path: "/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/networkWatcher.json")

## ConnectionMonitorResult

Information about the connection monitor.

```puppet
azure_connection_monitor_result {
  api_version => "api_version",
  connection_monitor_name => "connection_monitor_name",
  etag => "etag (optional)",
  location => "location (optional)",
  network_watcher_name => "network_watcher_name",
  parameters => "parameters",
  properties => $azure_connection_monitor_result_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|connection_monitor_name | String | true | The name of the connection monitor. |
|etag | String | false |  |
|location | String | false | Connection monitor location. |
|network_watcher_name | String | true | The name of the Network Watcher resource. |
|parameters | Hash | true | Parameters that define the operation to create a connection monitor. |
|properties | [ConnectionMonitorResultProperties](#connectionmonitorresultproperties) | false |  |
|resource_group_name | String | true | The name of the resource group containing Network Watcher. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Connection monitor tags. |
        
## ConnectionMonitorResultProperties

Describes the properties of a connection monitor.

```puppet
$azure_connection_monitor_result_properties = {
  autoStart => "autoStart (optional)",
  destination => "destination (optional)",
  monitoringIntervalInSeconds => "1234 (optional)",
  monitoringStatus => "monitoringStatus (optional)",
  provisioningState => "provisioningState (optional)",
  source => "source (optional)",
  startTime => "startTime (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|autoStart | Boolean | false | Determines if the connection monitor will start automatically once created. |
|destination | String | false |  |
|monitoringIntervalInSeconds | Integer | false | Monitoring interval in seconds. |
|monitoringStatus | String | false | The monitoring status of the connection monitor. |
|provisioningState | String | false | The provisioning state of the connection monitor. |
|source | String | false |  |
|startTime | String | false | The date and time when the connection monitor was started. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ConnectionMonitorResult

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/networkWatchers/%{network_watcher_name}/connectionMonitors/%{connection_monitor_name}`|Put|Create or update a connection monitor.|ConnectionMonitors_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/networkWatchers/%{network_watcher_name}/connectionMonitors/%{connection_monitor_name}`|Get|Gets a connection monitor by name.|ConnectionMonitors_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/networkWatchers/%{network_watcher_name}/connectionMonitors`|Get|Lists all connection monitors for the specified Network Watcher.|ConnectionMonitors_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/networkWatchers/%{network_watcher_name}/connectionMonitors/%{connection_monitor_name}`|Put|Create or update a connection monitor.|ConnectionMonitors_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/networkWatchers/%{network_watcher_name}/connectionMonitors/%{connection_monitor_name}`|Delete|Deletes the specified connection monitor.|ConnectionMonitors_Delete|
