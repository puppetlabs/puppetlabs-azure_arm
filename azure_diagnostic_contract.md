Document: "apimdiagnostics"
Path: "/root/specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2017-03-01/apimdiagnostics.json")

## DiagnosticContract

```puppet
azure_diagnostic_contract {
  api_version => "api_version",
  diagnostic_id => "diagnostic_id",
  id => "id (optional)",
  if_match => "if_match",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_diagnostic_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|diagnostic_id | String | true | Diagnostic identifier. Must be unique in the current API Management service instance. |
|id | String | false | Resource ID. |
|if_match | String | true | ETag of the Diagnostic Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update. |
|name | String | false | Resource name. |
|parameters | Hash | true | Create parameters. |
|properties | [DiagnosticContractProperties](#diagnosticcontractproperties) | false | Diagnostic entity contract properties. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | Resource type for API Management resource. |
        
## DiagnosticContractProperties

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