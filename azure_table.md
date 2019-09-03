Document: "cosmos-db"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/cosmos-db/resource-manager/Microsoft.DocumentDB/stable/2015-04-08/cosmos-db.json")

## Table

An Azure Cosmos DB Table.

```puppet
azure_table {
  account_name => "account_name",
  api_version => "api_version",
  create_update_table_parameters => "createUpdateTableParameters",
  location => "location (optional)",
  properties => $azure_table_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | Cosmos DB database account name. |
|api_version | String | true | Version of the API to be used with the client request. The current version is 2015-04-08. |
|create_update_table_parameters | Hash | true | The parameters to provide for the current Table. |
|location | String | false | The location of the resource group to which the resource belongs. |
|properties | [TableProperties](#tableproperties) | false | The properties of an Azure Cosmos DB Table |
|resource_group_name | String | true | Name of an Azure resource group. |
|subscription_id | String | true | Azure subscription ID. |
|tags | String | false |  |
        
## TableProperties

The properties of an Azure Cosmos Table

```puppet
$azure_table_properties = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Name of the Cosmos DB table |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Table

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/table/tables/%{table_name}`|Put|Create or update an Azure Cosmos DB Table|DatabaseAccounts_CreateUpdateTable|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/table/tables/%{table_name}`|Get|Gets the Tables under an existing Azure Cosmos DB database account with the provided name.|DatabaseAccounts_GetTable|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/table/tables`|Get|Lists the Tables under an existing Azure Cosmos DB database account.|DatabaseAccounts_ListTables|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/table/tables/%{table_name}`|Put|Create or update an Azure Cosmos DB Table|DatabaseAccounts_CreateUpdateTable|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}/apis/table/tables/%{table_name}`|Delete|Deletes an existing Azure Cosmos DB Table.|DatabaseAccounts_DeleteTable|
