Document: "servicebus"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/servicebus/resource-manager/Microsoft.ServiceBus/stable/2017-04-01/servicebus.json")

## SBSubscription

Description of subscription resource.

```puppet
azure_sb_subscription {
  api_version => "api_version",
  namespace_name => "namespace_name",
  parameters => "parameters",
  properties => $azure_sb_subscription_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  subscription_name => "subscription_name",
  topic_name => "topic_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|namespace_name | String | true | The namespace name |
|parameters | Hash | true | Parameters supplied to create a subscription resource. |
|properties | [SBSubscriptionProperties](#sbsubscriptionproperties) | false | Properties of subscriptions resource. |
|resource_group_name | String | true | Name of the Resource group within the Azure subscription. |
|subscription_id | String | true | Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|subscription_name | String | true | The subscription name. |
|topic_name | String | true | The topic name. |
        
## SBSubscriptionProperties

Description of Subscription Resource.

```puppet
$azure_sb_subscription_properties = {
  autoDeleteOnIdle => "autoDeleteOnIdle (optional)",
  countDetails => $azure_message_count_details
  deadLetteringOnFilterEvaluationExceptions => "deadLetteringOnFilterEvaluationExceptions (optional)",
  deadLetteringOnMessageExpiration => "deadLetteringOnMessageExpiration (optional)",
  defaultMessageTimeToLive => "defaultMessageTimeToLive (optional)",
  duplicateDetectionHistoryTimeWindow => "duplicateDetectionHistoryTimeWindow (optional)",
  enableBatchedOperations => "enableBatchedOperations (optional)",
  forwardDeadLetteredMessagesTo => "forwardDeadLetteredMessagesTo (optional)",
  forwardTo => "forwardTo (optional)",
  lockDuration => "lockDuration (optional)",
  maxDeliveryCount => "1234 (optional)",
  requiresSession => "requiresSession (optional)",
  status => $azure_entity_status
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|autoDeleteOnIdle | String | false | ISO 8061 timeSpan idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes. |
|countDetails | [MessageCountDetails](#messagecountdetails) | false | Message count details |
|deadLetteringOnFilterEvaluationExceptions | Boolean | false | Value that indicates whether a subscription has dead letter support on filter evaluation exceptions. |
|deadLetteringOnMessageExpiration | Boolean | false | Value that indicates whether a subscription has dead letter support when a message expires. |
|defaultMessageTimeToLive | String | false | ISO 8061 Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself. |
|duplicateDetectionHistoryTimeWindow | String | false | ISO 8601 timeSpan structure that defines the duration of the duplicate detection history. The default value is 10 minutes. |
|enableBatchedOperations | Boolean | false | Value that indicates whether server-side batched operations are enabled. |
|forwardDeadLetteredMessagesTo | String | false | Queue/Topic name to forward the Dead Letter message |
|forwardTo | String | false | Queue/Topic name to forward the messages |
|lockDuration | String | false | ISO 8061 lock duration timespan for the subscription. The default value is 1 minute. |
|maxDeliveryCount | Integer | false | Number of maximum deliveries. |
|requiresSession | Boolean | false | Value indicating if a subscription supports the concept of sessions. |
|status | [EntityStatus](#entitystatus) | false | Enumerates the possible values for the status of a messaging entity. |
        
## MessageCountDetails

Message Count Details.

```puppet
$azure_message_count_details = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## EntityStatus

Entity status.

```puppet
$azure_entity_status = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the SBSubscription

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/topics/%{topic_name}/subscriptions/%{subscription_name}`|Put|Creates a topic subscription.|Subscriptions_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/topics/%{topic_name}/subscriptions/%{subscription_name}`|Get|Returns a subscription description for the specified topic.|Subscriptions_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/topics/%{topic_name}/subscriptions`|Get|List all the subscriptions under a specified topic.|Subscriptions_ListByTopic|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/topics/%{topic_name}/subscriptions/%{subscription_name}`|Put|Creates a topic subscription.|Subscriptions_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/topics/%{topic_name}/subscriptions/%{subscription_name}`|Delete|Deletes a subscription from the specified topic.|Subscriptions_Delete|
