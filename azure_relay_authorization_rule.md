Document: "relay"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/relay/resource-manager/Microsoft.Relay/stable/2017-04-01/relay.json")

## AuthorizationRule

Description of a namespace authorization rule.

```puppet
azure_relay_authorization_rule {
  api_version => "api_version",
  namespace_name => "namespace_name",
  parameters => "parameters",
  properties => "properties",
  relay_name => "relay_name",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|namespace_name | String | true | The namespace name |
|parameters | Hash | true | The authorization rule parameters. |
|properties | String | true | Authorization rule properties. |
|relay_name | String | true | The relay name. |
|resource_group_name | String | true | Name of the Resource group within the Azure subscription. |
|subscription_id | String | true | Subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the AuthorizationRule

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Relay/namespaces/%{namespace_name}/wcfRelays/%{relay_name}/authorizationRules/%{authorization_rule_name}`|Put|Creates or updates an authorization rule for a WCF relay.|WCFRelays_CreateOrUpdateAuthorizationRule|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Relay/namespaces/%{namespace_name}/wcfRelays/%{relay_name}/authorizationRules/%{authorization_rule_name}`|Get|Get authorizationRule for a WCF relay by name.|WCFRelays_GetAuthorizationRule|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Relay/namespaces/%{namespace_name}/authorizationRules`|Get|Authorization rules for a namespace.|Namespaces_ListAuthorizationRules|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Relay/namespaces/%{namespace_name}/wcfRelays/%{relay_name}/authorizationRules/%{authorization_rule_name}`|Put|Creates or updates an authorization rule for a WCF relay.|WCFRelays_CreateOrUpdateAuthorizationRule|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Relay/namespaces/%{namespace_name}/wcfRelays/%{relay_name}/authorizationRules/%{authorization_rule_name}`|Delete|Deletes a WCF relay authorization rule.|WCFRelays_DeleteAuthorizationRule|
