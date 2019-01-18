Document: "service"


Path: "/tmp/azure-rest-api-specs/specification/recoveryservicessiterecovery/resource-manager/Microsoft.RecoveryServices/stable/2018-01-10/service.json")

## Fabric

Fabric definition.

```puppet
azure_fabric {
  api_version => "api_version",
  input => "input",
  location => "location (optional)",
  properties => $azure_fabric_properties
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|input | Hash | true | Fabric creation input. |
|location | String | false | Resource Location |
|properties | [FabricProperties](#fabricproperties) | false | Fabric related data. |
|resource_group_name | String | true | The name of the resource group where the recovery services vault is present. |
|resource_name | String | true | The name of the recovery services vault. |
|subscription_id | String | true | The subscription Id. |
        
## FabricProperties

Fabric properties.

```puppet
$azure_fabric_properties = {
  bcdrState => "bcdrState (optional)",
  customDetails => $azure_fabric_specific_details
  encryptionDetails => $azure_encryption_details
  friendlyName => "friendlyName (optional)",
  health => "health (optional)",
  healthErrorDetails => $azure_health_error
  internalIdentifier => "internalIdentifier (optional)",
  rolloverEncryptionDetails => $azure_encryption_details
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|bcdrState | String | false | BCDR state of the fabric. |
|customDetails | [FabricSpecificDetails](#fabricspecificdetails) | false | Fabric specific settings. |
|encryptionDetails | [EncryptionDetails](#encryptiondetails) | false | Encryption details for the fabric. |
|friendlyName | String | false | Friendly name of the fabric. |
|health | String | false | Health of fabric. |
|healthErrorDetails | [HealthError](#healtherror) | false | Fabric health error details. |
|internalIdentifier | String | false | Dra Registration Id. |
|rolloverEncryptionDetails | [EncryptionDetails](#encryptiondetails) | false | Rollover encryption details for the fabric. |
        
## FabricSpecificDetails

Fabric specific details.

```puppet
$azure_fabric_specific_details = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## EncryptionDetails

Encryption details for the fabric.

```puppet
$azure_encryption_details = {
  kekCertExpiryDate => "kekCertExpiryDate (optional)",
  kekCertThumbprint => "kekCertThumbprint (optional)",
  kekState => "kekState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|kekCertExpiryDate | String | false | The key encryption key certificate expiry date. |
|kekCertThumbprint | String | false | The key encryption key certificate thumbprint. |
|kekState | String | false | The key encryption key state for the Vmm. |
        
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
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Fabric

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}`|Put|The operation to create an Azure Site Recovery fabric (for e.g. Hyper-V site)|ReplicationFabrics_Create|
|List - list all|``||||
|List - get one|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}`|Get|Gets the details of an Azure Site Recovery fabric.|ReplicationFabrics_Get|
|List - get list using params|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics`|Get|Gets a list of the Azure Site Recovery fabrics in the vault.|ReplicationFabrics_List|
|Update|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}`|Put|The operation to create an Azure Site Recovery fabric (for e.g. Hyper-V site)|ReplicationFabrics_Create|
|Delete|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}`|Delete|The operation to purge(force delete) an Azure Site Recovery fabric.|ReplicationFabrics_Purge|
