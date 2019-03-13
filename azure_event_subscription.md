Document: "EventGrid"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/eventgrid/resource-manager/Microsoft.EventGrid/stable/2019-01-01/EventGrid.json")

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
  deadLetterDestination => $azure_dead_letter_destination
  destination => $azure_event_subscription_destination
  filter => $azure_event_subscription_filter
  labels => "labels (optional)",
  retryPolicy => $azure_retry_policy
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|deadLetterDestination | [DeadLetterDestination](#deadletterdestination) | false | The DeadLetter destination of the event subscription. |
|destination | [EventSubscriptionDestination](#eventsubscriptiondestination) | false | Information about the destination where events have to be delivered for the event subscription. |
|filter | [EventSubscriptionFilter](#eventsubscriptionfilter) | false | Information about the filter for the event subscription. |
|labels | Array | false | List of user defined labels. |
|retryPolicy | [RetryPolicy](#retrypolicy) | false | The retry policy for events. This can be used to configure maximum number of delivery attempts and time to live for events. |
        
## DeadLetterDestination

Information about the dead letter destination for an event subscription. To configure a deadletter destination, do not directly instantiate an object of this class. Instead, instantiate an object of a derived class. Currently, StorageBlobDeadLetterDestination is the only class that derives from this class.

```puppet
$azure_dead_letter_destination = {
  endpointType => "endpointType",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endpointType | String | true | Type of the endpoint for the dead letter destination |
        
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
|includedEventTypes | Array | false | A list of applicable event types that need to be part of the event subscription. If it is desired to subscribe to all event types, the string 'all' needs to be specified as an element in this list. |
|isSubjectCaseSensitive | Boolean | false | Specifies if the SubjectBeginsWith and SubjectEndsWith properties of the filter should be compared in a case sensitive manner. |
|subjectBeginsWith | String | false | An optional string to filter events for an event subscription based on a resource path prefix.The format of this depends on the publisher of the events. Wildcard characters are not supported in this path. |
|subjectEndsWith | String | false | An optional string to filter events for an event subscription based on a resource path suffix.Wildcard characters are not supported in this path. |
        
## RetryPolicy

Information about the retry policy for an event subscription

```puppet
$azure_retry_policy = {
  eventTimeToLiveInMinutes => "1234 (optional)",
  maxDeliveryAttempts => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|eventTimeToLiveInMinutes | Integer | false | Time To Live (in minutes) for events. |
|maxDeliveryAttempts | Integer | false | Maximum number of delivery retry attempts for events. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the EventSubscription

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/%{scope}/providers/Microsoft.EventGrid/eventSubscriptions/%{event_subscription_name}`|Put|Asynchronously creates a new event subscription or updates an existing event subscription based on the specified scope.|EventSubscriptions_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.EventGrid/eventSubscriptions`|Get|List all aggregated global event subscriptions under a specific Azure subscription|EventSubscriptions_ListGlobalBySubscription|
|List - get one|`/%{scope}/providers/Microsoft.EventGrid/eventSubscriptions/%{event_subscription_name}`|Get|Get properties of an event subscription|EventSubscriptions_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventGrid/eventSubscriptions`|Get|List all global event subscriptions under a specific Azure subscription and resource group|EventSubscriptions_ListGlobalByResourceGroup|
|Update|`/%{scope}/providers/Microsoft.EventGrid/eventSubscriptions/%{event_subscription_name}`|Put|Asynchronously creates a new event subscription or updates an existing event subscription based on the specified scope.|EventSubscriptions_CreateOrUpdate|
|Delete|`/%{scope}/providers/Microsoft.EventGrid/eventSubscriptions/%{event_subscription_name}`|Delete|Delete an existing event subscription|EventSubscriptions_Delete|
