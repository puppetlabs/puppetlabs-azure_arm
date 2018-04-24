Document: "policyAssignments"
Path: "/root/specs/specification/resources/resource-manager/Microsoft.Authorization/stable/2016-12-01/policyAssignments.json")

## PolicyAssignment

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
|parameters | Hash | true | Parameters for policy assignment. |
|properties | [PolicyAssignmentProperties](#policyassignmentproperties) | false | Properties for the policy assignment. |
|scope | String | true | The scope of the policy assignment. |
|subscription_id | String | true | The ID of the target subscription. |
|type | String | false | The type of the policy assignment. |
        
## PolicyAssignmentProperties

```puppet
$azure_policy_assignment_properties = {
  description => "description (optional)",
  displayName => "displayName (optional)",
  parameters => "parameters (optional)",
  policyDefinitionId => "policyDefinitionId (optional)",
  scope => "scope (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | This message will be part of response in case of policy violation. |
|displayName | String | false | The display name of the policy assignment. |
|parameters | Hash | false | Required if a parameter is used in policy rule. |
|policyDefinitionId | String | false | The ID of the policy definition. |
|scope | String | false | The scope for the policy assignment. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the PolicyAssignment

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/%{policy_assignment_id}`|Put|Policy assignments are inherited by child resources. For example, when you apply a policy to a resource group that policy is assigned to all resources in the group. When providing a scope for the assigment, use '/subscriptions/{subscription-id}/' for subscriptions, '/subscriptions/{subscription-id}/resourceGroups/{resource-group-name}' for resource groups, and '/subscriptions/{subscription-id}/resourceGroups/{resource-group-name}/providers/{resource-provider-namespace}/{resource-type}/{resource-name}' for resources.|PolicyAssignments_CreateById|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policyAssignments`|Get|Gets all the policy assignments for a subscription.|PolicyAssignments_List|
|List - get one|`/%{policy_assignment_id}`|Get|When providing a scope for the assigment, use '/subscriptions/{subscription-id}/' for subscriptions, '/subscriptions/{subscription-id}/resourceGroups/{resource-group-name}' for resource groups, and '/subscriptions/{subscription-id}/resourceGroups/{resource-group-name}/providers/{resource-provider-namespace}/{resource-type}/{resource-name}' for resources.|PolicyAssignments_GetById|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policyAssignments`|Get|Gets all the policy assignments for a subscription.|PolicyAssignments_List|
|Update|`/%{policy_assignment_id}`|Put|Policy assignments are inherited by child resources. For example, when you apply a policy to a resource group that policy is assigned to all resources in the group. When providing a scope for the assigment, use '/subscriptions/{subscription-id}/' for subscriptions, '/subscriptions/{subscription-id}/resourceGroups/{resource-group-name}' for resource groups, and '/subscriptions/{subscription-id}/resourceGroups/{resource-group-name}/providers/{resource-provider-namespace}/{resource-type}/{resource-name}' for resources.|PolicyAssignments_CreateById|
|Delete|`/%{scope}/providers/Microsoft.Authorization/policyAssignments/%{policy_assignment_name}`|Delete|Deletes a policy assignment.|PolicyAssignments_Delete|