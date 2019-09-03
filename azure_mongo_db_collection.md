Document: "cosmos-db"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/cosmos-db/resource-manager/Microsoft.DocumentDB/stable/2015-04-08/cosmos-db.json")

## MongoDBCollection

An Azure Cosmos DB MongoDB collection.

```puppet
azure_mongo_db_collection {
  account_name => "account_name",
  api_version => "api_version",
  collection_name => "collection_name",
  create_update_mongo_db_collection_parameters => "createUpdateMongoDBCollectionParameters",
  database_name => "database_name",
  location => "location (optional)",
  properties => $azure_mongo_db_collection_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | Cosmos DB database account name. |
|api_version | String | true | Version of the API to be used with the client request. The current version is 2015-04-08. |
|collection_name | String | true | Cosmos DB collection name. |
|create_update_mongo_db_collection_parameters | Hash | true | The parameters to provide for the current MongoDB Collection. |
|database_name | String | true | Cosmos DB database name. |
|location | String | false | The location of the resource group to which the resource belongs. |
|properties | [MongoDBCollectionProperties](#mongodbcollectionproperties) | false | The properties of an Azure Cosmos DB MongoDB collection |
|resource_group_name | String | true | Name of an Azure resource group. |
|subscription_id | String | true | Azure subscription ID. |
|tags | String | false |  |
        
## MongoDBCollectionProperties

The properties of an Azure Cosmos DB MongoDB collection

```puppet
$azure_mongo_db_collection_properties = {
  id => "id (optional)",
  indexes => "indexes (optional)",
  shardKey => "shardKey (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Name of the Cosmos DB MongoDB collection |
|indexes | Array | false | List of index keys |
|shardKey | String | false | A key-value pair of shard keys to be applied for the request. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the MongoDBCollection

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/mongodb/databases/%{database_name}/collections/%{collection_name}`|Put|Create or update an Azure Cosmos DB MongoDB Collection|DatabaseAccounts_CreateUpdateMongoDBCollection|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/mongodb/databases/%{database_name}/collections/%{collection_name}`|Get|Gets the MongoDB collection under an existing Azure Cosmos DB database account.|DatabaseAccounts_GetMongoDBCollection|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/mongodb/databases/%{database_name}/collections`|Get|Lists the MongoDB collection under an existing Azure Cosmos DB database account.|DatabaseAccounts_ListMongoDBCollections|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/mongodb/databases/%{database_name}/collections/%{collection_name}`|Put|Create or update an Azure Cosmos DB MongoDB Collection|DatabaseAccounts_CreateUpdateMongoDBCollection|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/mongodb/databases/%{database_name}/collections/%{collection_name}`|Delete|Deletes an existing Azure Cosmos DB MongoDB Collection.|DatabaseAccounts_DeleteMongoDBCollection|
