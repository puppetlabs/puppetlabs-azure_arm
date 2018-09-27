Document: "EventGrid"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/eventgrid/resource-manager/Microsoft.EventGrid/stable/2018-01-01/EventGrid.json")

## EventSubscription

Event Subscription

```puppet
azure_event_subscription {
  api_version => "api_version",
  event_subscription_info => "eventSubscriptionInfo",
  properties => $azure_event_subscription_properties
  scope => "scope",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|event_subscription_info | Hash | true | Event subscription properties containing the destination and filter information |
|properties | [EventSubscriptionProperties](#eventsubscriptionproperties) | false | Properties of the event subscription |
|scope | String | true | The identifier of the resource to which the event subscription needs to be created or updated. The scope can be a subscription, or a resource group, or a top level resource belonging to a resource provider namespace, or an EventGrid topic. For example, use '/subscriptions/{subscriptionId}/' for a subscription, '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for a resource group, and '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}' for a resource, and '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/topics/{topicName}' for an EventGrid topic. |
|subscription_id | String | true | Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## EventSubscriptionProperties

Properties of the Event Subscription

```puppet
$azure_event_subscription_properties = {
  destination => $azure_event_subscription_destination
  filter => $azure_event_subscription_filter
  labels => "labels (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|destination | [EventSubscriptionDestination](#eventsubscriptiondestination) | false | Information about the destination where events have to be delivered for the event subscription. |
|filter | [EventSubscriptionFilter](#eventsubscriptionfilter) | false | Information about the filter for the event subscription. |
|labels | Array | false | List of user defined labels. |
        
## EventSubscriptionDestination

Information about the destination for an event subscription

```puppet
$azure_event_subscription_destination = {
  endpointType => "endpointType",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endpointType | String | true | Type of the endpoint for the event subscription destination |
        
## EventSubscriptionFilter

Filter for the Event Subscription

```puppet
$azure_event_subscription_filter = {
  includedEventTypes => "includedEventTypes (optional)",
  isSubjectCaseSensitive => "isSubjectCaseSensitive (optional)",
  subjectBeginsWith => "subjectBeginsWith (optional)",
  subjectEndsWith => "subjectEndsWith (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|includedEventTypes | Array | false | A list of applicable event types that need to be part of the event subscription. 
If it is desired to subscribe to all event types, the string 'all' needs to be specified as an element in this list. |
|isSubjectCaseSensitive | Boolean | false | Specifies if the SubjectBeginsWith and SubjectEndsWith properties of the filter 
should be compared in a case sensitive manner. |
|subjectBeginsWith | String | false | An optional string to filter events for an event subscription based on a resource path prefix.
The format of this depends on the publisher of the events. 
Wildcard characters are not supported in this path. |
|subjectEndsWith | String | false | An optional string to filter events for an event subscription based on a resource path suffix.
Wildcard characters are not supported in this path. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the EventSubscription

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/%{scope}/providers/Microsoft.EventGrid/eventSubscriptions/%{event_subscription_name}`|Put|Asynchronously creates a new event subscription or updates an existing event subscription based on the specified scope.|EventSubscriptions_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.EventGrid/eventSubscriptions`|Get|List all aggregated global event subscriptions under a specific Azure subscription|EventSubscriptions_ListGlobalBySubscription|
|List - get one|`/%{scope}/providers/Microsoft.EventGrid/eventSubscriptions/%{event_subscription_name}`|Get|Get properties of an event subscription|EventSubscriptions_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventGrid/locations/%{location}/eventSubscriptions`|Get|List all event subscriptions from the given location under a specific Azure subscription and resource group|EventSubscriptions_ListRegionalByResourceGroup|
|Update|`/%{scope}/providers/Microsoft.EventGrid/eventSubscriptions/%{event_subscription_name}`|Put|Asynchronously creates a new event subscription or updates an existing event subscription based on the specified scope.|EventSubscriptions_CreateOrUpdate|
|Delete|`/%{scope}/providers/Microsoft.EventGrid/eventSubscriptions/%{event_subscription_name}`|Delete|Delete an existing event subscription|EventSubscriptions_Delete|
