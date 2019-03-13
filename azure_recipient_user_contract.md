Document: "apimnotifications"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimnotifications.json")

## RecipientUserContract

Recipient User details.

```puppet
azure_recipient_user_contract {
  api_version => "api_version",
  notification_name => "notification_name",
  properties => $azure_recipient_users_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
  uid => "uid",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|notification_name | String | true | Notification Name Identifier. |
|properties | [RecipientUsersContractProperties](#recipientuserscontractproperties) | false | Recipient User entity contract properties. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|uid | String | true | User identifier. Must be unique in the current API Management service instance. |
        
## RecipientUsersContractProperties

Recipient User Contract Properties.

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
