Document: "iotdps"
Path: "/root/specs/specification/deviceprovisioningservices/resource-manager/Microsoft.Devices/stable/2018-01-22/iotdps.json")

## ProvisioningServiceDescription

```puppet
azure_provisioning_service_description {
  api_version => "api_version",
  etag => "etag (optional)",
  id => "id (optional)",
  iot_dps_description => "iotDpsDescription",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_iot_dps_properties_description
  provisioning_service_name => "provisioning_service_name",
  resource_group_name => "resource_group_name",
  sku => $azure_iot_dps_sku_info
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The version of the API. |
|etag | String | false | The Etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal ETag convention. |
|id | String | false | The resource identifier. |
|iot_dps_description | Hash | true | Description of the provisioning service to create or update. |
|location | String | false | The resource location. |
|name | String | false | The resource name. |
|properties | [IotDpsPropertiesDescription](#iotdpspropertiesdescription) | true | Service specific properties for a provisioning service |
|provisioning_service_name | String | true | Name of provisioning service to create or update. |
|resource_group_name | String | true | Resource group identifier. |
|sku | [IotDpsSkuInfo](#iotdpsskuinfo) | true | Sku info for a provisioning Service. |
|subscription_id | String | true | The subscription identifier. |
|tags | Hash | false | The resource tags. |
|type | String | false | The resource type. |
        
## IotDpsPropertiesDescription

```puppet
$azure_iot_dps_properties_description = {
  allocationPolicy => "allocationPolicy (optional)",
  authorizationPolicies => $azure_
  deviceProvisioningHostName => "deviceProvisioningHostName (optional)",
  idScope => "idScope (optional)",
  iotHubs => $azure_iot_hub_definition_description
  provisioningState => "provisioningState (optional)",
  serviceOperationsHostName => "serviceOperationsHostName (optional)",
  state => "state (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|allocationPolicy | String | false | Allocation policy to be used by this provisioning service. |
|authorizationPolicies | [](#) | false | List of authorization keys for a provisioning service. |
|deviceProvisioningHostName | String | false | Device endpoint for this provisioning service. |
|idScope | String | false | Unique identifier of this provisioning service. |
|iotHubs | [IotHubDefinitionDescription](#iothubdefinitiondescription) | false | List of IoT hubs assosciated with this provisioning service. |
|provisioningState | String | false | The ARM provisioning state of the provisioning service. |
|serviceOperationsHostName | String | false | Service endpoint for provisioning service. |
|state | String | false | Current state of the provisioning service. |
        
## 

```puppet
$_ = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## IotHubDefinitionDescription

```puppet
$azure_iot_hub_definition_description = {
  allocationWeight => "1234 (optional)",
  applyAllocationPolicy => "applyAllocationPolicy (optional)",
  connectionString => "connectionString",
  location => "location",
  name => "name (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|allocationWeight | Integer | false | weight to apply for a given iot h. |
|applyAllocationPolicy | Boolean | false | flag for applying allocationPolicy or not for a given iot hub. |
|connectionString | String | true | Connection string og the IoT hub. |
|location | String | true | ARM region of the IoT hub. |
|name | String | false | Host name of the IoT hub. |
        
## IotDpsSkuInfo

```puppet
$azure_iot_dps_sku_info = {
  capacity => "1234 (optional)",
  name => "name (optional)",
  tier => "tier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|capacity | Integer | false | The number of units to provision |
|name | String | false | Sku name. |
|tier | String | false | Pricing tier name of the provisioning service. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ProvisioningServiceDescription

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/provisioningServices/%{provisioning_service_name}`|Put|Create or update the metadata of the provisioning service. The usual pattern to modify a property is to retrieve the provisioning service metadata and security metadata, and then combine them with the modified values in a new body to update the provisioning service.|IotDpsResource_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Devices/provisioningServices`|Get|List all the provisioning services for a given subscription id.|IotDpsResource_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/provisioningServices/%{provisioning_service_name}`|Get|Get the metadata of the provisioning service without SAS keys.|IotDpsResource_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Devices/provisioningServices`|Get|List all the provisioning services for a given subscription id.|IotDpsResource_ListBySubscription|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/provisioningServices/%{provisioning_service_name}`|Put|Create or update the metadata of the provisioning service. The usual pattern to modify a property is to retrieve the provisioning service metadata and security metadata, and then combine them with the modified values in a new body to update the provisioning service.|IotDpsResource_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/provisioningServices/%{provisioning_service_name}`|Delete|Deletes the Provisioning Service.|IotDpsResource_Delete|