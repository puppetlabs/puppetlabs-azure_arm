Document: "actionGroups_API"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/monitor/resource-manager/Microsoft.Insights/stable/2018-09-01/actionGroups_API.json")

## ActionGroupResource

An action group resource.

```puppet
azure_action_group_resource {
  action_group => "actionGroup",
  action_group_name => "action_group_name",
  api_version => "api_version",
  location => "location (optional)",
  properties => $azure_action_group
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|action_group | Hash | true | The action group to create or use for the update. |
|action_group_name | String | true | The name of the action group. |
|api_version | String | true | Client Api Version. |
|location | String | false | Resource location |
|properties | [ActionGroup](#actiongroup) | false | The action groups properties of the resource. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The Azure subscription Id. |
|tags | String | false | Resource tags |
        
## ActionGroup

An Azure action group.

```puppet
$azure_action_group = {
  armRoleReceivers => $azure_arm_role_receiver
  automationRunbookReceivers => $azure_automation_runbook_receiver
  azureAppPushReceivers => $azure_azure_app_push_receiver
  azureFunctionReceivers => $azure_azure_function_receiver
  emailReceivers => $azure_email_receiver
  enabled => "enabled",
  groupShortName => "groupShortName",
  itsmReceivers => $azure_itsm_receiver
  logicAppReceivers => $azure_logic_app_receiver
  smsReceivers => $azure_sms_receiver
  voiceReceivers => $azure_voice_receiver
  webhookReceivers => $azure_webhook_receiver
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|armRoleReceivers | [ArmRoleReceiver](#armrolereceiver) | false | The list of ARM role receivers that are part of this action group. Roles are Azure RBAC roles and only built-in roles are supported. |
|automationRunbookReceivers | [AutomationRunbookReceiver](#automationrunbookreceiver) | false | The list of AutomationRunbook receivers that are part of this action group. |
|azureAppPushReceivers | [AzureAppPushReceiver](#azureapppushreceiver) | false | The list of AzureAppPush receivers that are part of this action group. |
|azureFunctionReceivers | [AzureFunctionReceiver](#azurefunctionreceiver) | false | The list of azure function receivers that are part of this action group. |
|emailReceivers | [EmailReceiver](#emailreceiver) | false | The list of email receivers that are part of this action group. |
|enabled | Boolean | true | Indicates whether this action group is enabled. If an action group is not enabled, then none of its receivers will receive communications. |
|groupShortName | String | true | The short name of the action group. This will be used in SMS messages. |
|itsmReceivers | [ItsmReceiver](#itsmreceiver) | false | The list of ITSM receivers that are part of this action group. |
|logicAppReceivers | [LogicAppReceiver](#logicappreceiver) | false | The list of logic app receivers that are part of this action group. |
|smsReceivers | [SmsReceiver](#smsreceiver) | false | The list of SMS receivers that are part of this action group. |
|voiceReceivers | [VoiceReceiver](#voicereceiver) | false | The list of voice receivers that are part of this action group. |
|webhookReceivers | [WebhookReceiver](#webhookreceiver) | false | The list of webhook receivers that are part of this action group. |
        
## ArmRoleReceiver

An arm role receiver.

```puppet
$azure_arm_role_receiver = {
  name => "name",
  roleId => "roleId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | The name of the arm role receiver. Names must be unique across all receivers within an action group. |
|roleId | String | true | The arm role id. |
        
## AutomationRunbookReceiver

The Azure Automation Runbook notification receiver.

```puppet
$azure_automation_runbook_receiver = {
  automationAccountId => "automationAccountId",
  isGlobalRunbook => "isGlobalRunbook",
  name => "name (optional)",
  runbookName => "runbookName",
  serviceUri => "serviceUri (optional)",
  webhookResourceId => "webhookResourceId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|automationAccountId | String | true | The Azure automation account Id which holds this runbook and authenticate to Azure resource. |
|isGlobalRunbook | Boolean | true | Indicates whether this instance is global runbook. |
|name | String | false | Indicates name of the webhook. |
|runbookName | String | true | The name for this runbook. |
|serviceUri | String | false | The URI where webhooks should be sent. |
|webhookResourceId | String | true | The resource id for webhook linked to this runbook. |
        
## AzureAppPushReceiver

The Azure mobile App push notification receiver.

```puppet
$azure_azure_app_push_receiver = {
  emailAddress => "emailAddress",
  name => "name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|emailAddress | String | true | The email address registered for the Azure mobile app. |
|name | String | true | The name of the Azure mobile app push receiver. Names must be unique across all receivers within an action group. |
        
## AzureFunctionReceiver

An azure function receiver.

```puppet
$azure_azure_function_receiver = {
  functionAppResourceId => "functionAppResourceId",
  functionName => "functionName",
  httpTriggerUrl => "httpTriggerUrl",
  name => "name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|functionAppResourceId | String | true | The azure resource id of the function app. |
|functionName | String | true | The function name in the function app. |
|httpTriggerUrl | String | true | The http trigger url where http request sent to. |
|name | String | true | The name of the azure function receiver. Names must be unique across all receivers within an action group. |
        
## EmailReceiver

An email receiver.

```puppet
$azure_email_receiver = {
  emailAddress => "emailAddress",
  name => "name",
  status => $azure_receiver_status
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|emailAddress | String | true | The email address of this receiver. |
|name | String | true | The name of the email receiver. Names must be unique across all receivers within an action group. |
|status | [ReceiverStatus](#receiverstatus) | false | The receiver status of the e-mail. |
        
## ReceiverStatus

Indicates the status of the receiver. Receivers that are not Enabled will not receive any communications.

```puppet
$azure_receiver_status = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ItsmReceiver

An Itsm receiver.

```puppet
$azure_itsm_receiver = {
  connectionId => "connectionId",
  name => "name",
  region => "region",
  ticketConfiguration => "ticketConfiguration",
  workspaceId => "workspaceId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|connectionId | String | true | Unique identification of ITSM connection among multiple defined in above workspace. |
|name | String | true | The name of the Itsm receiver. Names must be unique across all receivers within an action group. |
|region | String | true | Region in which workspace resides. Supported values:'centralindia','japaneast','southeastasia','australiasoutheast','uksouth','westcentralus','canadacentral','eastus','westeurope' |
|ticketConfiguration | String | true | JSON blob for the configurations of the ITSM action. CreateMultipleWorkItems option will be part of this blob as well. |
|workspaceId | String | true | OMS LA instance identifier. |
        
## LogicAppReceiver

A logic app receiver.

```puppet
$azure_logic_app_receiver = {
  callbackUrl => "callbackUrl",
  name => "name",
  resourceId => "resourceId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|callbackUrl | String | true | The callback url where http request sent to. |
|name | String | true | The name of the logic app receiver. Names must be unique across all receivers within an action group. |
|resourceId | String | true | The azure resource id of the logic app receiver. |
        
## SmsReceiver

An SMS receiver.

```puppet
$azure_sms_receiver = {
  countryCode => "countryCode",
  name => "name",
  phoneNumber => "phoneNumber",
  status => $azure_receiver_status
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|countryCode | String | true | The country code of the SMS receiver. |
|name | String | true | The name of the SMS receiver. Names must be unique across all receivers within an action group. |
|phoneNumber | String | true | The phone number of the SMS receiver. |
|status | [ReceiverStatus](#receiverstatus) | false | The status of the receiver. |
        
        
## VoiceReceiver

A voice receiver.

```puppet
$azure_voice_receiver = {
  countryCode => "countryCode",
  name => "name",
  phoneNumber => "phoneNumber",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|countryCode | String | true | The country code of the voice receiver. |
|name | String | true | The name of the voice receiver. Names must be unique across all receivers within an action group. |
|phoneNumber | String | true | The phone number of the voice receiver. |
        
## WebhookReceiver

A webhook receiver.

```puppet
$azure_webhook_receiver = {
  name => "name",
  serviceUri => "serviceUri",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | The name of the webhook receiver. Names must be unique across all receivers within an action group. |
|serviceUri | String | true | The URI where webhooks should be sent. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ActionGroupResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/microsoft.insights/actionGroups/%{action_group_name}`|Put|Create a new action group or update an existing one.|ActionGroups_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/microsoft.insights/actionGroups`|Get|Get a list of all action groups in a subscription.|ActionGroups_ListBySubscriptionId|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/microsoft.insights/actionGroups/%{action_group_name}`|Get|Get an action group.|ActionGroups_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/microsoft.insights/actionGroups`|Get|Get a list of all action groups in a subscription.|ActionGroups_ListBySubscriptionId|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/microsoft.insights/actionGroups/%{action_group_name}`|Put|Create a new action group or update an existing one.|ActionGroups_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/microsoft.insights/actionGroups/%{action_group_name}`|Delete|Delete an action group.|ActionGroups_Delete|
