Document: "networkWatcher"
Path: "/root/specs/specification/network/resource-manager/Microsoft.Network/stable/2018-04-01/networkWatcher.json")

## NetworkWatcher

```puppet
azure_network_watcher {
  api_version => "api_version",
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_network_watcher_properties_format
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|name | String | false | Resource name. |
|parameters | Hash | true | Parameters that define the network watcher resource. |
|properties | [NetworkWatcherPropertiesFormat](#networkwatcherpropertiesformat) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
|type | String | false | Resource type. |
        
## NetworkWatcherPropertiesFormat

```puppet
$azure_network_watcher_properties_format = {
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|provisioningState | String | false | The provisioning state of the resource. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the NetworkWatcher

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/networkWatchers/%{network_watcher_name}`|Put|Creates or updates a network watcher in the specified resource group.|NetworkWatchers_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/networkWatchers`|Get|Gets all network watchers by subscription.|NetworkWatchers_ListAll|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/networkWatchers/%{network_watcher_name}`|Get|Gets the specified network watcher by resource group.|NetworkWatchers_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/networkWatchers`|Get|Gets all network watchers by resource group.|NetworkWatchers_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/networkWatchers/%{network_watcher_name}`|Put|Creates or updates a network watcher in the specified resource group.|NetworkWatchers_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/networkWatchers/%{network_watcher_name}`|Delete|Deletes the specified network watcher resource.|NetworkWatchers_Delete|