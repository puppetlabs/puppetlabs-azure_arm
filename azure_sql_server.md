Document: "servers"


Path: "/tmp/azure-rest-api-specs/specification/sql/resource-manager/Microsoft.Sql/stable/2014-04-01/servers.json")

## Server

Represents a server.

```puppet
azure_sql_server {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_server_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the request. |
|location | String | false | Resource location. |
|parameters | Hash | true | The required parameters for creating or updating a server. |
|properties | [ServerProperties](#serverproperties) | false | Represents the properties of the resource. |
|resource_group_name | String | true | The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal. |
|subscription_id | String | true | The subscription ID that identifies an Azure subscription. |
|tags | Hash | false | Resource tags. |
        
## ServerProperties

Represents the properties of a server.

```puppet
$azure_server_properties = {
  administratorLogin => "administratorLogin (optional)",
  administratorLoginPassword => "administratorLoginPassword (optional)",
  version => "version (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|administratorLogin | String | false | Administrator username for the server. Can only be specified when the server is being created (and is required for creation). |
|administratorLoginPassword | String | false | The administrator login password (required for server creation). |
|version | String | false | The version of the server. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Server

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}`|Put|Creates or updates a new server.|Servers_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Sql/servers`|Get|Returns a list of servers.|Servers_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}`|Get|Gets a server.|Servers_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Sql/servers`|Get|Returns a list of servers.|Servers_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}`|Put|Creates or updates a new server.|Servers_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}`|Delete|Deletes a SQL server.|Servers_Delete|
