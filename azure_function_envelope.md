Document: "WebApps"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/web/resource-manager/Microsoft.Web/stable/2018-02-01/WebApps.json")

## FunctionEnvelope

Web Job Information.

```puppet
azure_function_envelope {
  api_version => "api_version",
  function_envelope => "function_envelope",
  function_name => "function_name",
  kind => "kind (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|function_envelope | Hash | true | Function details. |
|function_name | String | true | Function name. |
|kind | String | false | Kind of resource. |
|properties | String | false | FunctionEnvelope resource specific properties |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the FunctionEnvelope

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/functions/%{function_name}`|Put|Create function for web site, or a deployment slot.|WebApps_CreateFunction|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/functions/%{function_name}`|Get|Get function information by its ID for web site, or a deployment slot.|WebApps_GetFunction|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/functions`|Get|List the functions for a web site, or a deployment slot.|WebApps_ListInstanceFunctionsSlot|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/functions/%{function_name}`|Put|Create function for web site, or a deployment slot.|WebApps_CreateFunction|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/functions/%{function_name}`|Delete|Delete a function for web site, or a deployment slot.|WebApps_DeleteFunction|
