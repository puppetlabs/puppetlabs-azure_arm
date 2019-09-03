Document: "kusto"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/azure-kusto/resource-manager/Microsoft.Kusto/stable/2019-05-15/kusto.json")

## DataConnection

Class representing an data connection.

```puppet
azure_data_connection {
  api_version => "api_version",
  cluster_name => "cluster_name",
  database_name => "database_name",
  kind => "kind",
  location => "location (optional)",
  parameters => "parameters",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for this operation. |
|cluster_name | String | true | The name of the Kusto cluster. |
|database_name | String | true | The name of the database in the Kusto cluster. |
|kind | String | true | Kind of the endpoint for the data connection |
|location | String | false | Resource location. |
|parameters | Hash | true | The data connection parameters supplied to the CreateOrUpdate operation. |
|resource_group_name | String | true | The name of the resource group containing the Kusto cluster. |
|subscription_id | String | true | The ID of the target subscription. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DataConnection

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Kusto/clusters/%{cluster_name}/databases/%{database_name}/dataConnections/%{data_connection_name}`|Put|Creates or updates a data connection.|DataConnections_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Kusto/clusters/%{cluster_name}/databases/%{database_name}/dataConnections/%{data_connection_name}`|Get|Returns a data connection.|DataConnections_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Kusto/clusters/%{cluster_name}/databases/%{database_name}/dataConnections`|Get|Returns the list of data connections of the given Kusto database.|DataConnections_ListByDatabase|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Kusto/clusters/%{cluster_name}/databases/%{database_name}/dataConnections/%{data_connection_name}`|Put|Creates or updates a data connection.|DataConnections_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Kusto/clusters/%{cluster_name}/databases/%{database_name}/dataConnections/%{data_connection_name}`|Delete|Deletes the data connection with the given name.|DataConnections_Delete|
