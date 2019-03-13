Document: "apimdiagnostics"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimdiagnostics.json")

## DiagnosticContract

Diagnostic details.

```puppet
azure_diagnostic_contract {
  api_version => "api_version",
  diagnostic_id => "diagnostic_id",
  if_match => "if_match",
  parameters => "parameters",
  properties => $azure_diagnostic_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|diagnostic_id | String | true | Diagnostic identifier. Must be unique in the current API Management service instance. |
|if_match | String | true | ETag of the Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update. |
|parameters | Hash | true | Create parameters. |
|properties | [DiagnosticContractProperties](#diagnosticcontractproperties) | false | Diagnostic entity contract properties. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## DiagnosticContractProperties

Diagnostic Entity Properties

```puppet
$azure_diagnostic_contract_properties = {
  enabled => "enabled",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|enabled | Boolean | true | Indicates whether a diagnostic should receive data or not. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DiagnosticContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/diagnostics/%{diagnostic_id}`|Put|Creates a new Diagnostic or updates an existing one.|Diagnostic_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/diagnostics/%{diagnostic_id}`|Get|Gets the details of the Diagnostic specified by its identifier.|Diagnostic_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/diagnostics`|Get|Lists all diagnostics of the API Management service instance.|Diagnostic_ListByService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/diagnostics/%{diagnostic_id}`|Put|Creates a new Diagnostic or updates an existing one.|Diagnostic_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/diagnostics/%{diagnostic_id}`|Delete|Deletes the specified Diagnostic.|Diagnostic_Delete|
