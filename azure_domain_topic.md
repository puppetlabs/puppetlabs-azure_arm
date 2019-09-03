Document: "EventGrid"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/eventgrid/resource-manager/Microsoft.EventGrid/stable/2019-06-01/EventGrid.json")

## DomainTopic

Domain Topic.

```puppet
azure_domain_topic {
  api_version => "api_version",
  domain_name => "domain_name",
  properties => $azure_domain_topic_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|domain_name | String | true | Name of the domain. |
|properties | [DomainTopicProperties](#domaintopicproperties) | false | Properties of the Domain Topic. |
|resource_group_name | String | true | The name of the resource group within the user's subscription. |
|subscription_id | String | true | Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## DomainTopicProperties

Properties of the Domain Topic.

```puppet
$azure_domain_topic_properties = {
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|provisioningState | String | false | Provisioning state of the domain topic. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DomainTopic

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventGrid/domains/%{domain_name}/topics/%{domain_topic_name}`|Put|Asynchronously creates or updates a new domain topic with the specified parameters.|DomainTopics_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventGrid/domains/%{domain_name}/topics/%{domain_topic_name}`|Get|Get properties of a domain topic.|DomainTopics_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventGrid/domains/%{domain_name}/topics`|Get|List all the topics in a domain.|DomainTopics_ListByDomain|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventGrid/domains/%{domain_name}/topics/%{domain_topic_name}`|Put|Asynchronously creates or updates a new domain topic with the specified parameters.|DomainTopics_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventGrid/domains/%{domain_name}/topics/%{domain_topic_name}`|Delete|Delete existing domain topic.|DomainTopics_Delete|
