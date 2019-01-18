Document: "search"


Path: "/tmp/azure-rest-api-specs/specification/search/resource-manager/Microsoft.Search/stable/2015-08-19/search.json")

## SearchService

Describes an Azure Search service and its current state.

```puppet
azure_search_service {
  api_version => "api_version",
  identity => "identity (optional)",
  location => "location (optional)",
  properties => $azure_search_service_properties
  resource_group_name => "resource_group_name",
  service => "service",
  sku => $azure_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for each request. The current version is 2015-08-19. |
|identity | String | false | The identity of the resource. |
|location | String | false | The geographic location of the resource. This must be one of the supported and registered Azure Geo Regions (for example, West US, East US, Southeast Asia, and so forth). This property is required when creating a new resource. |
|properties | [SearchServiceProperties](#searchserviceproperties) | false | Properties of the Search service. |
|resource_group_name | String | true | The name of the resource group within the current subscription. You can obtain this value from the Azure Resource Manager API or the portal. |
|service | Hash | true | The definition of the Search service to create or update. |
|sku | [Sku](#sku) | false | The SKU of the Search Service, which determines price tier and capacity limits. This property is required when creating a new Search Service. |
|subscription_id | String | true | The unique identifier for a Microsoft Azure subscription. You can obtain this value from the Azure Resource Manager API or the portal. |
|tags | Hash | false | Tags to help categorize the resource in the Azure portal. |
        
## SearchServiceProperties

Properties of the Search service.

```puppet
$azure_search_service_properties = {
  hostingMode => "hostingMode (optional)",
  partitionCount => "1234 (optional)",
  replicaCount => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|hostingMode | String | false | Applicable only for the standard3 SKU. You can set this property to enable up to 3 high density partitions that allow up to 1000 indexes, which is much higher than the maximum indexes allowed for any other SKU. For the standard3 SKU, the value is either 'default' or 'highDensity'. For all other SKUs, this value must be 'default'. |
|partitionCount | Integer | false | The number of partitions in the Search service; if specified, it can be 1, 2, 3, 4, 6, or 12. Values greater than 1 are only valid for standard SKUs. For 'standard3' services with hostingMode set to 'highDensity', the allowed values are between 1 and 3. |
|replicaCount | Integer | false | The number of replicas in the Search service. If specified, it must be a value between 1 and 12 inclusive for standard SKUs or between 1 and 3 inclusive for basic SKU. |
        
## Sku

Defines the SKU of an Azure Search Service, which determines price tier and capacity limits.

```puppet
$azure_sku = {
  name => "name (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | The SKU of the Search service. Valid values include: 'free': Shared service. 'basic': Dedicated service with up to 3 replicas. 'standard': Dedicated service with up to 12 partitions and 12 replicas. 'standard2': Similar to standard, but with more capacity per search unit. 'standard3': Offers maximum capacity per search unit with up to 12 partitions and 12 replicas (or up to 3 partitions with more indexes if you also set the hostingMode property to 'highDensity'). |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the SearchService

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Search/searchServices/%{search_service_name}`|Put|Creates or updates a Search service in the given resource group. If the Search service already exists, all properties will be updated with the given values.|Services_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Search/searchServices/%{search_service_name}`|Get|Gets the Search service with the given name in the given resource group.|Services_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Search/searchServices`|Get|Gets a list of all Search services in the given resource group.|Services_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Search/searchServices/%{search_service_name}`|Put|Creates or updates a Search service in the given resource group. If the Search service already exists, all properties will be updated with the given values.|Services_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Search/searchServices/%{search_service_name}`|Delete|Deletes a Search service in the given resource group, along with its associated resources.|Services_Delete|
