Document: "service"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/recoveryservicessiterecovery/resource-manager/Microsoft.RecoveryServices/stable/2018-01-10/service.json")

## ReplicationProtectedItem

Replication protected item.

```puppet
azure_replication_protected_item {
  api_version => "api_version",
  fabric_name => "fabric_name",
  input => "input",
  location => "location (optional)",
  properties => $azure_replication_protected_item_properties
  protection_container_name => "protection_container_name",
  replicated_protected_item_name => "replicated_protected_item_name",
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  subscription_id => "subscription_id",
  update_mobility_service_request => "updateMobilityServiceRequest",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|fabric_name | String | true | Name of the fabric. |
|input | Hash | true | Enable Protection Input. |
|location | String | false | Resource Location |
|properties | [ReplicationProtectedItemProperties](#replicationprotecteditemproperties) | false | The custom data. |
|protection_container_name | String | true | Protection container name. |
|replicated_protected_item_name | String | true | A name for the replication protected item. |
|resource_group_name | String | true | The name of the resource group where the recovery services vault is present. |
|resource_name | String | true | The name of the recovery services vault. |
|subscription_id | String | true | The subscription Id. |
|update_mobility_service_request | Hash | true | Request to update the mobility service on the protected item. |
        
## ReplicationProtectedItemProperties

Replication protected item custom data details.

```puppet
$azure_replication_protected_item_properties = {
  activeLocation => "activeLocation (optional)",
  allowedOperations => "allowedOperations (optional)",
  currentScenario => $azure_current_scenario_details
  failoverHealth => "failoverHealth (optional)",
  failoverRecoveryPointId => "failoverRecoveryPointId (optional)",
  friendlyName => "friendlyName (optional)",
  healthErrors => $azure_health_error
  lastSuccessfulFailoverTime => "lastSuccessfulFailoverTime (optional)",
  lastSuccessfulTestFailoverTime => "lastSuccessfulTestFailoverTime (optional)",
  policyFriendlyName => "policyFriendlyName (optional)",
  policyId => "policyId (optional)",
  primaryFabricFriendlyName => "primaryFabricFriendlyName (optional)",
  primaryFabricProvider => "primaryFabricProvider (optional)",
  primaryProtectionContainerFriendlyName => "primaryProtectionContainerFriendlyName (optional)",
  protectableItemId => "protectableItemId (optional)",
  protectedItemType => "protectedItemType (optional)",
  protectionState => "protectionState (optional)",
  protectionStateDescription => "protectionStateDescription (optional)",
  providerSpecificDetails => $azure_replication_provider_specific_settings
  recoveryContainerId => "recoveryContainerId (optional)",
  recoveryFabricFriendlyName => "recoveryFabricFriendlyName (optional)",
  recoveryFabricId => "recoveryFabricId (optional)",
  recoveryProtectionContainerFriendlyName => "recoveryProtectionContainerFriendlyName (optional)",
  recoveryServicesProviderId => "recoveryServicesProviderId (optional)",
  replicationHealth => "replicationHealth (optional)",
  testFailoverState => "testFailoverState (optional)",
  testFailoverStateDescription => "testFailoverStateDescription (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|activeLocation | String | false | The Current active location of the PE. |
|allowedOperations | Array | false | The allowed operations on the Replication protected item. |
|currentScenario | [CurrentScenarioDetails](#currentscenariodetails) | false | The current scenario. |
|failoverHealth | String | false | The consolidated failover health for the VM. |
|failoverRecoveryPointId | String | false | The recovery point ARM Id to which the Vm was failed over. |
|friendlyName | String | false | The name. |
|healthErrors | [HealthError](#healtherror) | false | List of health errors. |
|lastSuccessfulFailoverTime | String | false | The Last successful failover time. |
|lastSuccessfulTestFailoverTime | String | false | The Last successful test failover time. |
|policyFriendlyName | String | false | The name of Policy governing this PE. |
|policyId | String | false | The ID of Policy governing this PE. |
|primaryFabricFriendlyName | String | false | The friendly name of the primary fabric. |
|primaryFabricProvider | String | false | The fabric provider of the primary fabric. |
|primaryProtectionContainerFriendlyName | String | false | The name of primary protection container friendly name. |
|protectableItemId | String | false | The protected item ARM Id. |
|protectedItemType | String | false | The type of protected item type. |
|protectionState | String | false | The protection status. |
|protectionStateDescription | String | false | The protection state description. |
|providerSpecificDetails | [ReplicationProviderSpecificSettings](#replicationproviderspecificsettings) | false | The Replication provider custom settings. |
|recoveryContainerId | String | false | The recovery container Id. |
|recoveryFabricFriendlyName | String | false | The friendly name of recovery fabric. |
|recoveryFabricId | String | false | The Arm Id of recovery fabric. |
|recoveryProtectionContainerFriendlyName | String | false | The name of recovery container friendly name. |
|recoveryServicesProviderId | String | false | The recovery provider ARM Id. |
|replicationHealth | String | false | The consolidated protection health for the VM taking any issues with SRS as well as all the replication units associated with the VM's replication group into account. This is a string representation of the ProtectionHealth enumeration. |
|testFailoverState | String | false | The Test failover state. |
|testFailoverStateDescription | String | false | The Test failover state description. |
        
## CurrentScenarioDetails

Current scenario details of the protected entity.

```puppet
$azure_current_scenario_details = {
  jobId => "jobId (optional)",
  scenarioName => "scenarioName (optional)",
  startTime => "startTime (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|jobId | String | false | ARM Id of the job being executed. |
|scenarioName | String | false | Scenario name. |
|startTime | String | false | Start time of the workflow. |
        
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
        
## ReplicationProviderSpecificSettings

Replication provider specific settings.

```puppet
$azure_replication_provider_specific_settings = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ReplicationProtectedItem

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationProtectionContainers/%{protection_container_name}/replicationProtectedItems/%{replicated_protected_item_name}`|Put|The operation to create an ASR replication protected item (Enable replication).|ReplicationProtectedItems_Create|
|List - list all|``||||
|List - get one|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationProtectionContainers/%{protection_container_name}/replicationProtectedItems/%{replicated_protected_item_name}`|Get|Gets the details of an ASR replication protected item.|ReplicationProtectedItems_Get|
|List - get list using params|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationProtectedItems`|Get|Gets the list of ASR replication protected items in the vault.|ReplicationProtectedItems_List|
|Update|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationProtectionContainers/%{protection_container_name}/replicationProtectedItems/%{replication_protected_item_name}/updateMobilityService`|Post|The operation to update(push update) the installed mobility service software on a replication protected item to the latest available version.|ReplicationProtectedItems_UpdateMobilityService|
|Delete|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationProtectionContainers/%{protection_container_name}/replicationProtectedItems/%{replicated_protected_item_name}`|Delete|The operation to delete or purge a replication protected item. This operation will force delete the replication protected item. Use the remove operation on replication protected item to perform a clean disable replication for the item.|ReplicationProtectedItems_Purge|
