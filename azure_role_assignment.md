Document: "authorization"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/authorization/resource-manager/Microsoft.Authorization/stable/2015-07-01/authorization.json")

## RoleAssignment

Role Assignments

```puppet
azure_role_assignment {
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_role_assignment_properties_with_scope
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the operation. |
|parameters | Hash | true | Parameters for the role assignment. |
|properties | [RoleAssignmentPropertiesWithScope](#roleassignmentpropertieswithscope) | false | Role assignment properties. |
|subscription_id | String | true | The ID of the target subscription. |
        
## RoleAssignmentPropertiesWithScope

Role assignment properties with scope.

```puppet
$azure_role_assignment_properties_with_scope = {
  principalId => "principalId (optional)",
  roleDefinitionId => "roleDefinitionId (optional)",
  scope => "scope (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|principalId | String | false | The principal ID. |
|roleDefinitionId | String | false | The role definition ID. |
|scope | String | false | The role assignment scope. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the RoleAssignment

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/%{role_assignment_id}`|Put|Creates a role assignment by ID.|RoleAssignments_CreateById|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/roleAssignments`|Get|Gets all role assignments for the subscription.|RoleAssignments_List|
|List - get one|`/%{role_assignment_id}`|Get|Gets a role assignment by ID.|RoleAssignments_GetById|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/roleAssignments`|Get|Gets all role assignments for the subscription.|RoleAssignments_List|
|Update|`/%{role_assignment_id}`|Put|Creates a role assignment by ID.|RoleAssignments_CreateById|
|Delete|`/%{role_assignment_id}`|Delete|Deletes a role assignment.|RoleAssignments_DeleteById|
