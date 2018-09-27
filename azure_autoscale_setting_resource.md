Document: "autoscale_API"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/monitor/resource-manager/microsoft.insights/stable/2015-04-01/autoscale_API.json")

## AutoscaleSettingResource

The autoscale setting resource.

```puppet
azure_autoscale_setting_resource {
  api_version => "api_version",
  autoscale_setting_name => "autoscale_setting_name",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_autoscale_setting
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|autoscale_setting_name | String | true | The autoscale setting name. |
|location | String | false | Resource location |
|parameters | Hash | true | Parameters supplied to the operation. |
|properties | [AutoscaleSetting](#autoscalesetting) | true | The autoscale setting of the resource. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The Azure subscription Id. |
|tags | String | false | Resource tags |
        
## AutoscaleSetting

A setting that contains all of the configuration for the automatic scaling of a resource.

```puppet
$azure_autoscale_setting = {
  enabled => "enabled (optional)",
  name => "name (optional)",
  notifications => $azure_autoscale_notification
  profiles => $azure_autoscale_profile
  targetResourceUri => "targetResourceUri (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|enabled | Boolean | false | the enabled flag. Specifies whether automatic scaling is enabled for the resource. The default value is 'true'. |
|name | String | false | the name of the autoscale setting. |
|notifications | [AutoscaleNotification](#autoscalenotification) | false | the collection of notifications. |
|profiles | [AutoscaleProfile](#autoscaleprofile) | true | the collection of automatic scaling profiles that specify different scaling parameters for different time periods. A maximum of 20 profiles can be specified. |
|targetResourceUri | String | false | the resource identifier of the resource that the autoscale setting should be added to. |
        
## AutoscaleNotification

Autoscale notification.

```puppet
$azure_autoscale_notification = {
  email => $azure_email_notification
  operation => "operation",
  webhooks => $azure_webhook_notification
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|email | [EmailNotification](#emailnotification) | false | the email notification. |
|operation | String | true | the operation associated with the notification and its value must be 'scale' |
|webhooks | [WebhookNotification](#webhooknotification) | false | the collection of webhook notifications. |
        
## EmailNotification

Email notification of an autoscale event.

```puppet
$azure_email_notification = {
  customEmails => "customEmails (optional)",
  sendToSubscriptionAdministrator => "sendToSubscriptionAdministrator (optional)",
  sendToSubscriptionCoAdministrators => "sendToSubscriptionCoAdministrators (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|customEmails | Array | false | the custom e-mails list. This value can be null or empty, in which case this attribute will be ignored. |
|sendToSubscriptionAdministrator | Boolean | false | a value indicating whether to send email to subscription administrator. |
|sendToSubscriptionCoAdministrators | Boolean | false | a value indicating whether to send email to subscription co-administrators. |
        
## WebhookNotification

Webhook notification of an autoscale event.

```puppet
$azure_webhook_notification = {
  properties => "properties (optional)",
  serviceUri => "serviceUri (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|properties | Hash | false | a property bag of settings. This value can be empty. |
|serviceUri | String | false | the service address to receive the notification. |
        
## AutoscaleProfile

Autoscale profile.

```puppet
$azure_autoscale_profile = {
  capacity => $azure_scale_capacity
  fixedDate => $azure_time_window
  name => "name",
  recurrence => $azure_recurrence
  rules => $azure_scale_rule
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|capacity | [ScaleCapacity](#scalecapacity) | true | the number of instances that can be used during this profile. |
|fixedDate | [TimeWindow](#timewindow) | false | the specific date-time for the profile. This element is not used if the Recurrence element is used. |
|name | String | true | the name of the profile. |
|recurrence | [Recurrence](#recurrence) | false | the repeating times at which this profile begins. This element is not used if the FixedDate element is used. |
|rules | [ScaleRule](#scalerule) | true | the collection of rules that provide the triggers and parameters for the scaling action. A maximum of 10 rules can be specified. |
        
## ScaleCapacity

The number of instances that can be used during this profile.

```puppet
$azure_scale_capacity = {
  default => "default",
  maximum => "maximum",
  minimum => "minimum",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|default | String | true | the number of instances that will be set if metrics are not available for evaluation. The default is only used if the current instance count is lower than the default. |
|maximum | String | true | the maximum number of instances for the resource. The actual maximum number of instances is limited by the cores that are available in the subscription. |
|minimum | String | true | the minimum number of instances for the resource. |
        
## TimeWindow

A specific date-time for the profile.

```puppet
$azure_time_window = {
  end => "end",
  start => "start",
  timeZone => "timeZone (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|end | String | true | the end time for the profile in ISO 8601 format. |
|start | String | true | the start time for the profile in ISO 8601 format. |
|timeZone | String | false | the timezone of the start and end times for the profile. Some examples of valid timezones are: Dateline Standard Time, UTC-11, Hawaiian Standard Time, Alaskan Standard Time, Pacific Standard Time (Mexico), Pacific Standard Time, US Mountain Standard Time, Mountain Standard Time (Mexico), Mountain Standard Time, Central America Standard Time, Central Standard Time, Central Standard Time (Mexico), Canada Central Standard Time, SA Pacific Standard Time, Eastern Standard Time, US Eastern Standard Time, Venezuela Standard Time, Paraguay Standard Time, Atlantic Standard Time, Central Brazilian Standard Time, SA Western Standard Time, Pacific SA Standard Time, Newfoundland Standard Time, E. South America Standard Time, Argentina Standard Time, SA Eastern Standard Time, Greenland Standard Time, Montevideo Standard Time, Bahia Standard Time, UTC-02, Mid-Atlantic Standard Time, Azores Standard Time, Cape Verde Standard Time, Morocco Standard Time, UTC, GMT Standard Time, Greenwich Standard Time, W. Europe Standard Time, Central Europe Standard Time, Romance Standard Time, Central European Standard Time, W. Central Africa Standard Time, Namibia Standard Time, Jordan Standard Time, GTB Standard Time, Middle East Standard Time, Egypt Standard Time, Syria Standard Time, E. Europe Standard Time, South Africa Standard Time, FLE Standard Time, Turkey Standard Time, Israel Standard Time, Kaliningrad Standard Time, Libya Standard Time, Arabic Standard Time, Arab Standard Time, Belarus Standard Time, Russian Standard Time, E. Africa Standard Time, Iran Standard Time, Arabian Standard Time, Azerbaijan Standard Time, Russia Time Zone 3, Mauritius Standard Time, Georgian Standard Time, Caucasus Standard Time, Afghanistan Standard Time, West Asia Standard Time, Ekaterinburg Standard Time, Pakistan Standard Time, India Standard Time, Sri Lanka Standard Time, Nepal Standard Time, Central Asia Standard Time, Bangladesh Standard Time, N. Central Asia Standard Time, Myanmar Standard Time, SE Asia Standard Time, North Asia Standard Time, China Standard Time, North Asia East Standard Time, Singapore Standard Time, W. Australia Standard Time, Taipei Standard Time, Ulaanbaatar Standard Time, Tokyo Standard Time, Korea Standard Time, Yakutsk Standard Time, Cen. Australia Standard Time, AUS Central Standard Time, E. Australia Standard Time, AUS Eastern Standard Time, West Pacific Standard Time, Tasmania Standard Time, Magadan Standard Time, Vladivostok Standard Time, Russia Time Zone 10, Central Pacific Standard Time, Russia Time Zone 11, New Zealand Standard Time, UTC+12, Fiji Standard Time, Kamchatka Standard Time, Tonga Standard Time, Samoa Standard Time, Line Islands Standard Time |
        
## Recurrence

The repeating times at which this profile begins. This element is not used if the FixedDate element is used.

```puppet
$azure_recurrence = {
  frequency => "frequency",
  schedule => $azure_recurrent_schedule
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|frequency | String | true | the recurrence frequency. How often the schedule profile should take effect. This value must be Week, meaning each week will have the same set of profiles. |
|schedule | [RecurrentSchedule](#recurrentschedule) | true | the scheduling constraints for when the profile begins. |
        
## RecurrentSchedule

The scheduling constraints for when the profile begins.

```puppet
$azure_recurrent_schedule = {
  days => "days",
  hours => "hours",
  minutes => "minutes",
  timeZone => "timeZone",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|days | Array | true | the collection of days that the profile takes effect on. Possible values are Sunday through Saturday. |
|hours | Array | true | A collection of hours that the profile takes effect on. Values supported are 0 to 23 on the 24-hour clock (AM/PM times are not supported). |
|minutes | Array | true | A collection of minutes at which the profile takes effect at. |
|timeZone | String | true | the timezone for the hours of the profile. Some examples of valid timezones are: Dateline Standard Time, UTC-11, Hawaiian Standard Time, Alaskan Standard Time, Pacific Standard Time (Mexico), Pacific Standard Time, US Mountain Standard Time, Mountain Standard Time (Mexico), Mountain Standard Time, Central America Standard Time, Central Standard Time, Central Standard Time (Mexico), Canada Central Standard Time, SA Pacific Standard Time, Eastern Standard Time, US Eastern Standard Time, Venezuela Standard Time, Paraguay Standard Time, Atlantic Standard Time, Central Brazilian Standard Time, SA Western Standard Time, Pacific SA Standard Time, Newfoundland Standard Time, E. South America Standard Time, Argentina Standard Time, SA Eastern Standard Time, Greenland Standard Time, Montevideo Standard Time, Bahia Standard Time, UTC-02, Mid-Atlantic Standard Time, Azores Standard Time, Cape Verde Standard Time, Morocco Standard Time, UTC, GMT Standard Time, Greenwich Standard Time, W. Europe Standard Time, Central Europe Standard Time, Romance Standard Time, Central European Standard Time, W. Central Africa Standard Time, Namibia Standard Time, Jordan Standard Time, GTB Standard Time, Middle East Standard Time, Egypt Standard Time, Syria Standard Time, E. Europe Standard Time, South Africa Standard Time, FLE Standard Time, Turkey Standard Time, Israel Standard Time, Kaliningrad Standard Time, Libya Standard Time, Arabic Standard Time, Arab Standard Time, Belarus Standard Time, Russian Standard Time, E. Africa Standard Time, Iran Standard Time, Arabian Standard Time, Azerbaijan Standard Time, Russia Time Zone 3, Mauritius Standard Time, Georgian Standard Time, Caucasus Standard Time, Afghanistan Standard Time, West Asia Standard Time, Ekaterinburg Standard Time, Pakistan Standard Time, India Standard Time, Sri Lanka Standard Time, Nepal Standard Time, Central Asia Standard Time, Bangladesh Standard Time, N. Central Asia Standard Time, Myanmar Standard Time, SE Asia Standard Time, North Asia Standard Time, China Standard Time, North Asia East Standard Time, Singapore Standard Time, W. Australia Standard Time, Taipei Standard Time, Ulaanbaatar Standard Time, Tokyo Standard Time, Korea Standard Time, Yakutsk Standard Time, Cen. Australia Standard Time, AUS Central Standard Time, E. Australia Standard Time, AUS Eastern Standard Time, West Pacific Standard Time, Tasmania Standard Time, Magadan Standard Time, Vladivostok Standard Time, Russia Time Zone 10, Central Pacific Standard Time, Russia Time Zone 11, New Zealand Standard Time, UTC+12, Fiji Standard Time, Kamchatka Standard Time, Tonga Standard Time, Samoa Standard Time, Line Islands Standard Time |
        
## ScaleRule

A rule that provide the triggers and parameters for the scaling action.

```puppet
$azure_scale_rule = {
  metricTrigger => $azure_metric_trigger
  scaleAction => $azure_scale_action
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|metricTrigger | [MetricTrigger](#metrictrigger) | true | the trigger that results in a scaling action. |
|scaleAction | [ScaleAction](#scaleaction) | true | the parameters for the scaling action. |
        
## MetricTrigger

The trigger that results in a scaling action.

```puppet
$azure_metric_trigger = {
  metricName => "metricName",
  metricResourceUri => "metricResourceUri",
  operator => "operator",
  statistic => "statistic",
  threshold => "threshold",
  timeAggregation => "timeAggregation",
  timeGrain => "timeGrain",
  timeWindow => "timeWindow",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|metricName | String | true | the name of the metric that defines what the rule monitors. |
|metricResourceUri | String | true | the resource identifier of the resource the rule monitors. |
|operator | String | true | the operator that is used to compare the metric data and the threshold. |
|statistic | String | true | the metric statistic type. How the metrics from multiple instances are combined. |
|threshold | Numeric | true | the threshold of the metric that triggers the scale action. |
|timeAggregation | String | true | time aggregation type. How the data that is collected should be combined over time. The default value is Average. |
|timeGrain | String | true | the granularity of metrics the rule monitors. Must be one of the predefined values returned from metric definitions for the metric. Must be between 12 hours and 1 minute. |
|timeWindow | String | true | the range of time in which instance data is collected. This value must be greater than the delay in metric collection, which can vary from resource-to-resource. Must be between 12 hours and 5 minutes. |
        
## ScaleAction

The parameters for the scaling action.

```puppet
$azure_scale_action = {
  cooldown => "cooldown",
  direction => "direction",
  type => "type",
  value => "value (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|cooldown | String | true | the amount of time to wait since the last scaling action before this action occurs. It must be between 1 week and 1 minute in ISO 8601 format. |
|direction | String | true | the scale direction. Whether the scaling action increases or decreases the number of instances. |
|type | String | true | the type of action that should occur when the scale rule fires. |
|value | String | false | the number of instances that are involved in the scaling action. This value must be 1 or greater. The default value is 1. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the AutoscaleSettingResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/microsoft.insights/autoscalesettings/%{autoscale_setting_name}`|Put|Creates or updates an autoscale setting.|AutoscaleSettings_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/microsoft.insights/autoscalesettings/%{autoscale_setting_name}`|Get|Gets an autoscale setting|AutoscaleSettings_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/microsoft.insights/autoscalesettings`|Get|Lists the autoscale settings for a resource group|AutoscaleSettings_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/microsoft.insights/autoscalesettings/%{autoscale_setting_name}`|Put|Creates or updates an autoscale setting.|AutoscaleSettings_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/microsoft.insights/autoscalesettings/%{autoscale_setting_name}`|Delete|Deletes and autoscale setting|AutoscaleSettings_Delete|
