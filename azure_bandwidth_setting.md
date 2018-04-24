Document: "storsimple"
Path: "/root/specs/specification/storsimple8000series/resource-manager/Microsoft.StorSimple/stable/2017-06-01/storsimple.json")

## BandwidthSetting

```puppet
azure_bandwidth_setting {
  api_version => "api_version",
  id => "id (optional)",
  kind => "kind (optional)",
  manager_name => "manager_name",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_bandwidth_rate_setting_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The api version |
|id | String | false | The path ID that uniquely identifies the object. |
|kind | String | false | The Kind of the object. Currently only Series8000 is supported |
|manager_name | String | true | The manager name |
|name | String | false | The name of the object. |
|parameters | Hash | true | The bandwidth setting to be added or updated. |
|properties | [BandwidthRateSettingProperties](#bandwidthratesettingproperties) | true | The properties of the bandwidth setting. |
|resource_group_name | String | true | The resource group name |
|subscription_id | String | true | The subscription id |
|type | String | false | The hierarchical type of the object. |
        
## BandwidthRateSettingProperties

```puppet
$azure_bandwidth_rate_setting_properties = {
  schedules => $azure_bandwidth_schedule
  volumeCount => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|schedules | [BandwidthSchedule](#bandwidthschedule) | true | The schedules. |
|volumeCount | Integer | false | The number of volumes that uses the bandwidth setting. |
        
## BandwidthSchedule

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
|start | [Time](#time) | true | The start time of the schdule. |
|stop | [Time](#time) | true | The stop time of the schedule. |
        
## Time

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