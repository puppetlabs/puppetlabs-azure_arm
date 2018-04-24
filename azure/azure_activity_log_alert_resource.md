Document: "activityLogAlerts_API"
Path: "/root/specs/specification/monitor/resource-manager/microsoft.insights/stable/2017-04-01/activityLogAlerts_API.json")

## ActivityLogAlertResource

```puppet
azure_activity_log_alert_resource {
  activity_log_alert => "activityLogAlert",
  activity_log_alert_name => "activity_log_alert_name",
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_activity_log_alert
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|activity_log_alert | Hash | true | The activity log alert to create or use for the update. |
|activity_log_alert_name | String | true | The name of the activity log alert. |
|api_version | String | true | Client Api Version. |
|id | String | false | Azure resource Id |
|location | String | false | Resource location |
|name | String | false | Azure resource name |
|properties | [ActivityLogAlert](#activitylogalert) | false | The activity log alert properties of the resource. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The Azure subscription Id. |
|tags | String | false | Resource tags |
|type | String | false | Azure resource type |
        
## ActivityLogAlert

```puppet
$azure_activity_log_alert = {
  actions => $azure_activity_log_alert_action_list
  condition => $azure_activity_log_alert_all_of_condition
  description => "description (optional)",
  enabled => "enabled (optional)",
  scopes => "scopes",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|actions | [ActivityLogAlertActionList](#activitylogalertactionlist) | true | The actions that will activate when the condition is met. |
|condition | [ActivityLogAlertAllOfCondition](#activitylogalertallofcondition) | true | The condition that will cause this alert to activate. |
|description | String | false | A description of this activity log alert. |
|enabled | Boolean | false | Indicates whether this activity log alert is enabled. If an activity log alert is not enabled, then none of its actions will be activated. |
|scopes | Array | true | A list of resourceIds that will be used as prefixes. The alert will only apply to activityLogs with resourceIds that fall under one of these prefixes. This list must include at least one item. |
        
## ActivityLogAlertActionList

```puppet
$azure_activity_log_alert_action_list = {
  actionGroups => $azure_activity_log_alert_action_group
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|actionGroups | [ActivityLogAlertActionGroup](#activitylogalertactiongroup) | false | The list of activity log alerts. |
        
## ActivityLogAlertActionGroup

```puppet
$azure_activity_log_alert_action_group = {
  actionGroupId => "actionGroupId",
  webhookProperties => "webhookProperties (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|actionGroupId | String | true | The resourceId of the action group. This cannot be null or empty. |
|webhookProperties | String | false | the dictionary of custom properties to include with the post operation. These data are appended to the webhook payload. |
        
## ActivityLogAlertAllOfCondition

```puppet
$azure_activity_log_alert_all_of_condition = {
  allOf => $azure_activity_log_alert_leaf_condition
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|allOf | [ActivityLogAlertLeafCondition](#activitylogalertleafcondition) | true | The list of activity log alert conditions. |
        
## ActivityLogAlertLeafCondition

```puppet
$azure_activity_log_alert_leaf_condition = {
  equals => "equals",
  field => "field",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|equals | String | true | The field value will be compared to this value (case-insensitive) to determine if the condition is met. |
|field | String | true | The name of the field that this condition will examine. The possible values for this field are (case-insensitive): 'resourceId', 'category', 'caller', 'level', 'operationName', 'resourceGroup', 'resourceProvider', 'status', 'subStatus', 'resourceType', or anything beginning with 'properties.'. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ActivityLogAlertResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/microsoft.insights/activityLogAlerts/%{activity_log_alert_name}`|Put|Create a new activity log alert or update an existing one.|ActivityLogAlerts_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/microsoft.insights/activityLogAlerts`|Get|Get a list of all activity log alerts in a subscription.|ActivityLogAlerts_ListBySubscriptionId|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/microsoft.insights/activityLogAlerts/%{activity_log_alert_name}`|Get|Get an activity log alert.|ActivityLogAlerts_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/microsoft.insights/activityLogAlerts`|Get|Get a list of all activity log alerts in a subscription.|ActivityLogAlerts_ListBySubscriptionId|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/microsoft.insights/activityLogAlerts/%{activity_log_alert_name}`|Put|Create a new activity log alert or update an existing one.|ActivityLogAlerts_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/microsoft.insights/activityLogAlerts/%{activity_log_alert_name}`|Delete|Delete an activity log alert.|ActivityLogAlerts_Delete|