Document: "EventHub"
Path: "/root/specs/specification/eventhub/resource-manager/Microsoft.EventHub/stable/2017-04-01/EventHub.json")

## ConsumerGroup

```puppet
azure_consumer_group {
  api_version => "api_version",
  event_hub_name => "event_hub_name",
  id => "id (optional)",
  name => "name (optional)",
  namespace_name => "namespace_name",
  parameters => "parameters",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API Version. |
|event_hub_name | String | true | The Event Hub name |
|id | String | false | Resource Id |
|name | String | false | Resource name |
|namespace_name | String | true | The Namespace name |
|parameters | Hash | true | Parameters supplied to create or update a consumer group resource. |
|properties | String | false | Single item in List or Get Consumer group operation |
|resource_group_name | String | true | Name of the resource group within the azure subscription. |
|subscription_id | String | true | Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | Resource type |



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