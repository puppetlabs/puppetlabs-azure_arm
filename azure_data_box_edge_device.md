Document: "edgegateway"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/edgegateway/resource-manager/Microsoft.DataBoxEdge/stable/2019-03-01/edgegateway.json")

## DataBoxEdgeDevice

The Data Box Edge/Gateway device.

```puppet
azure_data_box_edge_device {
  api_version => "api_version",
  data_box_edge_device => "DataBoxEdgeDevice",
  device_name => "device_name",
  etag => "etag (optional)",
  location => "location",
  properties => $azure_data_box_edge_device_properties
  resource_group_name => "resource_group_name",
  sku => $azure_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|data_box_edge_device | Hash | true | The resource object. |
|device_name | String | true | The device name. |
|etag | String | false | The etag for the devices. |
|location | String | true | The location of the device. This is a supported and registered Azure geographical region (for example, West US, East US, or Southeast Asia). The geographical region of a device cannot be changed once it is created, but if an identical geographical region is specified on update, the request will succeed. |
|properties | [DataBoxEdgeDeviceProperties](#databoxedgedeviceproperties) | false | The properties of the Data Box Edge/Gateway device. |
|resource_group_name | String | true | The resource group name. |
|sku | [Sku](#sku) | false | The SKU type. |
|subscription_id | String | true | The subscription ID. |
|tags | Hash | false | The list of tags that describe the device. These tags can be used to view and group this device (across resource groups). |
        
## DataBoxEdgeDeviceProperties

The properties of the Data Box Edge/Gateway device.

```puppet
$azure_data_box_edge_device_properties = {
  dataBoxEdgeDeviceStatus => "dataBoxEdgeDeviceStatus (optional)",
  description => "description (optional)",
  friendlyName => "friendlyName (optional)",
  modelDescription => "modelDescription (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dataBoxEdgeDeviceStatus | String | false | The status of the Data Box Edge/Gateway device. |
|description | String | false | The Description of the Data Box Edge/Gateway device. |
|friendlyName | String | false | The Data Box Edge/Gateway device name. |
|modelDescription | String | false | The description of the Data Box Edge/Gateway device model. |
        
## Sku

The SKU type.

```puppet
$azure_sku = {
  name => "name (optional)",
  tier => "tier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | SKU name. |
|tier | String | false | The SKU tier. This is based on the SKU name. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DataBoxEdgeDevice

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}`|Put|Creates or updates a Data Box Edge/Gateway resource.|Devices_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices`|Get|Gets all the data box edge/gateway devices in a subscription.|Devices_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}`|Get|Gets the properties of the data box edge/gateway device.|Devices_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices`|Get|Gets all the data box edge/gateway devices in a subscription.|Devices_ListBySubscription|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}`|Put|Creates or updates a Data Box Edge/Gateway resource.|Devices_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}`|Delete|Deletes the data box edge/gateway device.|Devices_Delete|
