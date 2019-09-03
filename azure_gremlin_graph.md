Document: "cosmos-db"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/cosmos-db/resource-manager/Microsoft.DocumentDB/stable/2015-04-08/cosmos-db.json")

## GremlinGraph

An Azure Cosmos DB Gremlin graph.

```puppet
azure_gremlin_graph {
  account_name => "account_name",
  api_version => "api_version",
  create_update_gremlin_graph_parameters => "createUpdateGremlinGraphParameters",
  database_name => "database_name",
  graph_name => "graph_name",
  location => "location (optional)",
  properties => $azure_gremlin_graph_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | Cosmos DB database account name. |
|api_version | String | true | Version of the API to be used with the client request. The current version is 2015-04-08. |
|create_update_gremlin_graph_parameters | Hash | true | The parameters to provide for the current Gremlin graph. |
|database_name | String | true | Cosmos DB database name. |
|graph_name | String | true | Cosmos DB graph name. |
|location | String | false | The location of the resource group to which the resource belongs. |
|properties | [GremlinGraphProperties](#gremlingraphproperties) | false | The properties of an Azure Cosmos DB Gremlin graph |
|resource_group_name | String | true | Name of an Azure resource group. |
|subscription_id | String | true | Azure subscription ID. |
|tags | String | false |  |
        
## GremlinGraphProperties

The properties of an Azure Cosmos DB Gremlin graph

```puppet
$azure_gremlin_graph_properties = {
  _etag => "_etag (optional)",
  _rid => "_rid (optional)",
  _ts => "_ts (optional)",
  conflictResolutionPolicy => "conflictResolutionPolicy (optional)",
  defaultTtl => "1234 (optional)",
  id => "id (optional)",
  indexingPolicy => "indexingPolicy (optional)",
  partitionKey => "partitionKey (optional)",
  uniqueKeyPolicy => "uniqueKeyPolicy (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|_etag | String | false | A system generated property representing the resource etag required for optimistic concurrency control. |
|_rid | String | false | A system generated property. A unique identifier. |
|_ts | String | false | A system generated property that denotes the last updated timestamp of the resource. |
|conflictResolutionPolicy | String | false | The conflict resolution policy for the graph. |
|defaultTtl | Integer | false | Default time to live |
|id | String | false | Name of the Cosmos DB Gremlin graph |
|indexingPolicy | String | false | The configuration of the indexing policy. By default, the indexing is automatic for all document paths within the graph |
|partitionKey | String | false | The configuration of the partition key to be used for partitioning data into multiple partitions |
|uniqueKeyPolicy | String | false | The unique key policy configuration for specifying uniqueness constraints on documents in the collection in the Azure Cosmos DB service. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the GremlinGraph

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/gremlin/databases/%{database_name}/graphs/%{graph_name}`|Put|Create or update an Azure Cosmos DB Gremlin graph|DatabaseAccounts_CreateUpdateGremlinGraph|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/gremlin/databases/%{database_name}/graphs/%{graph_name}`|Get|Gets the Gremlin graph under an existing Azure Cosmos DB database account.|DatabaseAccounts_GetGremlinGraph|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/gremlin/databases/%{database_name}/graphs`|Get|Lists the Gremlin graph under an existing Azure Cosmos DB database account.|DatabaseAccounts_ListGremlinGraphs|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/gremlin/databases/%{database_name}/graphs/%{graph_name}`|Put|Create or update an Azure Cosmos DB Gremlin graph|DatabaseAccounts_CreateUpdateGremlinGraph|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/gremlin/databases/%{database_name}/graphs/%{graph_name}`|Delete|Deletes an existing Azure Cosmos DB Gremlin graph.|DatabaseAccounts_DeleteGremlinGraph|
