Document: "mysql"
Path: "/root/specs/specification/mysql/resource-manager/Microsoft.DBforMySQL/stable/2017-12-01/mysql.json")

## Database

```puppet
azure_database {
  api_version => "api_version",
  id => "id (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_database_properties
  resource_group_name => "resource_group_name",
  server_name => "server_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the request. |
|id | String | false | Resource ID |
|name | String | false | Resource name. |
|parameters | Hash | true | The required parameters for creating or updating a database. |
|properties | [DatabaseProperties](#databaseproperties) | false | The properties of a database. |
|resource_group_name | String | true | The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal. |
|server_name | String | true | The name of the server. |
|subscription_id | String | true | The subscription ID that identifies an Azure subscription. |
|type | String | false | Resource type. |
        
## DatabaseProperties

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
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforMySQL/servers/%{server_name}/databases/%{database_name}`|Put|Creates a new database or updates an existing database.|Databases_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforMySQL/servers/%{server_name}/databases/%{database_name}`|Get|Gets information about a database.|Databases_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforMySQL/servers/%{server_name}/databases`|Get|List all the databases in a given server.|Databases_ListByServer|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforMySQL/servers/%{server_name}/databases/%{database_name}`|Put|Creates a new database or updates an existing database.|Databases_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforMySQL/servers/%{server_name}/databases/%{database_name}`|Delete|Deletes a database.|Databases_Delete|