Document: "bms"


Path: "/tmp/azure-rest-api-specs/specification/recoveryservicesbackup/resource-manager/Microsoft.RecoveryServices/stable/2017-07-01/bms.json")

## ProtectionIntentResource

Base class for backup ProtectionIntent.

```puppet
azure_protection_intent_resource {
  api_version => "api_version",
  e_tag => "e_tag (optional)",
  fabric_name => "fabric_name",
  intent_object_name => "intent_object_name",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_protection_intent
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  vault_name => "vault_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|e_tag | String | false | Optional ETag. |
|fabric_name | String | true | Fabric name associated with the backup item. |
|intent_object_name | String | true | Intent object name. |
|location | String | false | Resource location. |
|parameters | Hash | true | resource backed up item |
|properties | [ProtectionIntent](#protectionintent) | false | ProtectionIntentResource properties |
|resource_group_name | String | true | The name of the resource group where the recovery services vault is present. |
|subscription_id | String | true | The subscription Id. |
|tags | Hash | false | Resource tags. |
|vault_name | String | true | The name of the recovery services vault. |
        
## ProtectionIntent

Base class for backup ProtectionIntent.

```puppet
$azure_protection_intent = {
  backupManagementType => "backupManagementType (optional)",
  itemId => "itemId (optional)",
  policyId => "policyId (optional)",
  protectionIntentItemType => "protectionIntentItemType (optional)",
  protectionState => "protectionState (optional)",
  sourceResourceId => "sourceResourceId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|backupManagementType | String | false | Type of backup management for the backed up item. |
|itemId | String | false | ID of the item which is getting protected, In case of Azure Vm , it is ProtectedItemId |
|policyId | String | false | ID of the backup policy with which this item is backed up. |
|protectionIntentItemType | String | false | backup protectionIntent type. |
|protectionState | String | false | Backup state of this backup item. |
|sourceResourceId | String | false | ARM ID of the resource to be backed up. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ProtectionIntentResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{vault_name}/backupFabrics/%{fabric_name}/backupProtectionIntent/%{intent_object_name}`|Put|Create Intent for Enabling backup of an item. This is a synchronous operation.|ProtectionIntent_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{vault_name}/backupFabrics/%{fabric_name}/backupProtectionIntent/%{intent_object_name}`|Get|Provides the details of the protection intent up item. This is an asynchronous operation. To know the status of the operation,
            call the GetItemOperationResult API.|ProtectionIntent_Get|
|List - get list using params|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{vault_name}/backupProtectionIntents`|Get|Provides a pageable list of all intents that are present within a vault.|BackupProtectionIntent_List|
|Update|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{vault_name}/backupFabrics/%{fabric_name}/backupProtectionIntent/%{intent_object_name}`|Put|Create Intent for Enabling backup of an item. This is a synchronous operation.|ProtectionIntent_CreateOrUpdate|
|Delete|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{vault_name}/backupFabrics/%{fabric_name}/backupProtectionIntent/%{intent_object_name}`|Delete|Used to remove intent from an item|ProtectionIntent_Delete|
