Document: "servicebus"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/servicebus/resource-manager/Microsoft.ServiceBus/stable/2017-04-01/servicebus.json")

## SBAuthorizationRule

Description of a namespace authorization rule.

```puppet
azure_sb_authorization_rule {
  api_version => "api_version",
  authorization_rule_name => "authorization_rule_name",
  namespace_name => "namespace_name",
  parameters => "parameters",
  properties => "properties (optional)",
  queue_name => "queue_name",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|authorization_rule_name | String | true | The authorizationrule name. |
|namespace_name | String | true | The namespace name |
|parameters | Hash | true | The shared access authorization rule. |
|properties | String | false | AuthorizationRule properties. |
|queue_name | String | true | The queue name. |
|resource_group_name | String | true | Name of the Resource group within the Azure subscription. |
|subscription_id | String | true | Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the SBAuthorizationRule

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/queues/%{queue_name}/authorizationRules/%{authorization_rule_name}`|Put|Creates an authorization rule for a queue.|Queues_CreateOrUpdateAuthorizationRule|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/disasterRecoveryConfigs/%{alias}/AuthorizationRules/%{authorization_rule_name}`|Get|Gets an authorization rule for a namespace by rule name.|DisasterRecoveryConfigs_GetAuthorizationRule|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/disasterRecoveryConfigs/%{alias}/AuthorizationRules`|Get|Gets the authorization rules for a namespace.|DisasterRecoveryConfigs_ListAuthorizationRules|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/AuthorizationRules/%{authorization_rule_name}`|Put|Creates or updates an authorization rule for a namespace.|Namespaces_CreateOrUpdateAuthorizationRule|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/queues/%{queue_name}/authorizationRules/%{authorization_rule_name}`|Delete|Deletes a queue authorization rule.|Queues_DeleteAuthorizationRule|
