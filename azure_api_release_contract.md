Document: "apimapis"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2017-03-01/apimapis.json")

## ApiReleaseContract

Api Release details.

```puppet
azure_api_release_contract {
  api_version => "api_version",
  api_id => "api_id",
  if_match => "if_match",
  parameters => "parameters",
  properties => $azure_api_release_contract_properties
  release_id => "release_id",
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|api_id | String | true | API identifier. Must be unique in the current API Management service instance. |
|if_match | String | true | ETag of the Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update. |
|parameters | Hash | true | Create parameters. |
|properties | [ApiReleaseContractProperties](#apireleasecontractproperties) | false | Properties of the Api Release Contract. |
|release_id | String | true | Release identifier within an API. Must be unique in the current API Management service instance. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## ApiReleaseContractProperties

API Release details

```puppet
$azure_api_release_contract_properties = {
  apiId => "apiId (optional)",
  notes => "notes (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|apiId | String | false | Identifier of the API the release belongs to. |
|notes | String | false | Release Notes |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ApiReleaseContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/releases/%{release_id}`|Put|Creates a new Release for the API.|ApiRelease_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/releases/%{release_id}`|Get|Returns the details of an API release.|ApiRelease_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/releases`|Get|Lists all releases of an API. An API release is created when making an API Revision current. Releases are also used to rollback to previous revisions. Results will be paged and can be constrained by the $top and $skip parameters.|ApiRelease_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/releases/%{release_id}`|Put|Creates a new Release for the API.|ApiRelease_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/releases/%{release_id}`|Delete|Deletes the specified release in the API.|ApiRelease_Delete|
