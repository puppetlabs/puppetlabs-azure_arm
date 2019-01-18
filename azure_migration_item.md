Document: "service"


Path: "/tmp/azure-rest-api-specs/specification/recoveryservicessiterecovery/resource-manager/Microsoft.RecoveryServices/stable/2018-01-10/service.json")

## MigrationItem

Migration item.

```puppet
azure_migration_item {
  api_version => "api_version",
  fabric_name => "fabric_name",
  input => "input",
  location => "location (optional)",
  properties => $azure_migration_item_properties
  protection_container_name => "protection_container_name",
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|fabric_name | String | true | Fabric name. |
|input | Hash | true | Enable migration input. |
|location | String | false | Resource Location |
|properties | [MigrationItemProperties](#migrationitemproperties) | false | The migration item properties. |
|protection_container_name | String | true | Protection container name. |
|resource_group_name | String | true | The name of the resource group where the recovery services vault is present. |
|resource_name | String | true | The name of the recovery services vault. |
|subscription_id | String | true | The subscription Id. |
        
## MigrationItemProperties

Migration item properties.

```puppet
$azure_migration_item_properties = {
  currentJob => $azure_current_job_details
  healthErrors => $azure_health_error
  providerSpecificDetails => $azure_migration_provider_specific_settings
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|currentJob | [CurrentJobDetails](#currentjobdetails) | false | The current job details. |
|healthErrors | [HealthError](#healtherror) | false | The list of health errors. |
|providerSpecificDetails | [MigrationProviderSpecificSettings](#migrationproviderspecificsettings) | false | The migration provider custom settings. |
        
## CurrentJobDetails

Current job details of the migration item.

```puppet
$azure_current_job_details = {
  jobId => "jobId (optional)",
  jobName => "jobName (optional)",
  startTime => "startTime (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|jobId | String | false | The ARM Id of the job being executed. |
|jobName | String | false | The job name. |
|startTime | String | false | The start time of the job. |
        
## HealthError

Health Error

```puppet
$azure_health_error = {
  creationTimeUtc => "creationTimeUtc (optional)",
  entityId => "entityId (optional)",
  errorCategory => "errorCategory (optional)",
  errorCode => "errorCode (optional)",
  errorLevel => "errorLevel (optional)",
  errorMessage => "errorMessage (optional)",
  errorSource => "errorSource (optional)",
  errorType => "errorType (optional)",
  innerHealthErrors => $azure_inner_health_error
  possibleCauses => "possibleCauses (optional)",
  recommendedAction => "recommendedAction (optional)",
  recoveryProviderErrorMessage => "recoveryProviderErrorMessage (optional)",
  summaryMessage => "summaryMessage (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|creationTimeUtc | String | false | Error creation time (UTC) |
|entityId | String | false | ID of the entity. |
|errorCategory | String | false | Category of error. |
|errorCode | String | false | Error code. |
|errorLevel | String | false | Level of error. |
|errorMessage | String | false | Error message. |
|errorSource | String | false | Source of error. |
|errorType | String | false | Type of error. |
|innerHealthErrors | [InnerHealthError](#innerhealtherror) | false | The inner health errors. HealthError having a list of HealthError as child errors is problematic. InnerHealthError is used because this will prevent an infinite loop of structures when Hydra tries to auto-generate the contract. We are exposing the related health errors as inner health errors and all API consumers can utilize this in the same fashion as Exception -&gt; InnerException. |
|possibleCauses | String | false | Possible causes of error. |
|recommendedAction | String | false | Recommended action to resolve error. |
|recoveryProviderErrorMessage | String | false | DRA error message. |
|summaryMessage | String | false | Summary message of the entity. |
        
## InnerHealthError

Implements InnerHealthError class. HealthError object has a list of InnerHealthErrors as child errors. InnerHealthError is used because this will prevent an infinite loop of structures when Hydra tries to auto-generate the contract. We are exposing the related health errors as inner health errors and all API consumers can utilize this in the same fashion as Exception -&gt; InnerException.

```puppet
$azure_inner_health_error = {
  creationTimeUtc => "creationTimeUtc (optional)",
  entityId => "entityId (optional)",
  errorCategory => "errorCategory (optional)",
  errorCode => "errorCode (optional)",
  errorLevel => "errorLevel (optional)",
  errorMessage => "errorMessage (optional)",
  errorSource => "errorSource (optional)",
  errorType => "errorType (optional)",
  possibleCauses => "possibleCauses (optional)",
  recommendedAction => "recommendedAction (optional)",
  recoveryProviderErrorMessage => "recoveryProviderErrorMessage (optional)",
  summaryMessage => "summaryMessage (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|creationTimeUtc | String | false | Error creation time (UTC) |
|entityId | String | false | ID of the entity. |
|errorCategory | String | false | Category of error. |
|errorCode | String | false | Error code. |
|errorLevel | String | false | Level of error. |
|errorMessage | String | false | Error message. |
|errorSource | String | false | Source of error. |
|errorType | String | false | Type of error. |
|possibleCauses | String | false | Possible causes of error. |
|recommendedAction | String | false | Recommended action to resolve error. |
|recoveryProviderErrorMessage | String | false | DRA error message. |
|summaryMessage | String | false | Summary message of the entity. |
        
## MigrationProviderSpecificSettings

Migration provider specific settings.

```puppet
$azure_migration_provider_specific_settings = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the MigrationItem

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationProtectionContainers/%{protection_container_name}/replicationMigrationItems/%{migration_item_name}`|Put|The operation to create an ASR migration item (enable migration).|ReplicationMigrationItems_Create|
|List - list all|``||||
|List - get one|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationProtectionContainers/%{protection_container_name}/replicationMigrationItems/%{migration_item_name}`|Get||ReplicationMigrationItems_Get|
|List - get list using params|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationMigrationItems`|Get||ReplicationMigrationItems_List|
|Update|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationProtectionContainers/%{protection_container_name}/replicationMigrationItems/%{migration_item_name}`|Put|The operation to create an ASR migration item (enable migration).|ReplicationMigrationItems_Create|
|Delete|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationProtectionContainers/%{protection_container_name}/replicationMigrationItems/%{migration_item_name}`|Delete|The operation to delete an ASR migration item.|ReplicationMigrationItems_Delete|
