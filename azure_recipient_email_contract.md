Document: "apimnotifications"


Path: "/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimnotifications.json")

## RecipientEmailContract

Recipient Email details.

```puppet
azure_recipient_email_contract {
  api_version => "api_version",
  email => "email",
  notification_name => "notification_name",
  properties => $azure_recipient_email_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|email | String | true | Email identifier. |
|notification_name | String | true | Notification Name Identifier. |
|properties | [RecipientEmailContractProperties](#recipientemailcontractproperties) | false | Recipient Email contract properties. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## RecipientEmailContractProperties

Recipient Email Contract Properties.

```puppet
$azure_recipient_email_contract_properties = {
  email => "email (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|email | String | false | User Email subscribed to notification. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the RecipientEmailContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/notifications/%{notification_name}/recipientEmails/%{email}`|Put|Adds the Email address to the list of Recipients for the Notification.|NotificationRecipientEmail_CreateOrUpdate|
|List - list all|``||||
|List - get one|``||||
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/notifications/%{notification_name}/recipientEmails`|Get|Gets the list of the Notification Recipient Emails subscribed to a notification.|NotificationRecipientEmail_ListByNotification|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/notifications/%{notification_name}/recipientEmails/%{email}`|Put|Adds the Email address to the list of Recipients for the Notification.|NotificationRecipientEmail_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/notifications/%{notification_name}/recipientEmails/%{email}`|Delete|Removes the email from the list of Notification.|NotificationRecipientEmail_Delete|
