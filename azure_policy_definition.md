Document: "policy"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/resources/resource-manager/Microsoft.Authorization/stable/2016-04-01/policy.json")

## PolicyDefinition

The policy definition.

```puppet
azure_policy_definition {
  api_version => "api_version",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_policy_definition_properties
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the operation. |
|name | String | false | The name of the policy definition. If you do not specify a value for name, the value is inferred from the name value in the request URI. |
|parameters | Hash | true | The policy definition properties. |
|properties | [PolicyDefinitionProperties](#policydefinitionproperties) | false | The policy definition properties. |
|subscription_id | String | true | The ID of the target subscription. |
        
## PolicyDefinitionProperties

The policy definition properties.

```puppet
$azure_policy_definition_properties = {
  description => "description (optional)",
  displayName => "displayName (optional)",
  policyRule => "policyRule (optional)",
  policyType => "policyType (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | The policy definition description. |
|displayName | String | false | The display name of the policy definition. |
|policyRule | Hash | false | The policy rule. |
|policyType | String | false | The type of policy definition. Possible values are NotSpecified, BuiltIn, and Custom. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the PolicyDefinition

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policydefinitions/%{policy_definition_name}`|Put|Creates or updates a policy definition.|PolicyDefinitions_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policydefinitions`|Get|Gets all the policy definitions for a subscription.|PolicyDefinitions_List|
|List - get one|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policydefinitions/%{policy_definition_name}`|Get|Gets the policy definition.|PolicyDefinitions_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policydefinitions`|Get|Gets all the policy definitions for a subscription.|PolicyDefinitions_List|
|Update|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policydefinitions/%{policy_definition_name}`|Put|Creates or updates a policy definition.|PolicyDefinitions_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policydefinitions/%{policy_definition_name}`|Delete|Deletes a policy definition.|PolicyDefinitions_Delete|
