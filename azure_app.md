Document: "iotcentral"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/iotcentral/resource-manager/Microsoft.IoTCentral/stable/2018-09-01/iotcentral.json")

## App

The IoT Central application.

```puppet
azure_app {
  api_version => "api_version",
  app => "App",
  location => "location (optional)",
  properties => $azure_app_properties
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  sku => $azure_app_sku_info
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The version of the API. |
|app | Hash | true | The IoT Central application metadata and security metadata. |
|location | String | false | The resource location. |
|properties | [AppProperties](#appproperties) | false | The common properties of an IoT Central application. |
|resource_group_name | String | true | The name of the resource group that contains the IoT Central application. |
|resource_name | String | true | The ARM resource name of the IoT Central application. |
|sku | [AppSkuInfo](#appskuinfo) | true | A valid instance SKU. |
|subscription_id | String | true | The subscription identifier. |
|tags | Hash | false | The resource tags. |
        
## AppProperties

The properties of an IoT Central application.

```puppet
$azure_app_properties = {
  displayName => "displayName (optional)",
  subdomain => "subdomain (optional)",
  template => "template (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|displayName | String | false | The display name of the application. |
|subdomain | String | false | The subdomain of the application. |
|template | String | false | The ID of the application template, which is a blueprint that defines the characteristics and behaviors of an application. Optional; if not specified, defaults to a blank blueprint and allows the application to be defined from scratch. |
        
## AppSkuInfo

Information about the SKU of the IoT Central application.

```puppet
$azure_app_sku_info = {
  name => "name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | The name of the SKU. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the App

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.IoTCentral/IoTApps/%{resource_name}`|Put|Create or update the metadata of an IoT Central application. The usual pattern to modify a property is to retrieve the IoT Central application metadata and security metadata, and then combine them with the modified values in a new body to update the IoT Central application.|Apps_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.IoTCentral/IoTApps`|Get|Get all IoT Central Applications in a subscription.|Apps_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.IoTCentral/IoTApps/%{resource_name}`|Get|Get the metadata of an IoT Central application.|Apps_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.IoTCentral/IoTApps`|Get|Get all IoT Central Applications in a subscription.|Apps_ListBySubscription|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.IoTCentral/IoTApps/%{resource_name}`|Put|Create or update the metadata of an IoT Central application. The usual pattern to modify a property is to retrieve the IoT Central application metadata and security metadata, and then combine them with the modified values in a new body to update the IoT Central application.|Apps_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.IoTCentral/IoTApps/%{resource_name}`|Delete|Delete an IoT Central application.|Apps_Delete|
