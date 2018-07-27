Document: "EventHub"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/eventhub/resource-manager/Microsoft.EventHub/stable/2017-04-01/EventHub.json")

## Eventhub

Single item in List or Get Event Hub operation

```puppet
azure_eventhub {
  api_version => "api_version",
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
|namespace_name | String | true | The Namespace name |
|parameters | Hash | true | Parameters supplied to create an Event Hub resource. |
|properties | String | false | Properties supplied to the Create Or Update Event Hub operation. |
|resource_group_name | String | true | Name of the resource group within the azure subscription. |
|subscription_id | String | true | Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Eventhub

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/eventhubs/%{event_hub_name}`|Put|Creates or updates a new Event Hub as a nested resource within a Namespace.|EventHubs_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/eventhubs/%{event_hub_name}`|Get|Gets an Event Hubs description for the specified Event Hub.|EventHubs_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/eventhubs`|Get|Gets all the Event Hubs in a Namespace.|EventHubs_ListByNamespace|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/eventhubs/%{event_hub_name}`|Put|Creates or updates a new Event Hub as a nested resource within a Namespace.|EventHubs_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/eventhubs/%{event_hub_name}`|Delete|Deletes an Event Hub from the specified Namespace and resource group.|EventHubs_Delete|
