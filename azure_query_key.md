Document: "search"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/search/resource-manager/Microsoft.Search/stable/2015-08-19/search.json")

## QueryKey

Describes an API key for a given Azure Search service that has permissions for query operations only.

```puppet
azure_query_key {
  api_version => "api_version",
  resource_group_name => "resource_group_name",
  search_service_name => "search_service_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for each request. The current version is 2015-08-19. |
|resource_group_name | String | true | The name of the resource group within the current subscription. You can obtain this value from the Azure Resource Manager API or the portal. |
|search_service_name | String | true | The name of the Azure Search service associated with the specified resource group. |
|subscription_id | String | true | The unique identifier for a Microsoft Azure subscription. You can obtain this value from the Azure Resource Manager API or the portal. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the QueryKey

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Search/searchServices/%{search_service_name}/createQueryKey/%{name}`|Post|Generates a new query key for the specified Search service. You can create up to 50 query keys per service.|QueryKeys_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Search/searchServices/%{search_service_name}/listQueryKeys`|Get|Returns the list of query API keys for the given Azure Search service.|QueryKeys_ListBySearchService|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Search/searchServices/%{search_service_name}/listQueryKeys`|Get|Returns the list of query API keys for the given Azure Search service.|QueryKeys_ListBySearchService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Search/searchServices/%{search_service_name}/createQueryKey/%{name}`|Post|Generates a new query key for the specified Search service. You can create up to 50 query keys per service.|QueryKeys_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Search/searchServices/%{search_service_name}/deleteQueryKey/%{key}`|Delete|Deletes the specified query key. Unlike admin keys, query keys are not regenerated. The process for regenerating a query key is to delete and then recreate it.|QueryKeys_Delete|
