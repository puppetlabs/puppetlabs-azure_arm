Document: "service"


Path: "/tmp/azure-rest-api-specs/specification/recoveryservicessiterecovery/resource-manager/Microsoft.RecoveryServices/stable/2018-01-10/service.json")

## VCenter

vCenter definition.

```puppet
azure_v_center {
  add_v_center_request => "addVCenterRequest",
  api_version => "api_version",
  fabric_name => "fabric_name",
  location => "location (optional)",
  properties => $azure_v_center_properties
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|add_v_center_request | Hash | true | The input to the add vCenter operation. |
|api_version | String | true | Client Api Version. |
|fabric_name | String | true | Fabric name. |
|location | String | false | Resource Location |
|properties | [VCenterProperties](#vcenterproperties) | false | VCenter related data. |
|resource_group_name | String | true | The name of the resource group where the recovery services vault is present. |
|resource_name | String | true | The name of the recovery services vault. |
|subscription_id | String | true | The subscription Id. |
        
## VCenterProperties

vCenter properties.

```puppet
$azure_v_center_properties = {
  discoveryStatus => "discoveryStatus (optional)",
  fabricArmResourceName => "fabricArmResourceName (optional)",
  friendlyName => "friendlyName (optional)",
  healthErrors => $azure_health_error
  infrastructureId => "infrastructureId (optional)",
  internalId => "internalId (optional)",
  ipAddress => "ipAddress (optional)",
  lastHeartbeat => "lastHeartbeat (optional)",
  port => "port (optional)",
  processServerId => "processServerId (optional)",
  runAsAccountId => "runAsAccountId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|discoveryStatus | String | false | The VCenter discovery status. |
|fabricArmResourceName | String | false | The ARM resource name of the fabric containing this VCenter. |
|friendlyName | String | false | Friendly name of the vCenter. |
|healthErrors | [HealthError](#healtherror) | false | The health errors for this VCenter. |
|infrastructureId | String | false | The infrastructure Id of vCenter. |
|internalId | String | false | VCenter internal ID. |
|ipAddress | String | false | The IP address of the vCenter. |
|lastHeartbeat | String | false | The time when the last heartbeat was received by vCenter. |
|port | String | false | The port number for discovery. |
|processServerId | String | false | The process server Id. |
|runAsAccountId | String | false | The account Id which has privileges to discover the vCenter. |
        
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

Here is a list of endpoints that we use to create, read, update and delete the VCenter

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationvCenters/%{v_center_name}`|Put|The operation to create a vCenter object..|ReplicationvCenters_Create|
|List - list all|``||||
|List - get one|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationvCenters/%{v_center_name}`|Get|Gets the details of a registered vCenter server(Add vCenter server.)|ReplicationvCenters_Get|
|List - get list using params|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationvCenters`|Get|Lists the vCenter servers registered in the vault.|ReplicationvCenters_List|
|Update|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationvCenters/%{v_center_name}`|Put|The operation to create a vCenter object..|ReplicationvCenters_Create|
|Delete|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationvCenters/%{v_center_name}`|Delete|The operation to remove(unregister) a registered vCenter server from the vault.|ReplicationvCenters_Delete|
