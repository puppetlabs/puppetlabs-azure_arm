Document: "WebApps"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/web/resource-manager/Microsoft.Web/stable/2018-02-01/WebApps.json")

## RelayServiceConnectionEntity

Hybrid Connection for an App Service app.

```puppet
azure_relay_service_connection_entity {
  api_version => "api_version",
  connection_envelope => "connectionEnvelope",
  entity_name => "entity_name",
  kind => "kind (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|connection_envelope | Hash | true | Details of the hybrid connection configuration. |
|entity_name | String | true | Name of the hybrid connection configuration. |
|kind | String | false | Kind of resource. |
|properties | String | false | RelayServiceConnectionEntity resource specific properties |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the RelayServiceConnectionEntity

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/hybridconnection/%{entity_name}`|Put|Creates a new hybrid connection configuration (PUT), or updates an existing one (PATCH).|WebApps_CreateOrUpdateRelayServiceConnection|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/hybridconnection`|Get|Gets hybrid connections configured for an app (or deployment slot, if specified).|WebApps_ListRelayServiceConnections|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/hybridconnection/%{entity_name}`|Put|Creates a new hybrid connection configuration (PUT), or updates an existing one (PATCH).|WebApps_CreateOrUpdateRelayServiceConnection|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/hybridconnection/%{entity_name}`|Delete|Deletes a relay service connection by its name.|WebApps_DeleteRelayServiceConnection|
