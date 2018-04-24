Document: "apimversionsets"
Path: "/root/specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2017-03-01/apimversionsets.json")

## ApiVersionSetContract

```puppet
azure_api_version_set_contract {
  api_version => "api_version",
  id => "id (optional)",
  if_match => "if_match",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_api_version_set_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
  version_set_id => "version_set_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|id | String | false | Resource ID. |
|if_match | String | true | The entity state (Etag) version of the Api Version Set to delete. A value of '*' can be used for If-Match to unconditionally apply the operation. |
|name | String | false | Resource name. |
|parameters | Hash | true | Create or update parameters. |
|properties | [ApiVersionSetContractProperties](#apiversionsetcontractproperties) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | Resource type for API Management resource. |
|version_set_id | String | true | Api Version Set identifier. Must be unique in the current API Management service instance. |
        
## ApiVersionSetContractProperties

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

Here is a list of endpoints that we use to create, read, update and delete the ApiVersionSetContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/api-version-sets/%{version_set_id}`|Put|Creates or Updates a Api Version Set.|ApiVersionSet_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/api-version-sets/%{version_set_id}`|Get|Gets the details of the Api Version Set specified by its identifier.|ApiVersionSet_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/api-version-sets`|Get|Lists a collection of API Version Sets in the specified service instance.|ApiVersionSet_ListByService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/api-version-sets/%{version_set_id}`|Put|Creates or Updates a Api Version Set.|ApiVersionSet_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/api-version-sets/%{version_set_id}`|Delete|Deletes specific Api Version Set.|ApiVersionSet_Delete|