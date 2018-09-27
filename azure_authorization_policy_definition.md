Document: "policyDefinitions"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/resources/resource-manager/Microsoft.Authorization/stable/2018-03-01/policyDefinitions.json")

## PolicyDefinition

The policy definition.

```puppet
azure_authorization_policy_definition {
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_policy_definition_properties
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the operation. |
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
|mode | String | false | The policy definition mode. Possible values are NotSpecified, Indexed, and All. |
|parameters | Hash | false | Required if a parameter is used in policy rule. |
|policyRule | Hash | false | The policy rule. |
|policyType | String | false | The type of policy definition. Possible values are NotSpecified, BuiltIn, and Custom. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the PolicyDefinition

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policyDefinitions/%{policy_definition_name}`|Put|This operation creates or updates a policy definition in the given subscription with the given name.|PolicyDefinitions_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policyDefinitions`|Get|This operation retrieves a list of all the policy definitions in a given subscription.|PolicyDefinitions_List|
|List - get one|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policyDefinitions/%{policy_definition_name}`|Get|This operation retrieves the policy definition in the given subscription with the given name.|PolicyDefinitions_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policyDefinitions`|Get|This operation retrieves a list of all the policy definitions in a given subscription.|PolicyDefinitions_List|
|Update|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policyDefinitions/%{policy_definition_name}`|Put|This operation creates or updates a policy definition in the given subscription with the given name.|PolicyDefinitions_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policyDefinitions/%{policy_definition_name}`|Delete|This operation deletes the policy definition in the given subscription with the given name.|PolicyDefinitions_Delete|
