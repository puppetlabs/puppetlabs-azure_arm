Document: "timeseriesinsights"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/timeseriesinsights/resource-manager/Microsoft.TimeSeriesInsights/stable/2017-11-15/timeseriesinsights.json")

## EnvironmentResource

An environment is a set of time-series data avaliable for query, and is the top level Azure Time Series Insights resource.

```puppet
azure_environment_resource {
  api_version => "api_version",
  environment_name => "environment_name",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_environment_resource_properties
  resource_group_name => "resource_group_name",
  sku => $azure_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|environment_name | String | true | Name of the environment |
|location | String | false | Resource location |
|parameters | Hash | true | Parameters for creating an environment resource. |
|properties | [EnvironmentResourceProperties](#environmentresourceproperties) | false |  |
|resource_group_name | String | true | Name of an Azure Resource group. |
|sku | [Sku](#sku) | false | The sku determines the capacity of the environment, the SLA (in queries-per-minute and total capacity), and the billing rate. |
|subscription_id | String | true | Azure Subscription ID. |
|tags | Hash | false | Resource tags |
        
## EnvironmentResourceProperties

Properties of the environment.

```puppet
$azure_environment_resource_properties = {
  dataRetentionTime => "dataRetentionTime (optional)",
  partitionKeyProperties => "partitionKeyProperties (optional)",
  provisioningState => "provisioningState (optional)",
  status => $azure_environment_status
  storageLimitExceededBehavior => "storageLimitExceededBehavior (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dataRetentionTime | String | false | ISO8601 timespan specifying the minimum number of days the environment's events will be available for query. |
|partitionKeyProperties | Array | false | The list of partition keys according to which the data in the environment will be ordered. |
|provisioningState | String | false | Provisioning state of the resource. |
|status | [EnvironmentStatus](#environmentstatus) | false | An object that represents the status of the environment, and its internal state in the Time Series Insights service. |
|storageLimitExceededBehavior | String | false | The behavior the Time Series Insights service should take when the environment's capacity has been exceeded. If 'PauseIngress' is specified, new events will not be read from the event source. If 'PurgeOldData' is specified, new events will continue to be read and old events will be deleted from the environment. The default behavior is PurgeOldData. |
        
## EnvironmentStatus

An object that represents the status of the environment, and its internal state in the Time Series Insights service.

```puppet
$azure_environment_status = {
  ingress => $azure_ingress_environment_status
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|ingress | [IngressEnvironmentStatus](#ingressenvironmentstatus) | false | An object that represents the status of ingress on an environment. |
        
## IngressEnvironmentStatus

An object that represents the status of ingress on an environment.

```puppet
$azure_ingress_environment_status = {
  state => "state (optional)",
  stateDetails => $azure_environment_state_details
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|state | String | false | This string represents the state of ingress operations on an environment. It can be 'Disabled', 'Ready', 'Running', 'Paused' or 'Unknown' |
|stateDetails | [EnvironmentStateDetails](#environmentstatedetails) | false | An object that contains the details about an environment's state. |
        
## EnvironmentStateDetails

An object that contains the details about an environment's state.

```puppet
$azure_environment_state_details = {
  code => "code (optional)",
  message => "message (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|code | String | false | Contains the code that represents the reason of an environment being in a particular state. Can be used to programatically handle specific cases. |
|message | String | false | A message that describes the state in detail. |
        
## Sku

The sku determines the capacity of the environment, the SLA (in queries-per-minute and total capacity), and the billing rate.

```puppet
$azure_sku = {
  capacity => "1234",
  name => "name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|capacity | Integer | true | The capacity of the sku. This value can be changed to support scale out of environments after they have been created. |
|name | String | true | The name of this SKU. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the EnvironmentResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.TimeSeriesInsights/environments/%{environment_name}`|Put|Create or update an environment in the specified subscription and resource group.|Environments_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.TimeSeriesInsights/environments`|Get|Lists all the available environments within a subscription, irrespective of the resource groups.|Environments_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.TimeSeriesInsights/environments/%{environment_name}`|Get|Gets the environment with the specified name in the specified subscription and resource group.|Environments_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.TimeSeriesInsights/environments`|Get|Lists all the available environments associated with the subscription and within the specified resource group.|Environments_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.TimeSeriesInsights/environments/%{environment_name}`|Put|Create or update an environment in the specified subscription and resource group.|Environments_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.TimeSeriesInsights/environments/%{environment_name}`|Delete|Deletes the environment with the specified name in the specified subscription and resource group.|Environments_Delete|
