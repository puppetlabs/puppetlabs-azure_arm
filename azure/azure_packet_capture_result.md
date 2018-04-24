Document: "networkWatcher"
Path: "/root/specs/specification/network/resource-manager/Microsoft.Network/stable/2018-02-01/networkWatcher.json")

## PacketCaptureResult

```puppet
azure_packet_capture_result {
  api_version => "api_version",
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  network_watcher_name => "network_watcher_name",
  packet_capture_name => "packet_capture_name",
  parameters => "parameters",
  properties => $azure_packet_capture_result_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|etag | String | false |  |
|id | String | false | ID of the packet capture operation. |
|name | String | false | Name of the packet capture session. |
|network_watcher_name | String | true | The name of the network watcher. |
|packet_capture_name | String | true | The name of the packet capture session. |
|parameters | Hash | true | Parameters that define the create packet capture operation. |
|properties | [PacketCaptureResultProperties](#packetcaptureresultproperties) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## PacketCaptureResultProperties

```puppet
$azure_packet_capture_result_properties = {
  bytesToCapturePerPacket => "1234 (optional)",
  filters => "filters (optional)",
  provisioningState => "provisioningState (optional)",
  storageLocation => "storageLocation (optional)",
  target => "target (optional)",
  timeLimitInSeconds => "1234 (optional)",
  totalBytesPerSession => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|bytesToCapturePerPacket | Integer | false | Number of bytes captured per packet, the remaining bytes are truncated. |
|filters | Array | false |  |
|provisioningState | String | false | The provisioning state of the packet capture session. |
|storageLocation | String | false |  |
|target | String | false | The ID of the targeted resource, only VM is currently supported. |
|timeLimitInSeconds | Integer | false | Maximum duration of the capture session in seconds. |
|totalBytesPerSession | Integer | false | Maximum size of the capture output. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the PacketCaptureResult

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/networkWatchers/%{network_watcher_name}/packetCaptures/%{packet_capture_name}`|Put|Create and start a packet capture on the specified VM.|PacketCaptures_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/networkWatchers/%{network_watcher_name}/packetCaptures/%{packet_capture_name}`|Get|Gets a packet capture session by name.|PacketCaptures_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/networkWatchers/%{network_watcher_name}/packetCaptures`|Get|Lists all packet capture sessions within the specified resource group.|PacketCaptures_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/networkWatchers/%{network_watcher_name}/packetCaptures/%{packet_capture_name}`|Put|Create and start a packet capture on the specified VM.|PacketCaptures_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/networkWatchers/%{network_watcher_name}/packetCaptures/%{packet_capture_name}`|Delete|Deletes the specified packet capture session.|PacketCaptures_Delete|