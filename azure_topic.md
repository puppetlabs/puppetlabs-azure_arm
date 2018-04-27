Document: "EventGrid"
Path: "/root/specs/specification/eventgrid/resource-manager/Microsoft.EventGrid/stable/2018-01-01/EventGrid.json")

## Topic

```puppet
azure_topic {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_topic_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  topic_info => "topicInfo",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|id | String | false | Fully qualified identifier of the resource |
|location | String | false | Location of the resource |
|name | String | false | Name of the resource |
|properties | [TopicProperties](#topicproperties) | false | Properties of the topic |
|resource_group_name | String | true | The name of the resource group within the user's subscription. |
|subscription_id | String | true | Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Tags of the resource |
|topic_info | Hash | true | Topic information |
|type | String | false | Type of the resource |
        
## TopicProperties

```puppet
$azure_topic_properties = {
  endpoint => "endpoint (optional)",
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endpoint | String | false | Endpoint for the topic. |
|provisioningState | String | false | Provisioning state of the topic. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Topic

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventGrid/topics/%{topic_name}`|Put|Asynchronously creates a new topic with the specified parameters.|Topics_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.EventGrid/topics`|Get|List all the topics under an Azure subscription|Topics_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventGrid/topics/%{topic_name}`|Get|Get properties of a topic|Topics_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.EventGrid/topics`|Get|List all the topics under an Azure subscription|Topics_ListBySubscription|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventGrid/topics/%{topic_name}`|Put|Asynchronously creates a new topic with the specified parameters.|Topics_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventGrid/topics/%{topic_name}`|Delete|Delete existing topic|Topics_Delete|