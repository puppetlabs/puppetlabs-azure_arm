Document: "policy"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/resources/resource-manager/Microsoft.Authorization/stable/2016-04-01/policy.json")

## PolicyAssignment

The policy assignment.

```puppet
azure_policy_assignment {
  api_version => "api_version",
  id => "id (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_policy_assignment_properties
  scope => "scope",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the operation. |
|id | String | false | The ID of the policy assignment. |
|name | String | false | The name of the policy assignment. |
|parameters | Hash | true | Parameters for the policy assignment. |
|properties | [PolicyAssignmentProperties](#policyassignmentproperties) | false | Properties for the policy assignment. |
|scope | String | true | The scope of the policy assignment. |
|subscription_id | String | true | The ID of the target subscription. |
|type | String | false | The type of the policy assignment. |
        
## PolicyAssignmentProperties

The policy assignment properties.

```puppet
$azure_policy_assignment_properties = {
  displayName => "displayName (optional)",
  policyDefinitionId => "policyDefinitionId (optional)",
  scope => "scope (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|displayName | String | false | The display name of the policy assignment. |
|policyDefinitionId | String | false | The ID of the policy definition. |
|scope | String | false | The scope for the policy assignment. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the PolicyAssignment

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/%{scope}/providers/Microsoft.Authorization/policyassignments/%{policy_assignment_name}`|Put|Policy assignments are inherited by child resources. For example, when you apply a policy to a resource group that policy is assigned to all resources in the group.|PolicyAssignments_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policyassignments`|Get|Gets all the policy assignments for a subscription.|PolicyAssignments_List|
|List - get one|`/%{policy_assignment_id}`|Get|When providing a scope for the assigment, use '/subscriptions/{subscription-id}/' for subscriptions, '/subscriptions/{subscription-id}/resourceGroups/{resource-group-name}' for resource groups, and '/subscriptions/{subscription-id}/resourceGroups/{resource-group-name}/providers/{resource-provider-namespace}/{resource-type}/{resource-name}' for resources.|PolicyAssignments_GetById|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Authorization/policyAssignments`|Get|Gets policy assignments for the resource group.|PolicyAssignments_ListForResourceGroup|
|Update|`/%{policy_assignment_id}`|Put|Policy assignments are inherited by child resources. For example, when you apply a policy to a resource group that policy is assigned to all resources in the group. When providing a scope for the assigment, use '/subscriptions/{subscription-id}/' for subscriptions, '/subscriptions/{subscription-id}/resourceGroups/{resource-group-name}' for resource groups, and '/subscriptions/{subscription-id}/resourceGroups/{resource-group-name}/providers/{resource-provider-namespace}/{resource-type}/{resource-name}' for resources.|PolicyAssignments_CreateById|
|Delete|`/%{scope}/providers/Microsoft.Authorization/policyassignments/%{policy_assignment_name}`|Delete|Deletes a policy assignment.|PolicyAssignments_Delete|
