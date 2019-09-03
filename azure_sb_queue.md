Document: "servicebus"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/servicebus/resource-manager/Microsoft.ServiceBus/stable/2017-04-01/servicebus.json")

## SBQueue

Description of queue Resource.

```puppet
azure_sb_queue {
  api_version => "api_version",
  namespace_name => "namespace_name",
  parameters => "parameters",
  properties => $azure_sb_queue_properties
  queue_name => "queue_name",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|namespace_name | String | true | The namespace name |
|parameters | Hash | true | Parameters supplied to create or update a queue resource. |
|properties | [SBQueueProperties](#sbqueueproperties) | false | Queue Properties |
|queue_name | String | true | The queue name. |
|resource_group_name | String | true | Name of the Resource group within the Azure subscription. |
|subscription_id | String | true | Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## SBQueueProperties

The Queue Properties definition.

```puppet
$azure_sb_queue_properties = {
  autoDeleteOnIdle => "autoDeleteOnIdle (optional)",
  countDetails => $azure_message_count_details
  deadLetteringOnMessageExpiration => "deadLetteringOnMessageExpiration (optional)",
  defaultMessageTimeToLive => "defaultMessageTimeToLive (optional)",
  duplicateDetectionHistoryTimeWindow => "duplicateDetectionHistoryTimeWindow (optional)",
  enableBatchedOperations => "enableBatchedOperations (optional)",
  enableExpress => "enableExpress (optional)",
  enablePartitioning => "enablePartitioning (optional)",
  forwardDeadLetteredMessagesTo => "forwardDeadLetteredMessagesTo (optional)",
  forwardTo => "forwardTo (optional)",
  lockDuration => "lockDuration (optional)",
  maxDeliveryCount => "1234 (optional)",
  maxSizeInMegabytes => "1234 (optional)",
  requiresDuplicateDetection => "requiresDuplicateDetection (optional)",
  requiresSession => "requiresSession (optional)",
  status => $azure_entity_status
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|autoDeleteOnIdle | String | false | ISO 8061 timeSpan idle interval after which the queue is automatically deleted. The minimum duration is 5 minutes. |
|countDetails | [MessageCountDetails](#messagecountdetails) | false | Message Count Details. |
|deadLetteringOnMessageExpiration | Boolean | false | A value that indicates whether this queue has dead letter support when a message expires. |
|defaultMessageTimeToLive | String | false | ISO 8601 default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself. |
|duplicateDetectionHistoryTimeWindow | String | false | ISO 8601 timeSpan structure that defines the duration of the duplicate detection history. The default value is 10 minutes. |
|enableBatchedOperations | Boolean | false | Value that indicates whether server-side batched operations are enabled. |
|enableExpress | Boolean | false | A value that indicates whether Express Entities are enabled. An express queue holds a message in memory temporarily before writing it to persistent storage. |
|enablePartitioning | Boolean | false | A value that indicates whether the queue is to be partitioned across multiple message brokers. |
|forwardDeadLetteredMessagesTo | String | false | Queue/Topic name to forward the Dead Letter message |
|forwardTo | String | false | Queue/Topic name to forward the messages |
|lockDuration | String | false | ISO 8601 timespan duration of a peek-lock; that is, the amount of time that the message is locked for other receivers. The maximum value for LockDuration is 5 minutes; the default value is 1 minute. |
|maxDeliveryCount | Integer | false | The maximum delivery count. A message is automatically deadlettered after this number of deliveries. default value is 10. |
|maxSizeInMegabytes | Integer | false | The maximum size of the queue in megabytes, which is the size of memory allocated for the queue. Default is 1024. |
|requiresDuplicateDetection | Boolean | false | A value indicating if this queue requires duplicate detection. |
|requiresSession | Boolean | false | A value that indicates whether the queue supports the concept of sessions. |
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

Here is a list of endpoints that we use to create, read, update and delete the SBQueue

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/queues/%{queue_name}`|Put|Creates or updates a Service Bus queue. This operation is idempotent.|Queues_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/queues/%{queue_name}`|Get|Returns a description for the specified queue.|Queues_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/queues`|Get|Gets the queues within a namespace.|Queues_ListByNamespace|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/queues/%{queue_name}`|Put|Creates or updates a Service Bus queue. This operation is idempotent.|Queues_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/queues/%{queue_name}`|Delete|Deletes a queue from the specified namespace in a resource group.|Queues_Delete|
