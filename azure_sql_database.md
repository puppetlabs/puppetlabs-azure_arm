Document: "databases"


Path: "/tmp/azure-rest-api-specs/specification/sql/resource-manager/Microsoft.Sql/stable/2014-04-01/databases.json")

## Database

Represents a database.

```puppet
azure_sql_database {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_database_properties
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
|parameters | Hash | true | The required parameters for creating or updating a database. |
|properties | [DatabaseProperties](#databaseproperties) | false | The properties representing the resource. |
|resource_group_name | String | true | The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal. |
|server_name | String | true | The name of the server. |
|subscription_id | String | true | The subscription ID that identifies an Azure subscription. |
|tags | Hash | false | Resource tags. |
        
## DatabaseProperties

Represents the properties of a database.

```puppet
$azure_database_properties = {
  collation => "collation (optional)",
  createMode => "createMode (optional)",
  edition => "edition (optional)",
  elasticPoolName => "elasticPoolName (optional)",
  maxSizeBytes => "maxSizeBytes (optional)",
  readScale => "readScale (optional)",
  recommendedIndex => $azure_recommended_index
  recoveryServicesRecoveryPointResourceId => "recoveryServicesRecoveryPointResourceId (optional)",
  requestedServiceObjectiveId => "requestedServiceObjectiveId (optional)",
  requestedServiceObjectiveName => "requestedServiceObjectiveName (optional)",
  restorePointInTime => "restorePointInTime (optional)",
  sampleName => "sampleName (optional)",
  serviceTierAdvisors => $azure_service_tier_advisor
  sourceDatabaseDeletionDate => "sourceDatabaseDeletionDate (optional)",
  sourceDatabaseId => "sourceDatabaseId (optional)",
  transparentDataEncryption => $azure_transparent_data_encryption
  zoneRedundant => "zoneRedundant (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|collation | String | false | The collation of the database. If createMode is not Default, this value is ignored. |
|createMode | String | false | Specifies the mode of database creation.Default: regular database creation.Copy: creates a database as a copy of an existing database. sourceDatabaseId must be specified as the resource ID of the source database.OnlineSecondary/NonReadableSecondary: creates a database as a (readable or nonreadable) secondary replica of an existing database. sourceDatabaseId must be specified as the resource ID of the existing primary database.PointInTimeRestore: Creates a database by restoring a point in time backup of an existing database. sourceDatabaseId must be specified as the resource ID of the existing database, and restorePointInTime must be specified.Recovery: Creates a database by restoring a geo-replicated backup. sourceDatabaseId must be specified as the recoverable database resource ID to restore.Restore: Creates a database by restoring a backup of a deleted database. sourceDatabaseId must be specified. If sourceDatabaseId is the database's original resource ID, then sourceDatabaseDeletionDate must be specified. Otherwise sourceDatabaseId must be the restorable dropped database resource ID and sourceDatabaseDeletionDate is ignored. restorePointInTime may also be specified to restore from an earlier point in time.RestoreLongTermRetentionBackup: Creates a database by restoring from a long term retention vault. recoveryServicesRecoveryPointResourceId must be specified as the recovery point resource ID.Copy, NonReadableSecondary, OnlineSecondary and RestoreLongTermRetentionBackup are not supported for DataWarehouse edition. |
|edition | String | false | The edition of the database. The DatabaseEditions enumeration contains all the valid editions. If createMode is NonReadableSecondary or OnlineSecondary, this value is ignored. To see possible values, query the capabilities API (/subscriptions/{subscriptionId}/providers/Microsoft.Sql/locations/{locationID}/capabilities) referred to by operationId: 'Capabilities_ListByLocation.' or use the Azure CLI command `az sql db list-editions -l westus --query [].name` . |
|elasticPoolName | String | false | The name of the elastic pool the database is in. If elasticPoolName and requestedServiceObjectiveName are both updated, the value of requestedServiceObjectiveName is ignored. Not supported for DataWarehouse edition. |
|maxSizeBytes | String | false | The max size of the database expressed in bytes. If createMode is not Default, this value is ignored. To see possible values, query the capabilities API (/subscriptions/{subscriptionId}/providers/Microsoft.Sql/locations/{locationID}/capabilities) referred to by operationId: 'Capabilities_ListByLocation.' |
|readScale | String | false | Conditional. If the database is a geo-secondary, readScale indicates whether read-only connections are allowed to this database or not. Not supported for DataWarehouse edition. |
|recommendedIndex | [RecommendedIndex](#recommendedindex) | false | The recommended indices for this database. |
|recoveryServicesRecoveryPointResourceId | String | false | Conditional. If createMode is RestoreLongTermRetentionBackup, then this value is required. Specifies the resource ID of the recovery point to restore from. |
|requestedServiceObjectiveId | String | false | The configured service level objective ID of the database. This is the service level objective that is in the process of being applied to the database. Once successfully updated, it will match the value of currentServiceObjectiveId property. If requestedServiceObjectiveId and requestedServiceObjectiveName are both updated, the value of requestedServiceObjectiveId overrides the value of requestedServiceObjectiveName. To see possible values, query the capabilities API (/subscriptions/{subscriptionId}/providers/Microsoft.Sql/locations/{locationID}/capabilities) referred to by operationId: 'Capabilities_ListByLocation.' or use the Azure CLI command `az sql db list-editions --location <location> --query [].supportedServiceLevelObjectives[].name` . |
|requestedServiceObjectiveName | String | false | The name of the configured service level objective of the database. This is the service level objective that is in the process of being applied to the database. Once successfully updated, it will match the value of serviceLevelObjective property. To see possible values, query the capabilities API (/subscriptions/{subscriptionId}/providers/Microsoft.Sql/locations/{locationID}/capabilities) referred to by operationId: 'Capabilities_ListByLocation.' or use the Azure CLI command `az sql db list-editions --location <location> --query [].supportedServiceLevelObjectives[].name` . |
|restorePointInTime | String | false | Conditional. If createMode is PointInTimeRestore, this value is required. If createMode is Restore, this value is optional. Specifies the point in time (ISO8601 format) of the source database that will be restored to create the new database. Must be greater than or equal to the source database's earliestRestoreDate value. |
|sampleName | String | false | Indicates the name of the sample schema to apply when creating this database. If createMode is not Default, this value is ignored. Not supported for DataWarehouse edition. |
|serviceTierAdvisors | [ServiceTierAdvisor](#servicetieradvisor) | false | The list of service tier advisors for this database. Expanded property |
|sourceDatabaseDeletionDate | String | false | Conditional. If createMode is Restore and sourceDatabaseId is the deleted database's original resource id when it existed (as opposed to its current restorable dropped database id), then this value is required. Specifies the time that the database was deleted. |
|sourceDatabaseId | String | false | Conditional. If createMode is Copy, NonReadableSecondary, OnlineSecondary, PointInTimeRestore, Recovery, or Restore, then this value is required. Specifies the resource ID of the source database. If createMode is NonReadableSecondary or OnlineSecondary, the name of the source database must be the same as the new database being created. |
|transparentDataEncryption | [TransparentDataEncryption](#transparentdataencryption) | false | The transparent data encryption info for this database. |
|zoneRedundant | Boolean | false | Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones. |
        
## RecommendedIndex

Represents a database recommended index.

```puppet
$azure_recommended_index = {
  properties => $azure_recommended_index_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|properties | [RecommendedIndexProperties](#recommendedindexproperties) | false | The properties representing the resource. |
        
## RecommendedIndexProperties

Represents the properties of a database recommended index.

```puppet
$azure_recommended_index_properties = {
  estimatedImpact => $azure_operation_impact
  reportedImpact => $azure_operation_impact
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|estimatedImpact | [OperationImpact](#operationimpact) | false | The estimated impact of doing recommended index action. |
|reportedImpact | [OperationImpact](#operationimpact) | false | The values reported after index action is complete. |
        
## OperationImpact

The impact of an operation, both in absolute and relative terms.

```puppet
$azure_operation_impact = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
## ServiceTierAdvisor

Represents a Service Tier Advisor.

```puppet
$azure_service_tier_advisor = {
  properties => $azure_service_tier_advisor_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|properties | [ServiceTierAdvisorProperties](#servicetieradvisorproperties) | false | The properties representing the resource. |
        
## ServiceTierAdvisorProperties

Represents the properties of a Service Tier Advisor.

```puppet
$azure_service_tier_advisor_properties = {
  serviceLevelObjectiveUsageMetrics => $azure_slo_usage_metric
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|serviceLevelObjectiveUsageMetrics | [SloUsageMetric](#slousagemetric) | false | Gets or sets serviceLevelObjectiveUsageMetrics for the service tier advisor. |
        
## SloUsageMetric

A Slo Usage Metric.

```puppet
$azure_slo_usage_metric = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## TransparentDataEncryption

Represents a database transparent data encryption configuration.

```puppet
$azure_transparent_data_encryption = {
  properties => $azure_transparent_data_encryption_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|properties | [TransparentDataEncryptionProperties](#transparentdataencryptionproperties) | false | Represents the properties of the resource. |
        
## TransparentDataEncryptionProperties

Represents the properties of a database transparent data encryption.

```puppet
$azure_transparent_data_encryption_properties = {
  status => "status (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|status | String | false | The status of the database transparent data encryption. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Database

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/databases/%{database_name}`|Put|Creates a new database or updates an existing database.|Databases_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/databases/%{database_name}`|Get|Gets a database.|Databases_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/recommendedElasticPools/%{recommended_elastic_pool_name}/databases`|Get|Returns a list of databases inside a recommended elastic pool.|Databases_ListByRecommendedElasticPool|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/databases/%{database_name}`|Put|Creates a new database or updates an existing database.|Databases_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/databases/%{database_name}`|Delete|Deletes a database.|Databases_Delete|
