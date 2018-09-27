Document: "notificationhubs"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/notificationhubs/resource-manager/Microsoft.NotificationHubs/stable/2017-04-01/notificationhubs.json")

## SharedAccessAuthorizationRuleResource

Description of a Namespace AuthorizationRules.

```puppet
azure_shared_access_authorization_rule_resource {
  api_version => "api_version",
  authorization_rule_name => "authorization_rule_name",
  location => "location (optional)",
  namespace_name => "namespace_name",
  notification_hub_name => "notification_hub_name",
  parameters => "parameters",
  properties => $azure_shared_access_authorization_rule_properties
  resource_group_name => "resource_group_name",
  sku => "sku (optional)",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|authorization_rule_name | String | true | Authorization Rule Name. |
|location | String | false | Resource location |
|namespace_name | String | true | The namespace name. |
|notification_hub_name | String | true | The notification hub name. |
|parameters | Hash | true | The shared access authorization rule. |
|properties | [SharedAccessAuthorizationRuleProperties](#sharedaccessauthorizationruleproperties) | false | Pproperties of the Namespace AuthorizationRule. |
|resource_group_name | String | true | The name of the resource group. |
|sku | String | false | The sku of the created namespace |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
        
## SharedAccessAuthorizationRuleProperties

SharedAccessAuthorizationRule properties.

```puppet
$azure_shared_access_authorization_rule_properties = {
  rights => "rights (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|rights | Array | false | The rights associated with the rule. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the SharedAccessAuthorizationRuleResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.NotificationHubs/namespaces/%{namespace_name}/notificationHubs/%{notification_hub_name}/AuthorizationRules/%{authorization_rule_name}`|Put|Creates/Updates an authorization rule for a NotificationHub|NotificationHubs_CreateOrUpdateAuthorizationRule|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.NotificationHubs/namespaces/%{namespace_name}/notificationHubs/%{notification_hub_name}/AuthorizationRules/%{authorization_rule_name}`|Get|Gets an authorization rule for a NotificationHub by name.|NotificationHubs_GetAuthorizationRule|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.NotificationHubs/namespaces/%{namespace_name}/notificationHubs/%{notification_hub_name}/AuthorizationRules`|Get|Gets the authorization rules for a NotificationHub.|NotificationHubs_ListAuthorizationRules|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.NotificationHubs/namespaces/%{namespace_name}/notificationHubs/%{notification_hub_name}/AuthorizationRules/%{authorization_rule_name}`|Put|Creates/Updates an authorization rule for a NotificationHub|NotificationHubs_CreateOrUpdateAuthorizationRule|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.NotificationHubs/namespaces/%{namespace_name}/notificationHubs/%{notification_hub_name}/AuthorizationRules/%{authorization_rule_name}`|Delete|Deletes a notificationHub authorization rule|NotificationHubs_DeleteAuthorizationRule|
