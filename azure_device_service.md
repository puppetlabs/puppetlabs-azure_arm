Document: "WindowsIotServices"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/windowsiot/resource-manager/Microsoft.WindowsIoT/stable/2019-06-01/WindowsIotServices.json")

## DeviceService

The description of the Windows IoT Device Service.

```puppet
azure_device_service {
  api_version => "api_version",
  device_name => "device_name",
  device_service => "deviceService",
  etag => "etag (optional)",
  location => "location (optional)",
  properties => $azure_device_service_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The version of the API. |
|device_name | String | true | The name of the Windows IoT Device Service. |
|device_service | Hash | true | The Windows IoT Device Service metadata and security metadata. |
|etag | String | false | The Etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal ETag convention. |
|location | String | false | The Azure Region where the resource lives |
|properties | [DeviceServiceProperties](#deviceserviceproperties) | false | The properties of a Windows IoT Device Service. |
|resource_group_name | String | true | The name of the resource group that contains the Windows IoT Device Service. |
|subscription_id | String | true | The subscription identifier. |
|tags | Hash | false | Resource tags. |
        
## DeviceServiceProperties

The properties of a Windows IoT Device Service.

```puppet
$azure_device_service_properties = {
  adminDomainName => "adminDomainName (optional)",
  billingDomainName => "billingDomainName (optional)",
  notes => "notes (optional)",
  quantity => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|adminDomainName | String | false | Windows IoT Device Service OEM AAD domain |
|billingDomainName | String | false | Windows IoT Device Service ODM AAD domain |
|notes | String | false | Windows IoT Device Service notes. |
|quantity | Integer | false | Windows IoT Device Service device allocation, |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DeviceService

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.WindowsIoT/deviceServices/%{device_name}`|Put|Create or update the metadata of a Windows IoT Device Service. The usual pattern to modify a property is to retrieve the Windows IoT Device Service metadata and security metadata, and then combine them with the modified values in a new body to update the Windows IoT Device Service.|Services_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.WindowsIoT/deviceServices`|Get|Get all the IoT hubs in a subscription.|Services_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.WindowsIoT/deviceServices/%{device_name}`|Get|Get the non-security related metadata of a Windows IoT Device Service.|Services_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.WindowsIoT/deviceServices`|Get|Get all the IoT hubs in a resource group.|Services_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.WindowsIoT/deviceServices/%{device_name}`|Put|Create or update the metadata of a Windows IoT Device Service. The usual pattern to modify a property is to retrieve the Windows IoT Device Service metadata and security metadata, and then combine them with the modified values in a new body to update the Windows IoT Device Service.|Services_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.WindowsIoT/deviceServices/%{device_name}`|Delete|Delete a Windows IoT Device Service.|Services_Delete|
