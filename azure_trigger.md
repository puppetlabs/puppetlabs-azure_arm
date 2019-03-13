Document: "edgegateway"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/edgegateway/resource-manager/Microsoft.DataBoxEdge/stable/2018-07-01/edgegateway.json")

## Trigger

Trigger details.

```puppet
azure_trigger {
  api_version => "api_version",
  device_name => "device_name",
  kind => "kind",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  trigger => "trigger",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|device_name | String | true | Name of the edge device in which trigger needs to be added or updated. |
|kind | String | true | Trigger Kind. |
|resource_group_name | String | true | The resource group name. |
|subscription_id | String | true | The subscription ID. |
|trigger | Hash | true | Trigger to be added. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Trigger

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/triggers/%{name}`|Put|Create or update a trigger.|Triggers_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/triggers/%{name}`|Get|Get a specific trigger by name.|Triggers_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/triggers`|Get|List all the triggers configured in the device.|Triggers_ListByDataBoxEdgeDevice|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/triggers/%{name}`|Put|Create or update a trigger.|Triggers_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/triggers/%{name}`|Delete|Deletes the trigger on the gateway device.|Triggers_Delete|
