Document: "apimdeployment"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2019-01-01/apimdeployment.json")

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
  enableClientCertificate => "enableClientCertificate (optional)",
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
|customProperties | Hash | false | Custom properties of the API Management service.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TripleDes168` will disable the cipher TLS_RSA_WITH_3DES_EDE_CBC_SHA for all TLS(1.0, 1.1 and 1.2).</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls11` can be used to disable just TLS 1.1.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Protocols.Tls10` can be used to disable TLS 1.0 on an API Management service.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls11` can be used to disable just TLS 1.1 for communications with backends.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Backend.Protocols.Tls10` can be used to disable TLS 1.0 for communications with backends.</br>Setting `Microsoft.WindowsAzure.ApiManagement.Gateway.Protocols.Server.Http2` can be used to enable HTTP2 protocol on an API Management service.</br>Not specifying any of these properties on PATCH operation will reset omitted properties' values to their defaults. For all the settings except Http2 the default value is `True` if the service was created on or before April 1st 2018 and `False` otherwise. Http2 setting's default value is `False`.</br></br>You can disable any of next ciphers by using settings `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.[cipher_name]`: TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, TLS_RSA_WITH_AES_128_GCM_SHA256, TLS_RSA_WITH_AES_256_CBC_SHA256, TLS_RSA_WITH_AES_128_CBC_SHA256, TLS_RSA_WITH_AES_256_CBC_SHA, TLS_RSA_WITH_AES_128_CBC_SHA. For example, `Microsoft.WindowsAzure.ApiManagement.Gateway.Security.Ciphers.TLS_RSA_WITH_AES_128_CBC_SHA256`:`false`. The default value is `true` for them. |
|enableClientCertificate | Boolean | false | Property only meant to be used for Consumption SKU Service. This enforces a client certificate to be presented on each request to the gateway. This also enables the ability to authenticate the certificate in the policy on the gateway. |
|hostnameConfigurations | Array | false | Custom hostname configuration of the API Management service. |
|notificationSenderEmail | String | false | Email address from which the notification will be sent. |
|publisherEmail | String | true | Publisher email. |
|publisherName | String | true | Publisher name. |
|virtualNetworkConfiguration | String | false | Virtual network configuration of the API Management service. |
|virtualNetworkType | String | false | The type of VPN in which API Management service needs to be configured in. None (Default Value) means the API Management service is not part of any Virtual Network, External means the API Management deployment is set up inside a Virtual Network having an Internet Facing Endpoint, and Internal means that API Management deployment is setup inside a Virtual Network having an Intranet Facing Endpoint only. |
        
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
|capacity | Integer | false | Capacity of the SKU (number of deployed units of the SKU). |
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
