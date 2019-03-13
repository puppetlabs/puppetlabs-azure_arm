Document: "apimloggers"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimloggers.json")

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
|if_match | String | true | ETag of the Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update. |
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
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|credentials | Hash | true | The name and SendRule connection string of the event hub for azureEventHub logger.Instrumentation key for applicationInsights logger. |
|description | String | false | Logger description. |
|isBuffered | Boolean | false | Whether records are buffered in the logger before publishing. Default is assumed to be true. |
|loggerType | String | true | Logger type. |



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
