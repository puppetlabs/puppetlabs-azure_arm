Document: "vmwarecloudsimple"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/vmwarecloudsimple/resource-manager/Microsoft.VMwareCloudSimple/stable/2019-04-01/vmwarecloudsimple.json")

## DedicatedCloudService

Dedicated cloud service model

```puppet
azure_dedicated_cloud_service {
  api_version => "api_version",
  dedicated_cloud_service_request => "dedicatedCloudServiceRequest",
  location => "location",
  properties => $azure_dedicated_cloud_service_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => $azure_tags
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|dedicated_cloud_service_request | Hash | true | Create Dedicated Cloud Service request |
|location | String | true | Azure region |
|properties | [DedicatedCloudServiceProperties](#dedicatedcloudserviceproperties) | false | The properties of Dedicated Node Service |
|resource_group_name | String | true | The name of the resource group |
|subscription_id | String | true | The subscription ID. |
|tags | [Tags](#tags) | false | The list of tags |
        
## DedicatedCloudServiceProperties

Properties of dedicated cloud service

```puppet
$azure_dedicated_cloud_service_properties = {
  gatewaySubnet => "gatewaySubnet",
  nodes => "1234 (optional)",
  serviceURL => "serviceURL (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|gatewaySubnet | String | true | gateway Subnet for the account. It will collect the subnet address and always treat it as /28 |
|nodes | Integer | false | total nodes purchased |
|serviceURL | String | false | link to a service management web portal |
        
## Tags

Tags model

```puppet
$azure_tags = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DedicatedCloudService

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.VMwareCloudSimple/dedicatedCloudServices/%{dedicated_cloud_service_name}`|Put|Create dedicate cloud service|dedicatedCloudService_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.VMwareCloudSimple/dedicatedCloudServices`|Get|Returns list of dedicated cloud services within a subscription|dedicatedCloudService_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.VMwareCloudSimple/dedicatedCloudServices/%{dedicated_cloud_service_name}`|Get|Returns Dedicate Cloud Service|dedicatedCloudService_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.VMwareCloudSimple/dedicatedCloudServices`|Get|Returns list of dedicated cloud service within resource group|dedicatedCloudService_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.VMwareCloudSimple/dedicatedCloudServices/%{dedicated_cloud_service_name}`|Put|Create dedicate cloud service|dedicatedCloudService_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.VMwareCloudSimple/dedicatedCloudServices/%{dedicated_cloud_service_name}`|Delete|Delete dedicate cloud service|dedicatedCloudService_Delete|
