Document: "apimloggers"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2017-03-01/apimloggers.json")

## LoggerContract

Logger details.

```puppet
azure_logger_contract {
  api_version => "api_version",
  if_match => "if_match",
  loggerid => "loggerid",
  parameters => "parameters",
  properties => $azure_logger_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|if_match | String | true | The entity state (Etag) version of the logger to delete. A value of '*' can be used for If-Match to unconditionally apply the operation. |
|loggerid | String | true | Logger identifier. Must be unique in the API Management service instance. |
|parameters | Hash | true | Create parameters. |
|properties | [LoggerContractProperties](#loggercontractproperties) | false | Logger entity contract properties. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## LoggerContractProperties

The Logger entity in API Management represents an event sink that you can use to log API Management events. Currently the Logger entity supports logging API Management events to Azure Event Hubs.

```puppet
$azure_logger_contract_properties = {
  credentials => "credentials",
  description => "description (optional)",
  isBuffered => "isBuffered (optional)",
  loggerType => "loggerType",
  sampling => $azure_logger_sampling_contract
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|credentials | Hash | true | The name and SendRule connection string of the event hub for azureEventHub logger.
Instrumentation key for applicationInsights logger. |
|description | String | false | Logger description. |
|isBuffered | Boolean | false | Whether records are buffered in the logger before publishing. Default is assumed to be true. |
|loggerType | String | true | Logger type. |
|sampling | [LoggerSamplingContract](#loggersamplingcontract) | false | Sampling settings for an ApplicationInsights logger. |
        
## LoggerSamplingContract

Sampling settigs contract.

```puppet
$azure_logger_sampling_contract = {
  properties => $azure_logger_sampling_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|properties | [LoggerSamplingProperties](#loggersamplingproperties) | false | Sampling settings entity contract properties. |
        
## LoggerSamplingProperties

Sampling settings for an ApplicationInsights logger.

```puppet
$azure_logger_sampling_properties = {
  evaluationInterval => "evaluationInterval (optional)",
  initialPercentage => "initialPercentage (optional)",
  maxPercentage => "maxPercentage (optional)",
  maxTelemetryItemsPerSecond => "1234 (optional)",
  minPercentage => "minPercentage (optional)",
  movingAverageRatio => "movingAverageRatio (optional)",
  percentage => "percentage (optional)",
  percentageDecreaseTimeout => "percentageDecreaseTimeout (optional)",
  percentageIncreaseTimeout => "percentageIncreaseTimeout (optional)",
  samplingType => "samplingType (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|evaluationInterval | String | false | Rate re-evaluation interval in ISO8601 format. |
|initialPercentage | Numeric | false | Initial sampling rate. |
|maxPercentage | Numeric | false | Maximum allowed rate of sampling. |
|maxTelemetryItemsPerSecond | Integer | false | Target rate of telemetry items per second. |
|minPercentage | Numeric | false | Minimum allowed rate of sampling. |
|movingAverageRatio | Numeric | false | Moving average ration assigned to most recent value. |
|percentage | Numeric | false | Rate of sampling for fixed-rate sampling. |
|percentageDecreaseTimeout | String | false | Duration in ISO8601 format after which it's allowed to lower the sampling rate. |
|percentageIncreaseTimeout | String | false | Duration in ISO8601 format after which it's allowed to increase the sampling rate. |
|samplingType | String | false | Sampling type. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the LoggerContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/loggers/%{loggerid}`|Put|Creates or Updates a logger.|Logger_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/loggers/%{loggerid}`|Get|Gets the details of the logger specified by its identifier.|Logger_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/loggers`|Get|Lists a collection of loggers in the specified service instance.|Logger_ListByService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/loggers/%{loggerid}`|Put|Creates or Updates a logger.|Logger_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/loggers/%{loggerid}`|Delete|Deletes the specified logger.|Logger_Delete|
