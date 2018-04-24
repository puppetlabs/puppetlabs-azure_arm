Document: "apimapis"
Path: "/root/specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2017-03-01/apimapis.json")

## ApiReleaseContract

```puppet
azure_api_release_contract {
  api_version => "api_version",
  api_id => "api_id",
  id => "id (optional)",
  if_match => "if_match",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_api_release_contract_properties
  release_id => "release_id",
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|api_id | String | true | API identifier. Must be unique in the current API Management service instance. |
|id | String | false | Resource ID. |
|if_match | String | true | ETag of the Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update. |
|name | String | false | Resource name. |
|parameters | Hash | true | Create parameters. |
|properties | [ApiReleaseContractProperties](#apireleasecontractproperties) | false | Properties of the Api Release Contract. |
|release_id | String | true | Release identifier within an API. Must be unique in the current API Management service instance. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | Resource type for API Management resource. |
        
## ApiReleaseContractProperties

```puppet
$azure_api_release_contract_properties = {
  apiId => "apiId (optional)",
  createdDateTime => "createdDateTime (optional)",
  notes => "notes (optional)",
  updatedDateTime => "updatedDateTime (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|apiId | String | false | Identifier of the API the release belongs to. |
|createdDateTime | String | false | The time the API was released. The date conforms to the following format: yyyy-MM-ddTHH:mm:ssZ as specified by the ISO 8601 standard. |
|notes | String | false | Release Notes |
|updatedDateTime | String | false | The time the API release was updated. |



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