Document: "kusto"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/azure-kusto/resource-manager/Microsoft.Kusto/stable/2019-05-15/kusto.json")

## Database

Class representing a Kusto database.

```puppet
azure_database {
  api_version => "api_version",
  cluster_name => "cluster_name",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_database_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for this operation. |
|cluster_name | String | true | The name of the Kusto cluster. |
|location | String | false | Resource location. |
|parameters | Hash | true | The database parameters supplied to the CreateOrUpdate operation. |
|properties | [DatabaseProperties](#databaseproperties) | false | The database properties. |
|resource_group_name | String | true | The name of the resource group containing the Kusto cluster. |
|subscription_id | String | true | The ID of the target subscription. |
        
## DatabaseProperties

Class representing the Kusto database properties.

```puppet
$azure_database_properties = {
  hotCachePeriod => "hotCachePeriod (optional)",
  softDeletePeriod => "softDeletePeriod (optional)",
  statistics => $azure_database_statistics
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|hotCachePeriod | String | false | The time the data should be kept in cache for fast queries in TimeSpan. |
|softDeletePeriod | String | false | The time the data should be kept before it stops being accessible to queries in TimeSpan. |
|statistics | [DatabaseStatistics](#databasestatistics) | false | The statistics of the database. |
        
## DatabaseStatistics

A class that contains database statistics information.

```puppet
$azure_database_statistics = {
  size => "size (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|size | Numeric | false | The database size - the total size of compressed data and index in bytes. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Database

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Kusto/clusters/%{cluster_name}/databases/%{database_name}`|Put|Creates or updates a database.|Databases_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Kusto/clusters/%{cluster_name}/databases/%{database_name}`|Get|Returns a database.|Databases_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Kusto/clusters/%{cluster_name}/databases`|Get|Returns the list of databases of the given Kusto cluster.|Databases_ListByCluster|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Kusto/clusters/%{cluster_name}/databases/%{database_name}`|Put|Creates or updates a database.|Databases_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Kusto/clusters/%{cluster_name}/databases/%{database_name}`|Delete|Deletes the database with the given name.|Databases_Delete|
