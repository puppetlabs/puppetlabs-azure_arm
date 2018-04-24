Document: "apimnotifications"
Path: "/root/specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2017-03-01/apimnotifications.json")

## RecipientUserContract

```puppet
azure_recipient_user_contract {
  api_version => "api_version",
  id => "id (optional)",
  name => "name (optional)",
  notification_name => "notification_name",
  properties => $azure_recipient_users_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
  uid => "uid",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|id | String | false | Resource ID. |
|name | String | false | Resource name. |
|notification_name | String | true | Notification Name Identifier. |
|properties | [RecipientUsersContractProperties](#recipientuserscontractproperties) | false | Recipient User entity contract properties. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | Resource type for API Management resource. |
|uid | String | true | User identifier. Must be unique in the current API Management service instance. |
        
## RecipientUsersContractProperties

```puppet
$azure_recipient_users_contract_properties = {
  userId => "userId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|userId | String | false | API Management UserId subscribed to notification. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the RecipientUserContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/notifications/%{notification_name}/recipientUsers/%{uid}`|Put|Adds the API Management User to the list of Recipients for the Notification.|NotificationRecipientUser_CreateOrUpdate|
|List - list all|``||||
|List - get one|``||||
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/notifications/%{notification_name}/recipientUsers`|Get|Gets the list of the Notification Recipient User subscribed to the notification.|NotificationRecipientUser_ListByNotification|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/notifications/%{notification_name}/recipientUsers/%{uid}`|Put|Adds the API Management User to the list of Recipients for the Notification.|NotificationRecipientUser_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/notifications/%{notification_name}/recipientUsers/%{uid}`|Delete|Removes the API Management user from the list of Notification.|NotificationRecipientUser_Delete|