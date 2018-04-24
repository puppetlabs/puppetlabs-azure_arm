Document: "service"
Path: "/root/specs/specification/recoveryservicessiterecovery/resource-manager/Microsoft.RecoveryServices/stable/2018-01-10/service.json")

## Policy

```puppet
azure_policy {
  api_version => "api_version",
  id => "id (optional)",
  input => "input",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_policy_properties
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|id | String | false | Resource Id |
|input | Hash | true | Create policy input |
|location | String | false | Resource Location |
|name | String | false | Resource Name |
|properties | [PolicyProperties](#policyproperties) | false | The custom data. |
|resource_group_name | String | true | The name of the resource group where the recovery services vault is present. |
|resource_name | String | true | The name of the recovery services vault. |
|subscription_id | String | true | The subscription Id. |
|type | String | false | Resource Type |
        
## PolicyProperties

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

```puppet
$azure_policy_provider_specific_details = {
  instanceType => "instanceType (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|instanceType | String | false | Gets the class type. Overridden in derived classes. |



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