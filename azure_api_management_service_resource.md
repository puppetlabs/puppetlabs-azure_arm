Document: "apimdeployment"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2017-03-01/apimdeployment.json")

## ApiManagementServiceResource

A single API Management service resource in List or Get response.

```puppet
azure_api_management_service_resource {
  api_version => "api_version",
  identity => $azure_api_management_service_identity
  location => "location",
  parameters => "parameters",
  properties => $azure_api_management_service_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  sku => $azure_api_management_service_sku_properties
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|identity | [ApiManagementServiceIdentity](#apimanagementserviceidentity) | false | Managed service identity of the Api Management service. |
|location | String | true | Resource location. |
|parameters | Hash | true | Parameters supplied to the CreateOrUpdate API Management service operation. |
|properties | [ApiManagementServiceProperties](#apimanagementserviceproperties) | true | Properties of the API Management service. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|sku | [ApiManagementServiceSkuProperties](#apimanagementserviceskuproperties) | true | SKU properties of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
        
## ApiManagementServiceIdentity

Identity properties of the Api Management service resource.

```puppet
$azure_api_management_service_identity = {
  type => "type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|type | String | true | The identity type. Currently the only supported type is 'SystemAssigned'. |
        
## ApiManagementServiceProperties

Properties of an API Management service resource description.

```puppet
$azure_api_management_service_properties = {
  additionalLocations => "additionalLocations (optional)",
  certificates => "certificates (optional)",
  customProperties => "customProperties (optional)",
  hostnameConfigurations => "hostnameConfigurations (optional)",
  notificationSenderEmail => "notificationSenderEmail (optional)",
  publisherEmail => "publisherEmail",
  publisherName => "publisherName",
  virtualNetworkConfiguration => "virtualNetworkConfiguration (optional)",
  virtualNetworkType => "virtualNetworkType (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|additionalLocations | Array | false | Additional datacenter locations of the API Management service. |
|certificates | Array | false | List of Certificates that need to be installed in the API Management service. Max supported certificates that can be installed is 10. |
|customProperties | Hash | false | Custom properties of the API Management service. Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TripleDes168` will disable the cipher TLS_RSA_WITH_3DES_EDE_CBC_SHA for all TLS(1.0, 1.1 and 1.2). Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls11` can be used to disable just TLS 1.1 and setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls10` can be used to disable TLS 1.0 on an API Management service. |
|hostnameConfigurations | Array | false | Custom hostname configuration of the API Management service. |
|notificationSenderEmail | String | false | Email address from which the notification will be sent. |
|publisherEmail | String | true | Publisher email. |
|publisherName | String | true | Publisher name. |
|virtualNetworkConfiguration | String | false | Virtual network configuration of the API Management service. |
|virtualNetworkType | String | false | The type of VPN in which API Managemet service needs to be configured in. None (Default Value) means the API Management service is not part of any Virtual Network, External means the API Management deployment is set up inside a Virtual Network having an Internet Facing Endpoint, and Internal means that API Management deployment is setup inside a Virtual Network having an Intranet Facing Endpoint only. |
        
## ApiManagementServiceSkuProperties

API Management service resource SKU properties.

```puppet
$azure_api_management_service_sku_properties = {
  capacity => "1234 (optional)",
  name => "name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|capacity | Integer | false | Capacity of the SKU (number of deployed units of the SKU). The default value is 1. |
|name | String | true | Name of the Sku. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ApiManagementServiceResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}`|Put|Creates or updates an API Management service. This is long running operation and could take several minutes to complete.|ApiManagementService_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.ApiManagement/service`|Get|Lists all API Management services within an Azure subscription.|ApiManagementService_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}`|Get|Gets an API Management service resource description.|ApiManagementService_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service`|Get|List all API Management services within a resource group.|ApiManagementService_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}`|Put|Creates or updates an API Management service. This is long running operation and could take several minutes to complete.|ApiManagementService_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}`|Delete|Deletes an existing API Management service.|ApiManagementService_Delete|
