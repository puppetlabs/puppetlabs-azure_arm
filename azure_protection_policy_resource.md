Document: "recoveryservicesbackup"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/recoveryservicesbackup/resource-manager/Microsoft.RecoveryServices/stable/2016-06-01/recoveryservicesbackup.json")

## ProtectionPolicyResource

The base class for backup policy. Workload-specific backup policies are derived from this class.

```puppet
azure_protection_policy_resource {
  api_version => "api_version",
  e_tag => "e_tag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  policy_name => "policy_name",
  properties => $azure_protection_policy
  resource_group_name => "resource_group_name",
  resource_protection_policy => "resourceProtectionPolicy",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
  vault_name => "vault_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|e_tag | String | false | Optional ETag. |
|id | String | false | Resource ID represents the complete path to the resource. |
|location | String | false | Resource location. |
|name | String | false | Resource name associated with the resource. |
|policy_name | String | true | The backup policy to be created. |
|properties | [ProtectionPolicy](#protectionpolicy) | false |  |
|resource_group_name | String | true | The name of the resource group associated with the Recovery Services vault. |
|resource_protection_policy | Hash | true | The resource backup policy. |
|subscription_id | String | true | The subscription ID. |
|tags | Hash | false | Resource tags. |
|type | String | false | Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/... |
|vault_name | String | true | The name of the Recovery Services vault. |
        
## ProtectionPolicy

The base class for a backup policy. Workload-specific backup policies are derived from this class.

```puppet
$azure_protection_policy = {
  backupManagementType => "backupManagementType (optional)",
  protectedItemsCount => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|backupManagementType | String | false | This property is used as the discriminator for deciding the specific types in the polymorphic chain of types. |
|protectedItemsCount | Integer | false | The number of items associated with this policy. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ProtectionPolicyResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{vault_name}/backupPolicies/%{policy_name}`|Put|Creates or modifies a backup policy. This is an asynchronous operation. Use the GetPolicyOperationResult API to Get the operation status.|ProtectionPolicies_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{vault_name}/backupPolicies/%{policy_name}`|Get|Gets the details of the backup policy associated with the Recovery Services vault. This is an asynchronous operation. Use the GetPolicyOperationResult API to Get the operation status.|ProtectionPolicies_Get|
|List - get list using params|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{vault_name}/backupPolicies`|Get|Lists the backup policies associated with the Recovery Services vault. The API provides parameters to Get scoped results.|ProtectionPolicies_List|
|Update|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{vault_name}/backupPolicies/%{policy_name}`|Put|Creates or modifies a backup policy. This is an asynchronous operation. Use the GetPolicyOperationResult API to Get the operation status.|ProtectionPolicies_CreateOrUpdate|
|Delete|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{vault_name}/backupPolicies/%{policy_name}`|Delete|Deletes the specified backup policy from your Recovery Services vault. This is an asynchronous operation. Use the GetPolicyOperationResult API to Get the operation status.|ProtectionPolicies_Delete|
