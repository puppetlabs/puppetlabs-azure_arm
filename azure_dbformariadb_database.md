Document: "mariadb"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/mariadb/resource-manager/Microsoft.DBforMariaDB/stable/2018-06-01/mariadb.json")

## Database

Represents a Database.

```puppet
azure_dbformariadb_database {
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_database_properties
  resource_group_name => "resource_group_name",
  server_name => "server_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the request. |
|parameters | Hash | true | The required parameters for creating or updating a database. |
|properties | [DatabaseProperties](#databaseproperties) | false | The properties of a database. |
|resource_group_name | String | true | The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal. |
|server_name | String | true | The name of the server. |
|subscription_id | String | true | The subscription ID that identifies an Azure subscription. |
        
## DatabaseProperties

The properties of a database.

```puppet
$azure_database_properties = {
  charset => "charset (optional)",
  collation => "collation (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|charset | String | false | The charset of the database. |
|collation | String | false | The collation of the database. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Database

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforMariaDB/servers/%{server_name}/databases/%{database_name}`|Put|Creates a new database or updates an existing database.|Databases_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforMariaDB/servers/%{server_name}/databases/%{database_name}`|Get|Gets information about a database.|Databases_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforMariaDB/servers/%{server_name}/databases`|Get|List all the databases in a given server.|Databases_ListByServer|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforMariaDB/servers/%{server_name}/databases/%{database_name}`|Put|Creates a new database or updates an existing database.|Databases_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforMariaDB/servers/%{server_name}/databases/%{database_name}`|Delete|Deletes a database.|Databases_Delete|
