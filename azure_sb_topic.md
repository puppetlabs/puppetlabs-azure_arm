Document: "servicebus"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/servicebus/resource-manager/Microsoft.ServiceBus/stable/2017-04-01/servicebus.json")

## SBTopic

Description of topic resource.

```puppet
azure_sb_topic {
  api_version => "api_version",
  namespace_name => "namespace_name",
  parameters => "parameters",
  properties => $azure_sb_topic_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  topic_name => "topic_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|namespace_name | String | true | The namespace name |
|parameters | Hash | true | Parameters supplied to create a topic resource. |
|properties | [SBTopicProperties](#sbtopicproperties) | false | Properties of topic resource. |
|resource_group_name | String | true | Name of the Resource group within the Azure subscription. |
|subscription_id | String | true | Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|topic_name | String | true | The topic name. |
        
## SBTopicProperties

The Tpoic Properties definition.

```puppet
$azure_sb_topic_properties = {
  autoDeleteOnIdle => "autoDeleteOnIdle (optional)",
  countDetails => $azure_message_count_details
  defaultMessageTimeToLive => "defaultMessageTimeToLive (optional)",
  duplicateDetectionHistoryTimeWindow => "duplicateDetectionHistoryTimeWindow (optional)",
  enableBatchedOperations => "enableBatchedOperations (optional)",
  enableExpress => "enableExpress (optional)",
  enablePartitioning => "enablePartitioning (optional)",
  maxSizeInMegabytes => "1234 (optional)",
  requiresDuplicateDetection => "requiresDuplicateDetection (optional)",
  status => $azure_entity_status
  supportOrdering => "supportOrdering (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|autoDeleteOnIdle | String | false | ISO 8601 timespan idle interval after which the topic is automatically deleted. The minimum duration is 5 minutes. |
|countDetails | [MessageCountDetails](#messagecountdetails) | false | Message count deatils |
|defaultMessageTimeToLive | String | false | ISO 8601 Default message timespan to live value. This is the duration after which the message expires, starting from when the message is sent to Service Bus. This is the default value used when TimeToLive is not set on a message itself. |
|duplicateDetectionHistoryTimeWindow | String | false | ISO8601 timespan structure that defines the duration of the duplicate detection history. The default value is 10 minutes. |
|enableBatchedOperations | Boolean | false | Value that indicates whether server-side batched operations are enabled. |
|enableExpress | Boolean | false | Value that indicates whether Express Entities are enabled. An express topic holds a message in memory temporarily before writing it to persistent storage. |
|enablePartitioning | Boolean | false | Value that indicates whether the topic to be partitioned across multiple message brokers is enabled. |
|maxSizeInMegabytes | Integer | false | Maximum size of the topic in megabytes, which is the size of the memory allocated for the topic. Default is 1024. |
|requiresDuplicateDetection | Boolean | false | Value indicating if this topic requires duplicate detection. |
|status | [EntityStatus](#entitystatus) | false | Enumerates the possible values for the status of a messaging entity. |
|supportOrdering | Boolean | false | Value that indicates whether the topic supports ordering. |
        
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

Here is a list of endpoints that we use to create, read, update and delete the SBTopic

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/topics/%{topic_name}`|Put|Creates a topic in the specified namespace.|Topics_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/topics/%{topic_name}`|Get|Returns a description for the specified topic.|Topics_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/topics`|Get|Gets all the topics in a namespace.|Topics_ListByNamespace|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/topics/%{topic_name}`|Put|Creates a topic in the specified namespace.|Topics_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/topics/%{topic_name}`|Delete|Deletes a topic from the specified namespace and resource group.|Topics_Delete|
