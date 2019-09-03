Document: "cosmos-db"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/cosmos-db/resource-manager/Microsoft.DocumentDB/stable/2015-04-08/cosmos-db.json")

## MongoDBDatabase

An Azure Cosmos DB MongoDB database.

```puppet
azure_mongo_db_database {
  account_name => "account_name",
  api_version => "api_version",
  create_update_mongo_db_database_parameters => "createUpdateMongoDBDatabaseParameters",
  database_name => "database_name",
  location => "location (optional)",
  properties => $azure_mongo_db_database_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | Cosmos DB database account name. |
|api_version | String | true | Version of the API to be used with the client request. The current version is 2015-04-08. |
|create_update_mongo_db_database_parameters | Hash | true | The parameters to provide for the current MongoDB database. |
|database_name | String | true | Cosmos DB database name. |
|location | String | false | The location of the resource group to which the resource belongs. |
|properties | [MongoDBDatabaseProperties](#mongodbdatabaseproperties) | false | The properties of an Azure Cosmos DB MongoDB database |
|resource_group_name | String | true | Name of an Azure resource group. |
|subscription_id | String | true | Azure subscription ID. |
|tags | String | false |  |
        
## MongoDBDatabaseProperties

The properties of an Azure Cosmos DB MongoDB database

```puppet
$azure_mongo_db_database_properties = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Name of the Cosmos DB MongoDB database |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the MongoDBDatabase

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/mongodb/databases/%{database_name}`|Put|Create or updates Azure Cosmos DB MongoDB database|DatabaseAccounts_CreateUpdateMongoDBDatabase|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/mongodb/databases/%{database_name}`|Get|Gets the MongoDB databases under an existing Azure Cosmos DB database account with the provided name.|DatabaseAccounts_GetMongoDBDatabase|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/mongodb/databases`|Get|Lists the MongoDB databases under an existing Azure Cosmos DB database account.|DatabaseAccounts_ListMongoDBDatabases|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/mongodb/databases/%{database_name}`|Put|Create or updates Azure Cosmos DB MongoDB database|DatabaseAccounts_CreateUpdateMongoDBDatabase|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/mongodb/databases/%{database_name}`|Delete|Deletes an existing Azure Cosmos DB MongoDB database.|DatabaseAccounts_DeleteMongoDBDatabase|
