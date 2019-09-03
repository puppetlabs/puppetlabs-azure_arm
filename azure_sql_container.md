Document: "cosmos-db"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/cosmos-db/resource-manager/Microsoft.DocumentDB/stable/2015-04-08/cosmos-db.json")

## SqlContainer

An Azure Cosmos DB container.

```puppet
azure_sql_container {
  account_name => "account_name",
  api_version => "api_version",
  container_name => "container_name",
  create_update_sql_container_parameters => "createUpdateSqlContainerParameters",
  database_name => "database_name",
  location => "location (optional)",
  properties => $azure_sql_container_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | Cosmos DB database account name. |
|api_version | String | true | Version of the API to be used with the client request. The current version is 2015-04-08. |
|container_name | String | true | Cosmos DB container name. |
|create_update_sql_container_parameters | Hash | true | The parameters to provide for the current SQL container. |
|database_name | String | true | Cosmos DB database name. |
|location | String | false | The location of the resource group to which the resource belongs. |
|properties | [SqlContainerProperties](#sqlcontainerproperties) | false | The properties of an Azure Cosmos DB container |
|resource_group_name | String | true | Name of an Azure resource group. |
|subscription_id | String | true | Azure subscription ID. |
|tags | String | false |  |
        
## SqlContainerProperties

The properties of an Azure Cosmos DB container

```puppet
$azure_sql_container_properties = {
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
|conflictResolutionPolicy | String | false | The conflict resolution policy for the container. |
|defaultTtl | Integer | false | Default time to live |
|id | String | false | Name of the Cosmos DB SQL container |
|indexingPolicy | String | false | The configuration of the indexing policy. By default, the indexing is automatic for all document paths within the container |
|partitionKey | String | false | The configuration of the partition key to be used for partitioning data into multiple partitions |
|uniqueKeyPolicy | String | false | The unique key policy configuration for specifying uniqueness constraints on documents in the collection in the Azure Cosmos DB service. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the SqlContainer

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/sql/databases/%{database_name}/containers/%{container_name}`|Put|Create or update an Azure Cosmos DB SQL container|DatabaseAccounts_CreateUpdateSqlContainer|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/sql/databases/%{database_name}/containers/%{container_name}`|Get|Gets the SQL container under an existing Azure Cosmos DB database account.|DatabaseAccounts_GetSqlContainer|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/sql/databases/%{database_name}/containers`|Get|Lists the SQL container under an existing Azure Cosmos DB database account.|DatabaseAccounts_ListSqlContainers|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/sql/databases/%{database_name}/containers/%{container_name}`|Put|Create or update an Azure Cosmos DB SQL container|DatabaseAccounts_CreateUpdateSqlContainer|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/sql/databases/%{database_name}/containers/%{container_name}`|Delete|Deletes an existing Azure Cosmos DB SQL container.|DatabaseAccounts_DeleteSqlContainer|
