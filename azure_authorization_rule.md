Document: "EventHub"
Path: "/root/specs/specification/eventhub/resource-manager/Microsoft.EventHub/stable/2017-04-01/EventHub.json")

## AuthorizationRule

```puppet
azure_authorization_rule {
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
|parameters | Hash | true | The shared access AuthorizationRule. |
|properties | String | false | Properties supplied to create or update AuthorizationRule |
|resource_group_name | String | true | Name of the resource group within the azure subscription. |
|subscription_id | String | true | Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | Resource type |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the AuthorizationRule

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/eventhubs/%{event_hub_name}/authorizationRules/%{authorization_rule_name}`|Put|Creates or updates an AuthorizationRule for the specified Event Hub.|EventHubs_CreateOrUpdateAuthorizationRule|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/disasterRecoveryConfigs/%{alias}/AuthorizationRules/%{authorization_rule_name}`|Get|Gets an AuthorizationRule for a Namespace by rule name.|DisasterRecoveryConfigs_GetAuthorizationRule|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/eventhubs/%{event_hub_name}/authorizationRules`|Get|Gets the authorization rules for an Event Hub.|EventHubs_ListAuthorizationRules|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/eventhubs/%{event_hub_name}/authorizationRules/%{authorization_rule_name}`|Put|Creates or updates an AuthorizationRule for the specified Event Hub.|EventHubs_CreateOrUpdateAuthorizationRule|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/eventhubs/%{event_hub_name}/authorizationRules/%{authorization_rule_name}`|Delete|Deletes an Event Hub AuthorizationRule.|EventHubs_DeleteAuthorizationRule|