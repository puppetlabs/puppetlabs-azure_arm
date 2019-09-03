Document: "cosmos-db"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/cosmos-db/resource-manager/Microsoft.DocumentDB/stable/2015-04-08/cosmos-db.json")

## CassandraKeyspace

An Azure Cosmos DB Cassandra keyspace.

```puppet
azure_cassandra_keyspace {
  account_name => "account_name",
  api_version => "api_version",
  create_update_cassandra_keyspace_parameters => "createUpdateCassandraKeyspaceParameters",
  keyspace_name => "keyspace_name",
  location => "location (optional)",
  properties => $azure_cassandra_keyspace_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | Cosmos DB database account name. |
|api_version | String | true | Version of the API to be used with the client request. The current version is 2015-04-08. |
|create_update_cassandra_keyspace_parameters | Hash | true | The parameters to provide for the current Cassandra keyspace. |
|keyspace_name | String | true | Cosmos DB keyspace name. |
|location | String | false | The location of the resource group to which the resource belongs. |
|properties | [CassandraKeyspaceProperties](#cassandrakeyspaceproperties) | false | The properties of an Azure Cosmos DB Cassandra keyspace |
|resource_group_name | String | true | Name of an Azure resource group. |
|subscription_id | String | true | Azure subscription ID. |
|tags | String | false |  |
        
## CassandraKeyspaceProperties

The properties of an Azure Cosmos DB Cassandra keyspace

```puppet
$azure_cassandra_keyspace_properties = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Name of the Cosmos DB Cassandra keyspace |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the CassandraKeyspace

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/cassandra/keyspaces/%{keyspace_name}`|Put|Create or update an Azure Cosmos DB Cassandra keyspace|DatabaseAccounts_CreateUpdateCassandraKeyspace|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/cassandra/keyspaces/%{keyspace_name}`|Get|Gets the Cassandra keyspaces under an existing Azure Cosmos DB database account with the provided name.|DatabaseAccounts_GetCassandraKeyspace|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/cassandra/keyspaces`|Get|Lists the Cassandra keyspaces under an existing Azure Cosmos DB database account.|DatabaseAccounts_ListCassandraKeyspaces|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/cassandra/keyspaces/%{keyspace_name}`|Put|Create or update an Azure Cosmos DB Cassandra keyspace|DatabaseAccounts_CreateUpdateCassandraKeyspace|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/cassandra/keyspaces/%{keyspace_name}`|Delete|Deletes an existing Azure Cosmos DB Cassandra keyspace.|DatabaseAccounts_DeleteCassandraKeyspace|
