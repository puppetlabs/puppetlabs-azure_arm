Document: "cosmos-db"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/cosmos-db/resource-manager/Microsoft.DocumentDB/stable/2015-04-08/cosmos-db.json")

## CassandraTable

An Azure Cosmos DB Cassandra table.

```puppet
azure_cassandra_table {
  account_name => "account_name",
  api_version => "api_version",
  create_update_cassandra_table_parameters => "createUpdateCassandraTableParameters",
  keyspace_name => "keyspace_name",
  location => "location (optional)",
  properties => $azure_cassandra_table_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  table_name => "table_name",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | Cosmos DB database account name. |
|api_version | String | true | Version of the API to be used with the client request. The current version is 2015-04-08. |
|create_update_cassandra_table_parameters | Hash | true | The parameters to provide for the current Cassandra Table. |
|keyspace_name | String | true | Cosmos DB keyspace name. |
|location | String | false | The location of the resource group to which the resource belongs. |
|properties | [CassandraTableProperties](#cassandratableproperties) | false | The properties of an Azure Cosmos DB Cassandra table |
|resource_group_name | String | true | Name of an Azure resource group. |
|subscription_id | String | true | Azure subscription ID. |
|table_name | String | true | Cosmos DB table name. |
|tags | String | false |  |
        
## CassandraTableProperties

The properties of an Azure Cosmos DB Cassandra table

```puppet
$azure_cassandra_table_properties = {
  defaultTtl => "1234 (optional)",
  id => "id (optional)",
  schema => "schema (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|defaultTtl | Integer | false | Time to live of the Cosmos DB Cassandra table |
|id | String | false | Name of the Cosmos DB Cassandra table |
|schema | String | false | Schema of the Cosmos DB Cassandra table |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the CassandraTable

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/cassandra/keyspaces/%{keyspace_name}/tables/%{table_name}`|Put|Create or update an Azure Cosmos DB Cassandra Table|DatabaseAccounts_CreateUpdateCassandraTable|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/cassandra/keyspaces/%{keyspace_name}/tables/%{table_name}`|Get|Gets the Cassandra table under an existing Azure Cosmos DB database account.|DatabaseAccounts_GetCassandraTable|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/cassandra/keyspaces/%{keyspace_name}/tables`|Get|Lists the Cassandra table under an existing Azure Cosmos DB database account.|DatabaseAccounts_ListCassandraTables|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/cassandra/keyspaces/%{keyspace_name}/tables/%{table_name}`|Put|Create or update an Azure Cosmos DB Cassandra Table|DatabaseAccounts_CreateUpdateCassandraTable|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/cassandra/keyspaces/%{keyspace_name}/tables/%{table_name}`|Delete|Deletes an existing Azure Cosmos DB Cassandra table.|DatabaseAccounts_DeleteCassandraTable|
