Document: "iothub"
Path: "/root/specs/specification/iothub/resource-manager/Microsoft.Devices/stable/2018-04-01/iothub.json")

## EventHubConsumerGroupInfo

```puppet
azure_event_hub_consumer_group_info {
  api_version => "api_version",
  etag => "etag (optional)",
  event_hub_endpoint_name => "event_hub_endpoint_name",
  id => "id (optional)",
  name => "name (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The version of the API. |
|etag | String | false | The etag. |
|event_hub_endpoint_name | String | true | The name of the Event Hub-compatible endpoint in the IoT hub. |
|id | String | false | The Event Hub-compatible consumer group identifier. |
|name | String | false | The Event Hub-compatible consumer group name. |
|properties | Hash | false | The tags. |
|resource_group_name | String | true | The name of the resource group that contains the IoT hub. |
|resource_name | String | true | The name of the IoT hub. |
|subscription_id | String | true | The subscription identifier. |
|type | String | false | the resource type. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the EventHubConsumerGroupInfo

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/IotHubs/%{resource_name}/eventHubEndpoints/%{event_hub_endpoint_name}/ConsumerGroups/%{name}`|Put|Add a consumer group to an Event Hub-compatible endpoint in an IoT hub.|IotHubResource_CreateEventHubConsumerGroup|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/IotHubs/%{resource_name}/eventHubEndpoints/%{event_hub_endpoint_name}/ConsumerGroups/%{name}`|Get|Get a consumer group from the Event Hub-compatible device-to-cloud endpoint for an IoT hub.|IotHubResource_GetEventHubConsumerGroup|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/IotHubs/%{resource_name}/eventHubEndpoints/%{event_hub_endpoint_name}/ConsumerGroups`|Get|Get a list of the consumer groups in the Event Hub-compatible device-to-cloud endpoint in an IoT hub.|IotHubResource_ListEventHubConsumerGroups|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/IotHubs/%{resource_name}/eventHubEndpoints/%{event_hub_endpoint_name}/ConsumerGroups/%{name}`|Put|Add a consumer group to an Event Hub-compatible endpoint in an IoT hub.|IotHubResource_CreateEventHubConsumerGroup|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/IotHubs/%{resource_name}/eventHubEndpoints/%{event_hub_endpoint_name}/ConsumerGroups/%{name}`|Delete|Delete a consumer group from an Event Hub-compatible endpoint in an IoT hub.|IotHubResource_DeleteEventHubConsumerGroup|