Document: "timeseriesinsights"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/timeseriesinsights/resource-manager/Microsoft.TimeSeriesInsights/stable/2017-11-15/timeseriesinsights.json")

## EventSourceResource

An environment receives data from one or more event sources. Each event source has associated connection info that allows the Time Series Insights ingress pipeline to connect to and pull data from the event source

```puppet
azure_event_source_resource {
  api_version => "api_version",
  environment_name => "environment_name",
  event_source_name => "event_source_name",
  kind => "kind",
  location => "location (optional)",
  parameters => "parameters",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|environment_name | String | true | The name of the Time Series Insights environment associated with the specified resource group. |
|event_source_name | String | true | Name of the event source. |
|kind | String | true | The kind of the event source. |
|location | String | false | Resource location |
|parameters | Hash | true | Parameters for creating an event source resource. |
|resource_group_name | String | true | Name of an Azure Resource group. |
|subscription_id | String | true | Azure Subscription ID. |
|tags | Hash | false | Resource tags |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the EventSourceResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.TimeSeriesInsights/environments/%{environment_name}/eventSources/%{event_source_name}`|Put|Create or update an event source under the specified environment.|EventSources_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.TimeSeriesInsights/environments/%{environment_name}/eventSources/%{event_source_name}`|Get|Gets the event source with the specified name in the specified environment.|EventSources_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.TimeSeriesInsights/environments/%{environment_name}/eventSources`|Get|Lists all the available event sources associated with the subscription and within the specified resource group and environment.|EventSources_ListByEnvironment|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.TimeSeriesInsights/environments/%{environment_name}/eventSources/%{event_source_name}`|Put|Create or update an event source under the specified environment.|EventSources_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.TimeSeriesInsights/environments/%{environment_name}/eventSources/%{event_source_name}`|Delete|Deletes the event source with the specified name in the specified subscription, resource group, and environment|EventSources_Delete|
