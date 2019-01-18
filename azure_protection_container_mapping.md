Document: "service"


Path: "/tmp/azure-rest-api-specs/specification/recoveryservicessiterecovery/resource-manager/Microsoft.RecoveryServices/stable/2018-01-10/service.json")

## ProtectionContainerMapping

Protection container mapping object.

```puppet
azure_protection_container_mapping {
  api_version => "api_version",
  creation_input => "creationInput",
  fabric_name => "fabric_name",
  location => "location (optional)",
  mapping_name => "mapping_name",
  properties => $azure_protection_container_mapping_properties
  protection_container_name => "protection_container_name",
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|creation_input | Hash | true | Mapping creation input. |
|fabric_name | String | true | Fabric name. |
|location | String | false | Resource Location |
|mapping_name | String | true | Protection container mapping name. |
|properties | [ProtectionContainerMappingProperties](#protectioncontainermappingproperties) | false | The custom data. |
|protection_container_name | String | true | Protection container name. |
|resource_group_name | String | true | The name of the resource group where the recovery services vault is present. |
|resource_name | String | true | The name of the recovery services vault. |
|subscription_id | String | true | The subscription Id. |
        
## ProtectionContainerMappingProperties

Protection container mapping properties.

```puppet
$azure_protection_container_mapping_properties = {
  health => "health (optional)",
  healthErrorDetails => $azure_health_error
  policyFriendlyName => "policyFriendlyName (optional)",
  policyId => "policyId (optional)",
  providerSpecificDetails => $azure_protection_container_mapping_provider_specific_details
  sourceFabricFriendlyName => "sourceFabricFriendlyName (optional)",
  sourceProtectionContainerFriendlyName => "sourceProtectionContainerFriendlyName (optional)",
  state => "state (optional)",
  targetFabricFriendlyName => "targetFabricFriendlyName (optional)",
  targetProtectionContainerFriendlyName => "targetProtectionContainerFriendlyName (optional)",
  targetProtectionContainerId => "targetProtectionContainerId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|health | String | false | Health of pairing. |
|healthErrorDetails | [HealthError](#healtherror) | false | Health error. |
|policyFriendlyName | String | false | Friendly name of replication policy. |
|policyId | String | false | Policy ARM Id. |
|providerSpecificDetails | [ProtectionContainerMappingProviderSpecificDetails](#protectioncontainermappingproviderspecificdetails) | false | Provider specific provider details. |
|sourceFabricFriendlyName | String | false | Friendly name of source fabric. |
|sourceProtectionContainerFriendlyName | String | false | Friendly name of source protection container. |
|state | String | false | Association Status |
|targetFabricFriendlyName | String | false | Friendly name of target fabric. |
|targetProtectionContainerFriendlyName | String | false | Friendly name of paired container. |
|targetProtectionContainerId | String | false | Paired protection container ARM ID. |
        
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
        
## ProtectionContainerMappingProviderSpecificDetails

Container mapping provider specific details.

```puppet
$azure_protection_container_mapping_provider_specific_details = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ProtectionContainerMapping

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationProtectionContainers/%{protection_container_name}/replicationProtectionContainerMappings/%{mapping_name}`|Put|The operation to create a protection container mapping.|ReplicationProtectionContainerMappings_Create|
|List - list all|``||||
|List - get one|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationProtectionContainers/%{protection_container_name}/replicationProtectionContainerMappings/%{mapping_name}`|Get|Gets the details of a protection container mapping.|ReplicationProtectionContainerMappings_Get|
|List - get list using params|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationProtectionContainers/%{protection_container_name}/replicationProtectionContainerMappings`|Get|Lists the protection container mappings for a protection container.|ReplicationProtectionContainerMappings_ListByReplicationProtectionContainers|
|Update|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationProtectionContainers/%{protection_container_name}/replicationProtectionContainerMappings/%{mapping_name}`|Put|The operation to create a protection container mapping.|ReplicationProtectionContainerMappings_Create|
|Delete|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationProtectionContainers/%{protection_container_name}/replicationProtectionContainerMappings/%{mapping_name}`|Delete|The operation to purge(force delete) a protection container mapping|ReplicationProtectionContainerMappings_Purge|
