Document: "iothub"


Path: "/tmp/azure-rest-api-specs/specification/iothub/resource-manager/Microsoft.Devices/stable/2018-04-01/iothub.json")

## EventHubConsumerGroupInfo

The properties of the EventHubConsumerGroupInfo object.

```puppet
azure_event_hub_consumer_group_info {
  api_version => "api_version",
  event_hub_endpoint_name => "event_hub_endpoint_name",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The version of the API. |
|event_hub_endpoint_name | String | true | The name of the Event Hub-compatible endpoint in the IoT hub. |
|properties | Hash | false | The tags. |
|resource_group_name | String | true | The name of the resource group that contains the IoT hub. |
|resource_name | String | true | The name of the IoT hub. |
|subscription_id | String | true | The subscription identifier. |



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
