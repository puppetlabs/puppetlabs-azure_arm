Document: "vaults"
Path: "/root/specs/specification/recoveryservices/resource-manager/Microsoft.RecoveryServices/stable/2016-06-01/vaults.json")

## Vault

```puppet
azure_vault {
  api_version => "api_version",
  e_tag => "e_tag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_vault_properties
  resource_group_name => "resource_group_name",
  sku => $azure_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
  vault => "vault",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|e_tag | String | false | Optional ETag. |
|id | String | false | Resource Id represents the complete path to the resource. |
|location | String | false | Resource location. |
|name | String | false | Resource name associated with the resource. |
|properties | [VaultProperties](#vaultproperties) | false |  |
|resource_group_name | String | true | The name of the resource group where the recovery services vault is present. |
|sku | [Sku](#sku) | false |  |
|subscription_id | String | true | The subscription Id. |
|tags | Hash | false | Resource tags. |
|type | String | false | Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/... |
|vault | Hash | true | Recovery Services Vault to be created. |
        
## VaultProperties

```puppet
$azure_vault_properties = {
  provisioningState => "provisioningState (optional)",
  upgradeDetails => $azure_upgrade_details
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|provisioningState | String | false | Provisioning State. |
|upgradeDetails | [UpgradeDetails](#upgradedetails) | false |  |
        
## UpgradeDetails

```puppet
$azure_upgrade_details = {
  endTimeUtc => "endTimeUtc (optional)",
  lastUpdatedTimeUtc => "lastUpdatedTimeUtc (optional)",
  message => "message (optional)",
  operationId => "operationId (optional)",
  previousResourceId => "previousResourceId (optional)",
  startTimeUtc => "startTimeUtc (optional)",
  status => "status (optional)",
  triggerType => "triggerType (optional)",
  upgradedResourceId => "upgradedResourceId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endTimeUtc | String | false | UTC time at which the upgrade operation has ended. |
|lastUpdatedTimeUtc | String | false | UTC time at which the upgrade operation status was last updated. |
|message | String | false | Message to the user containing information about the upgrade operation. |
|operationId | String | false | ID of the vault upgrade operation. |
|previousResourceId | String | false | Resource ID of the vault before the upgrade. |
|startTimeUtc | String | false | UTC time at which the upgrade operation has started. |
|status | String | false | Status of the vault upgrade operation. |
|triggerType | String | false | The way the vault upgradation was triggered. |
|upgradedResourceId | String | false | Resource ID of the upgraded vault. |
        
## Sku

```puppet
$azure_sku = {
  name => "name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | The Sku name. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Vault

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{vault_name}`|Put|Creates or updates a Recovery Services vault.|Vaults_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.RecoveryServices/vaults`|Get|Fetches all the resources of the specified type in the subscription.|Vaults_ListBySubscriptionId|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{vault_name}`|Get|Get the Vault details.|Vaults_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.RecoveryServices/vaults`|Get|Fetches all the resources of the specified type in the subscription.|Vaults_ListBySubscriptionId|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{vault_name}`|Put|Creates or updates a Recovery Services vault.|Vaults_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{vault_name}`|Delete|Deletes a vault.|Vaults_Delete|