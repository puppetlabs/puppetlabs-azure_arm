Document: "EventHub"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/eventhub/resource-manager/Microsoft.EventHub/stable/2017-04-01/EventHub.json")

## AuthorizationRule

Single item in a List or Get AuthorizationRule operation

```puppet
azure_authorization_rule {
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
|parameters | Hash | true | The shared access AuthorizationRule. |
|properties | String | false | Properties supplied to create or update AuthorizationRule |
|resource_group_name | String | true | Name of the resource group within the azure subscription. |
|subscription_id | String | true | Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the AuthorizationRule

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/eventhubs/%{event_hub_name}/authorizationRules/%{authorization_rule_name}`|Put|Creates or updates an AuthorizationRule for the specified Event Hub.|EventHubs_CreateOrUpdateAuthorizationRule|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/eventhubs/%{event_hub_name}/authorizationRules/%{authorization_rule_name}`|Get|Gets an AuthorizationRule for an Event Hub by rule name.|EventHubs_GetAuthorizationRule|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/AuthorizationRules`|Get|Gets a list of authorization rules for a Namespace.|Namespaces_ListAuthorizationRules|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/eventhubs/%{event_hub_name}/authorizationRules/%{authorization_rule_name}`|Put|Creates or updates an AuthorizationRule for the specified Event Hub.|EventHubs_CreateOrUpdateAuthorizationRule|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/eventhubs/%{event_hub_name}/authorizationRules/%{authorization_rule_name}`|Delete|Deletes an Event Hub AuthorizationRule.|EventHubs_DeleteAuthorizationRule|
