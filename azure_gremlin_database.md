Document: "cosmos-db"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/cosmos-db/resource-manager/Microsoft.DocumentDB/stable/2015-04-08/cosmos-db.json")

## GremlinDatabase

An Azure Cosmos DB Gremlin database.

```puppet
azure_gremlin_database {
  account_name => "account_name",
  api_version => "api_version",
  create_update_gremlin_database_parameters => "createUpdateGremlinDatabaseParameters",
  database_name => "database_name",
  location => "location (optional)",
  properties => $azure_gremlin_database_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | Cosmos DB database account name. |
|api_version | String | true | Version of the API to be used with the client request. The current version is 2015-04-08. |
|create_update_gremlin_database_parameters | Hash | true | The parameters to provide for the current Gremlin database. |
|database_name | String | true | Cosmos DB database name. |
|location | String | false | The location of the resource group to which the resource belongs. |
|properties | [GremlinDatabaseProperties](#gremlindatabaseproperties) | false | The properties of an Azure Cosmos DB SQL database |
|resource_group_name | String | true | Name of an Azure resource group. |
|subscription_id | String | true | Azure subscription ID. |
|tags | String | false |  |
        
## GremlinDatabaseProperties

The properties of an Azure Cosmos DB SQL database

```puppet
$azure_gremlin_database_properties = {
  _etag => "_etag (optional)",
  _rid => "_rid (optional)",
  _ts => "_ts (optional)",
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|_etag | String | false | A system generated property representing the resource etag required for optimistic concurrency control. |
|_rid | String | false | A system generated property. A unique identifier. |
|_ts | String | false | A system generated property that denotes the last updated timestamp of the resource. |
|id | String | false | Name of the Cosmos DB Gremlin database |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the GremlinDatabase

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/gremlin/databases/%{database_name}`|Put|Create or update an Azure Cosmos DB Gremlin database|DatabaseAccounts_CreateUpdateGremlinDatabase|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/gremlin/databases/%{database_name}`|Get|Gets the Gremlin databases under an existing Azure Cosmos DB database account with the provided name.|DatabaseAccounts_GetGremlinDatabase|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/gremlin/databases`|Get|Lists the Gremlin databases under an existing Azure Cosmos DB database account.|DatabaseAccounts_ListGremlinDatabases|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/gremlin/databases/%{database_name}`|Put|Create or update an Azure Cosmos DB Gremlin database|DatabaseAccounts_CreateUpdateGremlinDatabase|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/gremlin/databases/%{database_name}`|Delete|Deletes an existing Azure Cosmos DB Gremlin database.|DatabaseAccounts_DeleteGremlinDatabase|
