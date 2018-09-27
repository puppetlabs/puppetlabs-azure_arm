Document: "authorization"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/authorization/resource-manager/Microsoft.Authorization/stable/2015-07-01/authorization.json")

## RoleAssignment

Role Assignments

```puppet
azure_role_assignment {
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_role_assignment_properties_with_scope
  scope => "scope",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the operation. |
|parameters | Hash | true | Parameters for the role assignment. |
|properties | [RoleAssignmentPropertiesWithScope](#roleassignmentpropertieswithscope) | false | Role assignment properties. |
|scope | String | true | The scope of the role assignment to create. The scope can be any REST resource instance. For example, use '/subscriptions/{subscription-id}/' for a subscription, '/subscriptions/{subscription-id}/resourceGroups/{resource-group-name}' for a resource group, and '/subscriptions/{subscription-id}/resourceGroups/{resource-group-name}/providers/{resource-provider}/{resource-type}/{resource-name}' for a resource. |
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
|Create|`/%{scope}/providers/Microsoft.Authorization/roleAssignments/%{role_assignment_name}`|Put|Creates a role assignment.|RoleAssignments_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/roleAssignments`|Get|Gets all role assignments for the subscription.|RoleAssignments_List|
|List - get one|`/%{scope}/providers/Microsoft.Authorization/roleAssignments/%{role_assignment_name}`|Get|Get the specified role assignment.|RoleAssignments_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Authorization/roleAssignments`|Get|Gets role assignments for a resource group.|RoleAssignments_ListForResourceGroup|
|Update|`/%{scope}/providers/Microsoft.Authorization/roleAssignments/%{role_assignment_name}`|Put|Creates a role assignment.|RoleAssignments_Create|
|Delete|`/%{scope}/providers/Microsoft.Authorization/roleAssignments/%{role_assignment_name}`|Delete|Deletes a role assignment.|RoleAssignments_Delete|
