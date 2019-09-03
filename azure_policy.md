Document: "service"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/recoveryservicessiterecovery/resource-manager/Microsoft.RecoveryServices/stable/2018-07-10/service.json")

## Policy

Protection profile details.

```puppet
azure_policy {
  api_version => "api_version",
  input => "input",
  location => "location (optional)",
  properties => $azure_policy_properties
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|input | Hash | true | Create policy input |
|location | String | false | Resource Location |
|properties | [PolicyProperties](#policyproperties) | false | The custom data. |
|resource_group_name | String | true | The name of the resource group where the recovery services vault is present. |
|resource_name | String | true | The name of the recovery services vault. |
|subscription_id | String | true | The subscription Id. |
        
## PolicyProperties

Protection profile custom data details.

```puppet
$azure_policy_properties = {
  friendlyName => "friendlyName (optional)",
  providerSpecificDetails => $azure_policy_provider_specific_details
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|friendlyName | String | false | The FriendlyName. |
|providerSpecificDetails | [PolicyProviderSpecificDetails](#policyproviderspecificdetails) | false | The ReplicationChannelSetting. |
        
## PolicyProviderSpecificDetails

Base class for Provider specific details for policies.

```puppet
$azure_policy_provider_specific_details = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Policy

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationPolicies/%{policy_name}`|Put|The operation to create a replication policy|ReplicationPolicies_Create|
|List - list all|``||||
|List - get one|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationPolicies/%{policy_name}`|Get|Gets the details of a replication policy.|ReplicationPolicies_Get|
|List - get list using params|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationPolicies`|Get|Lists the replication policies for a vault.|ReplicationPolicies_List|
|Update|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationPolicies/%{policy_name}`|Put|The operation to create a replication policy|ReplicationPolicies_Create|
|Delete|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationPolicies/%{policy_name}`|Delete|The operation to delete a replication policy.|ReplicationPolicies_Delete|
