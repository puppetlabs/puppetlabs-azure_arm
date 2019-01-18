Document: "serverAzureADAdministrators"


Path: "/tmp/azure-rest-api-specs/specification/sql/resource-manager/Microsoft.Sql/stable/2014-04-01/serverAzureADAdministrators.json")

## ServerAzureADAdministrator

An server Active Directory Administrator.

```puppet
azure_server_azure_ad_administrator {
  administrator_name => "administrator_name",
  api_version => "api_version",
  properties => $azure_server_administrator_properties
  resource_group_name => "resource_group_name",
  server_name => "server_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|administrator_name | String | true | Name of the server administrator resource. |
|api_version | String | true | The API version to use for the request. |
|properties | [ServerAdministratorProperties](#serveradministratorproperties) | false | The properties of the resource. |
|resource_group_name | String | true | The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal. |
|server_name | String | true | The name of the server. |
|subscription_id | String | true | The subscription ID that identifies an Azure subscription. |
        
## ServerAdministratorProperties

The properties of an server Administrator.

```puppet
$azure_server_administrator_properties = {
  administratorType => "administratorType",
  login => "login",
  sid => "sid",
  tenantId => "tenantId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|administratorType | String | true | The type of administrator. |
|login | String | true | The server administrator login value. |
|sid | String | true | The server administrator Sid (Secure ID). |
|tenantId | String | true | The server Active Directory Administrator tenant id. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ServerAzureADAdministrator

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/administrators/%{administrator_name}`|Put|Creates a new Server Active Directory Administrator or updates an existing server Active Directory Administrator.|ServerAzureADAdministrators_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/administrators/%{administrator_name}`|Get|Returns an server Administrator.|ServerAzureADAdministrators_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/administrators`|Get|Returns a list of server Administrators.|ServerAzureADAdministrators_ListByServer|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/administrators/%{administrator_name}`|Put|Creates a new Server Active Directory Administrator or updates an existing server Active Directory Administrator.|ServerAzureADAdministrators_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/administrators/%{administrator_name}`|Delete|Deletes an existing server Active Directory Administrator.|ServerAzureADAdministrators_Delete|
