Document: "EventHub"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/eventhub/resource-manager/Microsoft.EventHub/stable/2017-04-01/EventHub.json")

## ConsumerGroup

Single item in List or Get Consumer group operation

```puppet
azure_consumer_group {
  api_version => "api_version",
  event_hub_name => "event_hub_name",
  namespace_name => "namespace_name",
  parameters => "parameters",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API Version. |
|event_hub_name | String | true | The Event Hub name |
|namespace_name | String | true | The Namespace name |
|parameters | Hash | true | Parameters supplied to create or update a consumer group resource. |
|properties | String | false | Single item in List or Get Consumer group operation |
|resource_group_name | String | true | Name of the resource group within the azure subscription. |
|subscription_id | String | true | Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ConsumerGroup

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/eventhubs/%{event_hub_name}/consumergroups/%{consumer_group_name}`|Put|Creates or updates an Event Hubs consumer group as a nested resource within a Namespace.|ConsumerGroups_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/eventhubs/%{event_hub_name}/consumergroups/%{consumer_group_name}`|Get|Gets a description for the specified consumer group.|ConsumerGroups_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/eventhubs/%{event_hub_name}/consumergroups`|Get|Gets all the consumer groups in a Namespace. An empty feed is returned if no consumer group exists in the Namespace.|ConsumerGroups_ListByEventHub|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/eventhubs/%{event_hub_name}/consumergroups/%{consumer_group_name}`|Put|Creates or updates an Event Hubs consumer group as a nested resource within a Namespace.|ConsumerGroups_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/eventhubs/%{event_hub_name}/consumergroups/%{consumer_group_name}`|Delete|Deletes a consumer group from the specified Event Hub and resource group.|ConsumerGroups_Delete|
