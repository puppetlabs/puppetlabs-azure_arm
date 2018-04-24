Document: "mysql"
Path: "/root/specs/specification/mysql/resource-manager/Microsoft.DBforMySQL/stable/2017-12-01/mysql.json")

## Server

```puppet
azure_server {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_server_properties
  resource_group_name => "resource_group_name",
  sku => $azure_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the request. |
|id | String | false | Resource ID |
|location | String | false | The location the resource resides in. |
|name | String | false | Resource name. |
|parameters | Hash | true | The required parameters for creating or updating a server. |
|properties | [ServerProperties](#serverproperties) | false | Properties of the server. |
|resource_group_name | String | true | The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal. |
|sku | [Sku](#sku) | false | The SKU (pricing tier) of the server. |
|subscription_id | String | true | The subscription ID that identifies an Azure subscription. |
|tags | Hash | false | Application-specific metadata in the form of key-value pairs. |
|type | String | false | Resource type. |
        
## ServerProperties

```puppet
$azure_server_properties = {
  administratorLogin => "administratorLogin (optional)",
  earliestRestoreDate => "earliestRestoreDate (optional)",
  fullyQualifiedDomainName => "fullyQualifiedDomainName (optional)",
  sslEnforcement => $azure_ssl_enforcement
  storageProfile => $azure_storage_profile
  userVisibleState => "userVisibleState (optional)",
  version => $azure_server_version
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|administratorLogin | String | false | The administrator's login name of a server. Can only be specified when the server is being created (and is required for creation). |
|earliestRestoreDate | String | false | Earliest restore point creation time (ISO8601 format) |
|fullyQualifiedDomainName | String | false | The fully qualified domain name of a server. |
|sslEnforcement | [SslEnforcement](#sslenforcement) | false | Enable ssl enforcement or not when connect to server. |
|storageProfile | [StorageProfile](#storageprofile) | false | Storage profile of a server. |
|userVisibleState | String | false | A state of a server that is visible to user. |
|version | [ServerVersion](#serverversion) | false | Server version. |
        
## SslEnforcement

```puppet
$azure_ssl_enforcement = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## StorageProfile

```puppet
$azure_storage_profile = {
  backupRetentionDays => "1234 (optional)",
  geoRedundantBackup => "geoRedundantBackup (optional)",
  storageMB => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|backupRetentionDays | Integer | false | Backup retention days for the server. |
|geoRedundantBackup | String | false | Enable Geo-redundant or not for server backup. |
|storageMB | Integer | false | Max storage allowed for a server. |
        
## ServerVersion

```puppet
$azure_server_version = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## Sku

```puppet
$azure_sku = {
  capacity => "1234 (optional)",
  family => "family (optional)",
  name => "name (optional)",
  size => "size (optional)",
  tier => "tier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|capacity | Integer | false | The scale up/out capacity, representing server's compute units. |
|family | String | false | The family of hardware. |
|name | String | false | The name of the sku, typically, tier + family + cores, e.g. B_Gen4_1, GP_Gen5_8. |
|size | String | false | The size code, to be interpreted by resource as appropriate. |
|tier | String | false | The tier of the particular SKU, e.g. Basic. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Server

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforMySQL/servers/%{server_name}`|Put|Creates a new server or updates an existing server. The update action will overwrite the existing server.|Servers_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.DBforMySQL/servers`|Get|List all the servers in a given subscription.|Servers_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforMySQL/servers/%{server_name}`|Get|Gets information about a server.|Servers_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.DBforMySQL/servers`|Get|List all the servers in a given subscription.|Servers_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforMySQL/servers/%{server_name}`|Put|Creates a new server or updates an existing server. The update action will overwrite the existing server.|Servers_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DBforMySQL/servers/%{server_name}`|Delete|Deletes a server.|Servers_Delete|