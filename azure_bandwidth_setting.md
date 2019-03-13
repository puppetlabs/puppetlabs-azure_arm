Document: "storsimple"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/storsimple8000series/resource-manager/Microsoft.StorSimple/stable/2017-06-01/storsimple.json")

## BandwidthSetting

The bandwidth setting.

```puppet
azure_bandwidth_setting {
  api_version => "api_version",
  kind => "kind (optional)",
  manager_name => "manager_name",
  parameters => "parameters",
  properties => $azure_bandwidth_rate_setting_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The api version |
|kind | String | false | The Kind of the object. Currently only Series8000 is supported |
|manager_name | String | true | The manager name |
|parameters | Hash | true | The bandwidth setting to be added or updated. |
|properties | [BandwidthRateSettingProperties](#bandwidthratesettingproperties) | true | The properties of the bandwidth setting. |
|resource_group_name | String | true | The resource group name |
|subscription_id | String | true | The subscription id |
        
## BandwidthRateSettingProperties

The properties of the bandwidth setting.

```puppet
$azure_bandwidth_rate_setting_properties = {
  schedules => $azure_bandwidth_schedule
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|schedules | [BandwidthSchedule](#bandwidthschedule) | true | The schedules. |
        
## BandwidthSchedule

The schedule for bandwidth setting.

```puppet
$azure_bandwidth_schedule = {
  days => "days",
  rateInMbps => "1234",
  start => $azure_time
  stop => $azure_time
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|days | Array | true | The days of the week when this schedule is applicable. |
|rateInMbps | Integer | true | The rate in Mbps. |
|start | [Time](#time) | true | The start time of the schedule. |
|stop | [Time](#time) | true | The stop time of the schedule. |
        
## Time

The time.

```puppet
$azure_time = {
  hours => "1234",
  minutes => "1234",
  seconds => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|hours | Integer | true | The hour. |
|minutes | Integer | true | The minute. |
|seconds | Integer | true | The second. |
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the BandwidthSetting

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/bandwidthSettings/%{bandwidth_setting_name}`|Put|Creates or updates the bandwidth setting|BandwidthSettings_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/bandwidthSettings/%{bandwidth_setting_name}`|Get|Returns the properties of the specified bandwidth setting name.|BandwidthSettings_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/bandwidthSettings`|Get|Retrieves all the bandwidth setting in a manager.|BandwidthSettings_ListByManager|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/bandwidthSettings/%{bandwidth_setting_name}`|Put|Creates or updates the bandwidth setting|BandwidthSettings_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/bandwidthSettings/%{bandwidth_setting_name}`|Delete|Deletes the bandwidth setting|BandwidthSettings_Delete|
