Document: "vaults"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/recoveryservices/resource-manager/Microsoft.RecoveryServices/stable/2016-06-01/vaults.json")

## Vault

Resource information, as returned by the resource provider.

```puppet
azure_recoveryservices_vault {
  api_version => "api_version",
  e_tag => "e_tag (optional)",
  location => "location (optional)",
  properties => $azure_vault_properties
  resource_group_name => "resource_group_name",
  sku => $azure_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  vault => "vault",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|e_tag | String | false | Optional ETag. |
|location | String | false | Resource location. |
|properties | [VaultProperties](#vaultproperties) | false |  |
|resource_group_name | String | true | The name of the resource group where the recovery services vault is present. |
|sku | [Sku](#sku) | false |  |
|subscription_id | String | true | The subscription Id. |
|tags | Hash | false | Resource tags. |
|vault | Hash | true | Recovery Services Vault to be created. |
        
## VaultProperties

Properties of the vault.

```puppet
$azure_vault_properties = {
  upgradeDetails => $azure_upgrade_details
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|upgradeDetails | [UpgradeDetails](#upgradedetails) | false |  |
        
## UpgradeDetails

Details for upgrading vault.

```puppet
$azure_upgrade_details = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## Sku

Identifies the unique system identifier for each Azure resource.

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
