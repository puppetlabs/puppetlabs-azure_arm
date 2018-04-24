Document: "search"
Path: "/root/specs/specification/search/resource-manager/Microsoft.Search/stable/2015-08-19/search.json")

## SearchService

```puppet
azure_search_service {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_search_service_properties
  resource_group_name => "resource_group_name",
  service => "service",
  sku => $azure_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for each request. The current version is 2015-08-19. |
|id | String | false | The ID of the resource. This can be used with the Azure Resource Manager to link resources together. |
|location | String | false | The geographic location of the resource. This must be one of the supported and registered Azure Geo Regions (for example, West US, East US, Southeast Asia, and so forth). This property is required when creating a new resource. |
|name | String | false | The name of the resource. |
|properties | [SearchServiceProperties](#searchserviceproperties) | false | Properties of the Search service. |
|resource_group_name | String | true | The name of the resource group within the current subscription. You can obtain this value from the Azure Resource Manager API or the portal. |
|service | Hash | true | The definition of the Search service to create or update. |
|sku | [Sku](#sku) | false | The SKU of the Search Service, which determines price tier and capacity limits. This property is required when creating a new Search Service. |
|subscription_id | String | true | The unique identifier for a Microsoft Azure subscription. You can obtain this value from the Azure Resource Manager API or the portal. |
|tags | Hash | false | Tags to help categorize the resource in the Azure portal. |
|type | String | false | The resource type. |
        
## SearchServiceProperties

```puppet
$azure_search_service_properties = {
  hostingMode => "hostingMode (optional)",
  partitionCount => "1234 (optional)",
  provisioningState => "provisioningState (optional)",
  replicaCount => "1234 (optional)",
  status => "status (optional)",
  statusDetails => "statusDetails (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|hostingMode | String | false | Applicable only for the standard3 SKU. You can set this property to enable up to 3 high density partitions that allow up to 1000 indexes, which is much higher than the maximum indexes allowed for any other SKU. For the standard3 SKU, the value is either 'default' or 'highDensity'. For all other SKUs, this value must be 'default'. |
|partitionCount | Integer | false | The number of partitions in the Search service; if specified, it can be 1, 2, 3, 4, 6, or 12. Values greater than 1 are only valid for standard SKUs. For 'standard3' services with hostingMode set to 'highDensity', the allowed values are between 1 and 3. |
|provisioningState | String | false | The state of the last provisioning operation performed on the Search service. Provisioning is an intermediate state that occurs while service capacity is being established. After capacity is set up, provisioningState changes to either 'succeeded' or 'failed'. Client applications can poll provisioning status (the recommended polling interval is from 30 seconds to one minute) by using the Get Search Service operation to see when an operation is completed. If you are using the free service, this value tends to come back as 'succeeded' directly in the call to Create Search service. This is because the free service uses capacity that is already set up. |
|replicaCount | Integer | false | The number of replicas in the Search service. If specified, it must be a value between 1 and 12 inclusive for standard SKUs or between 1 and 3 inclusive for basic SKU. |
|status | String | false | The status of the Search service. Possible values include: 'running': The Search service is running and no provisioning operations are underway. 'provisioning': The Search service is being provisioned or scaled up or down. 'deleting': The Search service is being deleted. 'degraded': The Search service is degraded. This can occur when the underlying search units are not healthy. The Search service is most likely operational, but performance might be slow and some requests might be dropped. 'disabled': The Search service is disabled. In this state, the service will reject all API requests. 'error': The Search service is in an error state. If your service is in the degraded, disabled, or error states, it means the Azure Search team is actively investigating the underlying issue. Dedicated services in these states are still chargeable based on the number of search units provisioned. |
|statusDetails | String | false | The details of the Search service status. |
        
## Sku

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