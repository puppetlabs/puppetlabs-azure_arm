Document: "apimversionsets"


Path: "/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimversionsets.json")

## ApiVersionSetContract

Api Version Set Contract details.

```puppet
azure_api_version_set_contract {
  api_version => "api_version",
  if_match => "if_match",
  parameters => "parameters",
  properties => $azure_api_version_set_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
  version_set_id => "version_set_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|if_match | String | true | ETag of the Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update. |
|parameters | Hash | true | Create or update parameters. |
|properties | [ApiVersionSetContractProperties](#apiversionsetcontractproperties) | false | Api VersionSet contract properties. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|version_set_id | String | true | Api Version Set identifier. Must be unique in the current API Management service instance. |
        
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

Here is a list of endpoints that we use to create, read, update and delete the ApiVersionSetContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/api-version-sets/%{version_set_id}`|Put|Creates or Updates a Api Version Set.|ApiVersionSet_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/api-version-sets/%{version_set_id}`|Get|Gets the details of the Api Version Set specified by its identifier.|ApiVersionSet_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/api-version-sets`|Get|Lists a collection of API Version Sets in the specified service instance.|ApiVersionSet_ListByService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/api-version-sets/%{version_set_id}`|Put|Creates or Updates a Api Version Set.|ApiVersionSet_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/api-version-sets/%{version_set_id}`|Delete|Deletes specific Api Version Set.|ApiVersionSet_Delete|
