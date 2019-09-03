Document: "hybriddata"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/hybriddatamanager/resource-manager/Microsoft.HybridData/stable/2016-06-01/hybriddata.json")

## DataManager

The DataManager resource.

```puppet
azure_data_manager {
  api_version => "api_version",
  data_manager => "dataManager",
  etag => "etag (optional)",
  location => "location (optional)",
  resource_group_name => "resource_group_name",
  sku => "sku (optional)",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API Version |
|data_manager | Hash | true | Data manager resource details from request body. |
|etag | String | false | Etag of the Resource. |
|location | String | false | The location of the resource. This will be one of the supported and registered Azure Geo Regions (e.g. West US, EastUS, Southeast Asia, etc.). The geo region of a resource cannot be changed once it is created, but if an identical georegion is specified on update the request will succeed. |
|resource_group_name | String | true | The Resource Group Name |
|sku | String | false | The sku type. |
|subscription_id | String | true | The Subscription Id |
|tags | Hash | false | The list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource(across resource groups). |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DataManager

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.HybridData/dataManagers/%{data_manager_name}`|Put|Creates a new data manager resource with the specified parameters. Existing resources cannot be updated with this API
and should instead be updated with the Update data manager resource API.|DataManagers_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.HybridData/dataManagers`|Get|Lists all the data manager resources available under the subscription.|DataManagers_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.HybridData/dataManagers/%{data_manager_name}`|Get|Gets information about the specified data manager resource.|DataManagers_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.HybridData/dataManagers`|Get|Lists all the data manager resources available under the subscription.|DataManagers_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.HybridData/dataManagers/%{data_manager_name}`|Put|Creates a new data manager resource with the specified parameters. Existing resources cannot be updated with this API
and should instead be updated with the Update data manager resource API.|DataManagers_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.HybridData/dataManagers/%{data_manager_name}`|Delete|Deletes a data manager resource in Microsoft Azure.|DataManagers_Delete|
