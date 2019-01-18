Document: "service"


Path: "/tmp/azure-rest-api-specs/specification/recoveryservicessiterecovery/resource-manager/Microsoft.RecoveryServices/stable/2018-01-10/service.json")

## RecoveryServicesProvider

Provider details.

```puppet
azure_recovery_services_provider {
  add_provider_input => "addProviderInput",
  api_version => "api_version",
  fabric_name => "fabric_name",
  location => "location (optional)",
  properties => $azure_recovery_services_provider_properties
  provider_name => "provider_name",
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|add_provider_input | Hash | true | Add provider input. |
|api_version | String | true | Client Api Version. |
|fabric_name | String | true | Fabric name. |
|location | String | false | Resource Location |
|properties | [RecoveryServicesProviderProperties](#recoveryservicesproviderproperties) | false | Provider properties. |
|provider_name | String | true | Recovery services provider name. |
|resource_group_name | String | true | The name of the resource group where the recovery services vault is present. |
|resource_name | String | true | The name of the recovery services vault. |
|subscription_id | String | true | The subscription Id. |
        
## RecoveryServicesProviderProperties

Recovery services provider properties.

```puppet
$azure_recovery_services_provider_properties = {
  allowedScenarios => "allowedScenarios (optional)",
  authenticationIdentityDetails => $azure_identity_provider_details
  connectionStatus => "connectionStatus (optional)",
  draIdentifier => "draIdentifier (optional)",
  fabricFriendlyName => "fabricFriendlyName (optional)",
  fabricType => "fabricType (optional)",
  friendlyName => "friendlyName (optional)",
  healthErrorDetails => $azure_health_error
  lastHeartBeat => "lastHeartBeat (optional)",
  protectedItemCount => "1234 (optional)",
  providerVersion => "providerVersion (optional)",
  providerVersionDetails => $azure_version_details
  providerVersionExpiryDate => "providerVersionExpiryDate (optional)",
  providerVersionState => "providerVersionState (optional)",
  resourceAccessIdentityDetails => $azure_identity_provider_details
  serverVersion => "serverVersion (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|allowedScenarios | Array | false | The scenarios allowed on this provider. |
|authenticationIdentityDetails | [IdentityProviderDetails](#identityproviderdetails) | false | The authentication identity details. |
|connectionStatus | String | false | A value indicating whether DRA is responsive. |
|draIdentifier | String | false | The DRA Id. |
|fabricFriendlyName | String | false | The fabric friendly name. |
|fabricType | String | false | Type of the site. |
|friendlyName | String | false | Friendly name of the DRA. |
|healthErrorDetails | [HealthError](#healtherror) | false | The recovery services provider health error details. |
|lastHeartBeat | String | false | Time when last heartbeat was sent by the DRA. |
|protectedItemCount | Integer | false | Number of protected VMs currently managed by the DRA. |
|providerVersion | String | false | The provider version. |
|providerVersionDetails | [VersionDetails](#versiondetails) | false | The provider version details. |
|providerVersionExpiryDate | String | false | Expiry date of the version. |
|providerVersionState | String | false | DRA version status. |
|resourceAccessIdentityDetails | [IdentityProviderDetails](#identityproviderdetails) | false | The resource access identity details. |
|serverVersion | String | false | The fabric provider. |
        
## IdentityProviderDetails

Identity provider details.

```puppet
$azure_identity_provider_details = {
  aadAuthority => "aadAuthority (optional)",
  applicationId => "applicationId (optional)",
  audience => "audience (optional)",
  objectId => "objectId (optional)",
  tenantId => "tenantId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|aadAuthority | String | false | The base authority for Azure Active Directory authentication. |
|applicationId | String | false | The application/client Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services. |
|audience | String | false | The intended Audience of the service principal with which the on-premise management/data plane components would communicate with our Azure services. |
|objectId | String | false | The object Id of the service principal with which the on-premise management/data plane components would communicate with our Azure services. |
|tenantId | String | false | The tenant Id for the service principal with which the on-premise management/data plane components would communicate with our Azure services. |
        
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
        
## VersionDetails

Version related details.

```puppet
$azure_version_details = {
  expiryDate => "expiryDate (optional)",
  status => "status (optional)",
  version => "version (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|expiryDate | String | false | Version expiry date. |
|status | String | false | A value indicating whether security update required. |
|version | String | false | The agent version. |
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the RecoveryServicesProvider

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationRecoveryServicesProviders/%{provider_name}`|Put|The operation to add a recovery services provider.|ReplicationRecoveryServicesProviders_Create|
|List - list all|``||||
|List - get one|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationRecoveryServicesProviders/%{provider_name}`|Get|Gets the details of registered recovery services provider.|ReplicationRecoveryServicesProviders_Get|
|List - get list using params|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationRecoveryServicesProviders`|Get|Lists the registered recovery services providers for the specified fabric.|ReplicationRecoveryServicesProviders_ListByReplicationFabrics|
|Update|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationRecoveryServicesProviders/%{provider_name}`|Put|The operation to add a recovery services provider.|ReplicationRecoveryServicesProviders_Create|
|Delete|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationRecoveryServicesProviders/%{provider_name}`|Delete|The operation to purge(force delete) a recovery services provider from the vault.|ReplicationRecoveryServicesProviders_Purge|
