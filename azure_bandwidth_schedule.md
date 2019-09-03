Document: "edgegateway"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/edgegateway/resource-manager/Microsoft.DataBoxEdge/stable/2019-03-01/edgegateway.json")

## BandwidthSchedule

The bandwidth schedule details.

```puppet
azure_bandwidth_schedule {
  api_version => "api_version",
  device_name => "device_name",
  parameters => "parameters",
  properties => $azure_bandwidth_schedule_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|device_name | String | true | The device name. |
|parameters | Hash | true | The bandwidth schedule to be added or updated. |
|properties | [BandwidthScheduleProperties](#bandwidthscheduleproperties) | true | The properties of the bandwidth schedule. |
|resource_group_name | String | true | The resource group name. |
|subscription_id | String | true | The subscription ID. |
        
## BandwidthScheduleProperties

The properties of the bandwidth schedule.

```puppet
$azure_bandwidth_schedule_properties = {
  days => "days",
  rateInMbps => "1234",
  start => "start",
  stop => "stop",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|days | Array | true | The days of the week when this schedule is applicable. |
|rateInMbps | Integer | true | The bandwidth rate in Mbps. |
|start | String | true | The start time of the schedule in UTC. |
|stop | String | true | The stop time of the schedule in UTC. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the BandwidthSchedule

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/bandwidthSchedules/%{name}`|Put|Creates or updates a bandwidth schedule.|BandwidthSchedules_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/bandwidthSchedules/%{name}`|Get|Gets the properties of the specified bandwidth schedule.|BandwidthSchedules_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/bandwidthSchedules`|Get|Gets all the bandwidth schedules for a data box edge/gateway device.|BandwidthSchedules_ListByDataBoxEdgeDevice|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/bandwidthSchedules/%{name}`|Put|Creates or updates a bandwidth schedule.|BandwidthSchedules_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/bandwidthSchedules/%{name}`|Delete|Deletes the specified bandwidth schedule.|BandwidthSchedules_Delete|
