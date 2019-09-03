Document: "policySetDefinitions"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/resources/resource-manager/Microsoft.Authorization/stable/2019-06-01/policySetDefinitions.json")

## PolicySetDefinition

The policy set definition.

```puppet
azure_policy_set_definition {
  api_version => "api_version",
  management_group_id => "management_group_id",
  parameters => "parameters",
  properties => $azure_policy_set_definition_properties
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the operation. |
|management_group_id | String | true | The ID of the management group. |
|parameters | Hash | true | The policy set definition properties. |
|properties | [PolicySetDefinitionProperties](#policysetdefinitionproperties) | false | The policy definition properties. |
|subscription_id | String | true | The ID of the target subscription. |
        
## PolicySetDefinitionProperties

The policy set definition properties.

```puppet
$azure_policy_set_definition_properties = {
  description => "description (optional)",
  displayName => "displayName (optional)",
  metadata => "metadata (optional)",
  parameters => "parameters (optional)",
  policyDefinitions => $azure_policy_definition_reference
  policyType => "policyType (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | The policy set definition description. |
|displayName | String | false | The display name of the policy set definition. |
|metadata | Hash | false | The policy set definition metadata. |
|parameters | Hash | false | The policy set definition parameters that can be used in policy definition references. |
|policyDefinitions | [PolicyDefinitionReference](#policydefinitionreference) | true | An array of policy definition references. |
|policyType | String | false | The type of policy definition. Possible values are NotSpecified, BuiltIn, and Custom. |
        
## PolicyDefinitionReference

The policy definition reference.

```puppet
$azure_policy_definition_reference = {
  parameters => "parameters (optional)",
  policyDefinitionId => "policyDefinitionId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|parameters | Hash | false | Required if a parameter is used in policy rule. |
|policyDefinitionId | String | false | The ID of the policy definition or policy set definition. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the PolicySetDefinition

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policySetDefinitions/%{policy_set_definition_name}`|Put|This operation creates or updates a policy set definition in the given subscription with the given name.|PolicySetDefinitions_CreateOrUpdate|
|List - list all|`/providers/Microsoft.Authorization/policySetDefinitions`|Get|This operation retrieves a list of all the built-in policy set definitions.|PolicySetDefinitions_ListBuiltIn|
|List - get one|`/providers/Microsoft.Management/managementgroups/%{management_group_id}/providers/Microsoft.Authorization/policySetDefinitions/%{policy_set_definition_name}`|Get|This operation retrieves the policy set definition in the given management group with the given name.|PolicySetDefinitions_GetAtManagementGroup|
|List - get list using params|`/providers/Microsoft.Authorization/policySetDefinitions`|Get|This operation retrieves a list of all the built-in policy set definitions.|PolicySetDefinitions_ListBuiltIn|
|Update|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policySetDefinitions/%{policy_set_definition_name}`|Put|This operation creates or updates a policy set definition in the given subscription with the given name.|PolicySetDefinitions_CreateOrUpdate|
|Delete|`/providers/Microsoft.Management/managementgroups/%{management_group_id}/providers/Microsoft.Authorization/policySetDefinitions/%{policy_set_definition_name}`|Delete|This operation deletes the policy set definition in the given management group with the given name.|PolicySetDefinitions_DeleteAtManagementGroup|
