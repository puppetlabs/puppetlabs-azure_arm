Document: "redis"
Path: "/root/specs/specification/redis/resource-manager/Microsoft.Cache/stable/2018-03-01/redis.json")

## RedisPatchSchedule

```puppet
azure_redis_patch_schedule {
  api_version => "api_version",
  default => "default",
  id => "id (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_schedule_entries
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|default | String | true | Default string modeled as parameter for auto generation to work correctly. |
|id | String | false | Resource ID. |
|name | String | false | Resource name. |
|parameters | Hash | true | Parameters to set the patching schedule for Redis cache. |
|properties | [ScheduleEntries](#scheduleentries) | true | List of patch schedules for a Redis cache. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | Resource type. |
        
## ScheduleEntries

```puppet
$azure_schedule_entries = {
  scheduleEntries => $azure_schedule_entry
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|scheduleEntries | [ScheduleEntry](#scheduleentry) | true | List of patch schedules for a Redis cache. |
        
## ScheduleEntry

```puppet
$azure_schedule_entry = {
  dayOfWeek => "dayOfWeek",
  maintenanceWindow => "maintenanceWindow (optional)",
  startHourUtc => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dayOfWeek | String | true | Day of the week when a cache can be patched. |
|maintenanceWindow | String | false | ISO8601 timespan specifying how much time cache patching can take.  |
|startHourUtc | Integer | true | Start hour after which cache patching can start. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the RedisPatchSchedule

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cache/Redis/%{name}/patchSchedules/%{default}`|Put|Create or replace the patching schedule for Redis cache (requires Premium SKU).|PatchSchedules_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cache/Redis/%{name}/patchSchedules/%{default}`|Get|Gets the patching schedule of a redis cache (requires Premium SKU).|PatchSchedules_Get|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cache/Redis/%{name}/patchSchedules/%{default}`|Put|Create or replace the patching schedule for Redis cache (requires Premium SKU).|PatchSchedules_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cache/Redis/%{name}/patchSchedules/%{default}`|Delete|Deletes the patching schedule of a redis cache (requires Premium SKU).|PatchSchedules_Delete|