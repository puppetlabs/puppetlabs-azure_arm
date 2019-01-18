Document: "relay"


Path: "/tmp/azure-rest-api-specs/specification/relay/resource-manager/Microsoft.Relay/stable/2017-04-01/relay.json")

## HybridConnection

Description of hybrid connection resource.

```puppet
azure_hybrid_connection {
  api_version => "api_version",
  namespace_name => "namespace_name",
  parameters => "parameters",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|namespace_name | String | true | The namespace name |
|parameters | Hash | true | Parameters supplied to create a hybrid connection. |
|properties | String | false | Properties of the HybridConnection. |
|resource_group_name | String | true | Name of the Resource group within the Azure subscription. |
|subscription_id | String | true | Subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the HybridConnection

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Relay/namespaces/%{namespace_name}/hybridConnections/%{hybrid_connection_name}`|Put|Creates or updates a service hybrid connection. This operation is idempotent.|HybridConnections_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Relay/namespaces/%{namespace_name}/hybridConnections/%{hybrid_connection_name}`|Get|Returns the description for the specified hybrid connection.|HybridConnections_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Relay/namespaces/%{namespace_name}/hybridConnections`|Get|Lists the hybrid connection within the namespace.|HybridConnections_ListByNamespace|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Relay/namespaces/%{namespace_name}/hybridConnections/%{hybrid_connection_name}`|Put|Creates or updates a service hybrid connection. This operation is idempotent.|HybridConnections_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Relay/namespaces/%{namespace_name}/hybridConnections/%{hybrid_connection_name}`|Delete|Deletes a hybrid connection.|HybridConnections_Delete|
