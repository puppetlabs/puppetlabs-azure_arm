Document: "timeseriesinsights"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/timeseriesinsights/resource-manager/Microsoft.TimeSeriesInsights/stable/2017-11-15/timeseriesinsights.json")

## ReferenceDataSetResource

A reference data set provides metadata about the events in an environment. Metadata in the reference data set will be joined with events as they are read from event sources. The metadata that makes up the reference data set is uploaded or modified through the Time Series Insights data plane APIs.

```puppet
azure_reference_data_set_resource {
  api_version => "api_version",
  environment_name => "environment_name",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_reference_data_set_resource_properties
  reference_data_set_name => "reference_data_set_name",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|environment_name | String | true | The name of the Time Series Insights environment associated with the specified resource group. |
|location | String | false | Resource location |
|parameters | Hash | true | Parameters for creating a reference data set. |
|properties | [ReferenceDataSetResourceProperties](#referencedatasetresourceproperties) | false |  |
|reference_data_set_name | String | true | Name of the reference data set. |
|resource_group_name | String | true | Name of an Azure Resource group. |
|subscription_id | String | true | Azure Subscription ID. |
|tags | Hash | false | Resource tags |
        
## ReferenceDataSetResourceProperties

Properties of the reference data set.

```puppet
$azure_reference_data_set_resource_properties = {
  dataStringComparisonBehavior => "dataStringComparisonBehavior (optional)",
  keyProperties => "keyProperties (optional)",
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dataStringComparisonBehavior | String | false | The reference data set key comparison behavior can be set using this property. By default, the value is 'Ordinal' - which means case sensitive key comparison will be performed while joining reference data with events or while adding new reference data. When 'OrdinalIgnoreCase' is set, case insensitive comparison will be used. |
|keyProperties | Array | false | The list of key properties for the reference data set. |
|provisioningState | String | false | Provisioning state of the resource. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ReferenceDataSetResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.TimeSeriesInsights/environments/%{environment_name}/referenceDataSets/%{reference_data_set_name}`|Put|Create or update a reference data set in the specified environment.|ReferenceDataSets_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.TimeSeriesInsights/environments/%{environment_name}/referenceDataSets/%{reference_data_set_name}`|Get|Gets the reference data set with the specified name in the specified environment.|ReferenceDataSets_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.TimeSeriesInsights/environments/%{environment_name}/referenceDataSets`|Get|Lists all the available reference data sets associated with the subscription and within the specified resource group and environment.|ReferenceDataSets_ListByEnvironment|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.TimeSeriesInsights/environments/%{environment_name}/referenceDataSets/%{reference_data_set_name}`|Put|Create or update a reference data set in the specified environment.|ReferenceDataSets_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.TimeSeriesInsights/environments/%{environment_name}/referenceDataSets/%{reference_data_set_name}`|Delete|Deletes the reference data set with the specified name in the specified subscription, resource group, and environment|ReferenceDataSets_Delete|
