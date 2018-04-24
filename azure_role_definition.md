Document: "authorization"
Path: "/root/specs/specification/authorization/resource-manager/Microsoft.Authorization/stable/2015-07-01/authorization.json")

## RoleDefinition

```puppet
azure_role_definition {
  api_version => "api_version",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_role_definition_properties
  role_definition => "roleDefinition",
  scope => "scope",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for this operation. |
|id | String | false | The role definition ID. |
|name | String | false | The role definition name. |
|properties | [RoleDefinitionProperties](#roledefinitionproperties) | false | Role definition properties. |
|role_definition | Hash | true | The values for the role definition. |
|scope | String | true | The scope of the role definition. |
|type | String | false | The role definition type. |
        
## RoleDefinitionProperties

```puppet
$azure_role_definition_properties = {
  assignableScopes => "assignableScopes (optional)",
  description => "description (optional)",
  permissions => $azure_permission
  roleName => "roleName (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|assignableScopes | Array | false | Role definition assignable scopes. |
|description | String | false | The role definition description. |
|permissions | [Permission](#permission) | false | Role definition permissions. |
|roleName | String | false | The role name. |
|type | String | false | The role type. |
        
## Permission

```puppet
$azure_permission = {
  actions => "actions (optional)",
  notActions => "notActions (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|actions | Array | false | Allowed actions. |
|notActions | Array | false | Denied actions. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the RoleDefinition

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/%{scope}/providers/Microsoft.Authorization/roleDefinitions/%{role_definition_id}`|Put|Creates or updates a role definition.|RoleDefinitions_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/%{scope}/providers/Microsoft.Authorization/roleDefinitions/%{role_definition_id}`|Get|Get role definition by name (GUID).|RoleDefinitions_Get|
|List - get list using params|`/%{scope}/providers/Microsoft.Authorization/roleDefinitions`|Get|Get all role definitions that are applicable at scope and above.|RoleDefinitions_List|
|Update|`/%{scope}/providers/Microsoft.Authorization/roleDefinitions/%{role_definition_id}`|Put|Creates or updates a role definition.|RoleDefinitions_CreateOrUpdate|
|Delete|`/%{scope}/providers/Microsoft.Authorization/roleDefinitions/%{role_definition_id}`|Delete|Deletes a role definition.|RoleDefinitions_Delete|