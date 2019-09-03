Document: "policyDefinitions"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/resources/resource-manager/Microsoft.Authorization/stable/2019-06-01/policyDefinitions.json")

## PolicyDefinition

The policy definition.

```puppet
azure_authorization_policy_definition {
  api_version => "api_version",
  management_group_id => "management_group_id",
  parameters => "parameters",
  properties => $azure_policy_definition_properties
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the operation. |
|management_group_id | String | true | The ID of the management group. |
|parameters | Hash | true | The policy definition properties. |
|properties | [PolicyDefinitionProperties](#policydefinitionproperties) | false | The policy definition properties. |
|subscription_id | String | true | The ID of the target subscription. |
        
## PolicyDefinitionProperties

The policy definition properties.

```puppet
$azure_policy_definition_properties = {
  description => "description (optional)",
  displayName => "displayName (optional)",
  metadata => "metadata (optional)",
  mode => "mode (optional)",
  parameters => "parameters (optional)",
  policyRule => "policyRule (optional)",
  policyType => "policyType (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | The policy definition description. |
|displayName | String | false | The display name of the policy definition. |
|metadata | Hash | false | The policy definition metadata. |
|mode | String | false | The policy definition mode. Some examples are All, Indexed, Microsoft.KeyVault.Data. |
|parameters | Hash | false | Required if a parameter is used in policy rule. |
|policyRule | Hash | false | The policy rule. |
|policyType | String | false | The type of policy definition. Possible values are NotSpecified, BuiltIn, and Custom. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the PolicyDefinition

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policyDefinitions/%{policy_definition_name}`|Put|This operation creates or updates a policy definition in the given subscription with the given name.|PolicyDefinitions_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policyDefinitions`|Get|This operation retrieves a list of all the policy definitions in a given subscription.|PolicyDefinitions_List|
|List - get one|`/providers/Microsoft.Management/managementgroups/%{management_group_id}/providers/Microsoft.Authorization/policyDefinitions/%{policy_definition_name}`|Get|This operation retrieves the policy definition in the given management group with the given name.|PolicyDefinitions_GetAtManagementGroup|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policyDefinitions`|Get|This operation retrieves a list of all the policy definitions in a given subscription.|PolicyDefinitions_List|
|Update|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policyDefinitions/%{policy_definition_name}`|Put|This operation creates or updates a policy definition in the given subscription with the given name.|PolicyDefinitions_CreateOrUpdate|
|Delete|`/providers/Microsoft.Management/managementgroups/%{management_group_id}/providers/Microsoft.Authorization/policyDefinitions/%{policy_definition_name}`|Delete|This operation deletes the policy definition in the given management group with the given name.|PolicyDefinitions_DeleteAtManagementGroup|
