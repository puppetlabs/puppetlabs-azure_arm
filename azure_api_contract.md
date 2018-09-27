Document: "apimapis"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2017-03-01/apimapis.json")

## ApiContract

API details.

```puppet
azure_api_contract {
  api_version => "api_version",
  api_id => "api_id",
  if_match => "if_match",
  parameters => "parameters",
  properties => $azure_api_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|api_id | String | true | API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number. |
|if_match | String | true | ETag of the API Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update. |
|parameters | Hash | true | Create or update parameters. |
|properties | [ApiContractProperties](#apicontractproperties) | false | Api entity contract properties. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## ApiContractProperties

Api Entity Properties

```puppet
$azure_api_contract_properties = {
  apiRevision => "apiRevision (optional)",
  apiVersion => "apiVersion (optional)",
  apiVersionSet => $azure_api_version_set_contract
  apiVersionSetId => "apiVersionSetId (optional)",
  authenticationSettings => "authenticationSettings (optional)",
  description => "description (optional)",
  displayName => "displayName (optional)",
  path => "path",
  protocols => "protocols (optional)",
  serviceUrl => "serviceUrl (optional)",
  subscriptionKeyParameterNames => "subscriptionKeyParameterNames (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|apiRevision | String | false | Describes the Revision of the Api. If no value is provided, default revision 1 is created |
|apiVersion | String | false | Indicates the Version identifier of the API if the API is versioned |
|apiVersionSet | [ApiVersionSetContract](#apiversionsetcontract) | false |  |
|apiVersionSetId | String | false | A resource identifier for the related ApiVersionSet. |
|authenticationSettings | String | false | Collection of authentication settings included into this API. |
|description | String | false | Description of the API. May include HTML formatting tags. |
|displayName | String | false | API name. |
|path | String | true | Relative URL uniquely identifying this API and all of its resource paths within the API Management service instance. It is appended to the API endpoint base URL specified during the service instance creation to form a public URL for this API. |
|protocols | Array | false | Describes on which protocols the operations in this API can be invoked. |
|serviceUrl | String | false | Absolute URL of the backend service implementing this API. |
|subscriptionKeyParameterNames | String | false | Protocols over which API is made available. |
|type | String | false | Type of API. |
        
## ApiVersionSetContract

Api Version Set Contract details.

```puppet
$azure_api_version_set_contract = {
  properties => $azure_api_version_set_contract_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|properties | [ApiVersionSetContractProperties](#apiversionsetcontractproperties) | false |  |
        
## ApiVersionSetContractProperties

Properties of an API Version Set.

```puppet
$azure_api_version_set_contract_properties = {
  description => "description (optional)",
  displayName => "displayName",
  versionHeaderName => "versionHeaderName (optional)",
  versioningScheme => "versioningScheme",
  versionQueryName => "versionQueryName (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | Description of API Version Set. |
|displayName | String | true | Name of API Version Set |
|versionHeaderName | String | false | Name of HTTP header parameter that indicates the API Version if versioningScheme is set to `header`. |
|versioningScheme | String | true | An value that determines where the API Version identifer will be located in a HTTP request. |
|versionQueryName | String | false | Name of query parameter that indicates the API Version if versioningScheme is set to `query`. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ApiContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}`|Put|Creates new or updates existing specified API of the API Management service instance.|Api_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}`|Get|Gets the details of the API specified by its identifier.|Api_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis`|Get|Lists all APIs of the API Management service instance.|Api_ListByService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}`|Put|Creates new or updates existing specified API of the API Management service instance.|Api_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}`|Delete|Deletes the specified API of the API Management service instance.|Api_Delete|
