Document: "elasticPools"


Path: "/tmp/azure-rest-api-specs/specification/sql/resource-manager/Microsoft.Sql/stable/2014-04-01/elasticPools.json")

## ElasticPool

Represents a database elastic pool.

```puppet
azure_elastic_pool {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_elastic_pool_properties
  resource_group_name => "resource_group_name",
  server_name => "server_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the request. |
|location | String | false | Resource location. |
|parameters | Hash | true | The required parameters for creating or updating an elastic pool. |
|properties | [ElasticPoolProperties](#elasticpoolproperties) | false | The properties representing the resource. |
|resource_group_name | String | true | The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal. |
|server_name | String | true | The name of the server. |
|subscription_id | String | true | The subscription ID that identifies an Azure subscription. |
|tags | Hash | false | Resource tags. |
        
## ElasticPoolProperties

Represents the properties of an elastic pool.

```puppet
$azure_elastic_pool_properties = {
  databaseDtuMax => "1234 (optional)",
  databaseDtuMin => "1234 (optional)",
  dtu => "1234 (optional)",
  edition => "edition (optional)",
  storageMB => "1234 (optional)",
  zoneRedundant => "zoneRedundant (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|databaseDtuMax | Integer | false | The maximum DTU any one database can consume. |
|databaseDtuMin | Integer | false | The minimum DTU all databases are guaranteed. |
|dtu | Integer | false | The total shared DTU for the database elastic pool. |
|edition | String | false | The edition of the elastic pool. |
|storageMB | Integer | false | Gets storage limit for the database elastic pool in MB. |
|zoneRedundant | Boolean | false | Whether or not this database elastic pool is zone redundant, which means the replicas of this database will be spread across multiple availability zones. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ElasticPool

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/elasticPools/%{elastic_pool_name}`|Put|Creates a new elastic pool or updates an existing elastic pool.|ElasticPools_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/elasticPools/%{elastic_pool_name}`|Get|Gets an elastic pool.|ElasticPools_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/elasticPools`|Get|Returns a list of elastic pools in a server.|ElasticPools_ListByServer|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/elasticPools/%{elastic_pool_name}`|Put|Creates a new elastic pool or updates an existing elastic pool.|ElasticPools_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/elasticPools/%{elastic_pool_name}`|Delete|Deletes the elastic pool.|ElasticPools_Delete|
