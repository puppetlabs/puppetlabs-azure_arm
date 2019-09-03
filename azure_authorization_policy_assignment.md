Document: "policyAssignments"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/resources/resource-manager/Microsoft.Authorization/stable/2019-06-01/policyAssignments.json")

## PolicyAssignment

The policy assignment.

```puppet
azure_authorization_policy_assignment {
  api_version => "api_version",
  identity => $azure_identity
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_policy_assignment_properties
  scope => "scope",
  sku => $azure_policy_sku
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the operation. |
|identity | [Identity](#identity) | false | The managed identity associated with the policy assignment. |
|location | String | false | The location of the policy assignment. Only required when utilizing managed identity. |
|parameters | Hash | true | Parameters for the policy assignment. |
|properties | [PolicyAssignmentProperties](#policyassignmentproperties) | false | Properties for the policy assignment. |
|scope | String | true | The scope of the policy assignment. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}', or resource (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/[{parentResourcePath}/]{resourceType}/{resourceName}' |
|sku | [PolicySku](#policysku) | false | The policy sku. This property is optional, obsolete, and will be ignored. |
|subscription_id | String | true | The ID of the target subscription. |
        
## Identity

Identity for the resource.

```puppet
$azure_identity = {
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|type | String | false | The identity type. |
        
## PolicyAssignmentProperties

The policy assignment properties.

```puppet
$azure_policy_assignment_properties = {
  description => "description (optional)",
  displayName => "displayName (optional)",
  enforcementMode => "enforcementMode (optional)",
  metadata => "metadata (optional)",
  notScopes => "notScopes (optional)",
  parameters => "parameters (optional)",
  policyDefinitionId => "policyDefinitionId (optional)",
  scope => "scope (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | This message will be part of response in case of policy violation. |
|displayName | String | false | The display name of the policy assignment. |
|enforcementMode | String | false | The policy assignment enforcement mode. Possible values are Default and DoNotEnforce. |
|metadata | Hash | false | The policy assignment metadata. |
|notScopes | Array | false | The policy's excluded scopes. |
|parameters | Hash | false | Required if a parameter is used in policy rule. |
|policyDefinitionId | String | false | The ID of the policy definition or policy set definition being assigned. |
|scope | String | false | The scope for the policy assignment. |
        
## PolicySku

The policy sku. This property is optional, obsolete, and will be ignored.

```puppet
$azure_policy_sku = {
  name => "name",
  tier => "tier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | The name of the policy sku. Possible values are A0 and A1. |
|tier | String | false | The policy sku tier. Possible values are Free and Standard. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the PolicyAssignment

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/%{scope}/providers/Microsoft.Authorization/policyAssignments/%{policy_assignment_name}`|Put| This operation creates or updates a policy assignment with the given scope and name. Policy assignments apply to all resources contained within their scope. For example, when you assign a policy at resource group scope, that policy applies to all resources in the group.|PolicyAssignments_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/policyAssignments`|Get|This operation retrieves the list of all policy assignments associated with the given subscription that match the optional given $filter. Valid values for $filter are: 'atScope()' or 'policyDefinitionId eq '{value}''. If $filter is not provided, the unfiltered list includes all policy assignments associated with the subscription, including those that apply directly or from management groups that contain the given subscription, as well as any applied to objects contained within the subscription. If $filter=atScope() is provided, the returned list includes all policy assignments that apply to the subscription, which is everything in the unfiltered list except those applied to objects contained within the subscription. If $filter=policyDefinitionId eq '{value}' is provided, the returned list includes all policy assignments of the policy definition whose id is {value}.|PolicyAssignments_List|
|List - get one|`/%{policy_assignment_id}`|Get|The operation retrieves the policy assignment with the given ID. Policy assignment IDs have this format: '{scope}/providers/Microsoft.Authorization/policyAssignments/{policyAssignmentName}'. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}', or resource (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/[{parentResourcePath}/]{resourceType}/{resourceName}'.|PolicyAssignments_GetById|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Authorization/policyAssignments`|Get|This operation retrieves the list of all policy assignments associated with the given resource group in the given subscription that match the optional given $filter. Valid values for $filter are: 'atScope()' or 'policyDefinitionId eq '{value}''. If $filter is not provided, the unfiltered list includes all policy assignments associated with the resource group, including those that apply directly or apply from containing scopes, as well as any applied to resources contained within the resource group. If $filter=atScope() is provided, the returned list includes all policy assignments that apply to the resource group, which is everything in the unfiltered list except those applied to resources contained within the resource group. If $filter=policyDefinitionId eq '{value}' is provided, the returned list includes all policy assignments of the policy definition whose id is {value} that apply to the resource group.|PolicyAssignments_ListForResourceGroup|
|Update|`/%{policy_assignment_id}`|Put|This operation creates or updates the policy assignment with the given ID. Policy assignments made on a scope apply to all resources contained in that scope. For example, when you assign a policy to a resource group that policy applies to all resources in the group. Policy assignment IDs have this format: '{scope}/providers/Microsoft.Authorization/policyAssignments/{policyAssignmentName}'. Valid scopes are: management group (format: '/providers/Microsoft.Management/managementGroups/{managementGroup}'), subscription (format: '/subscriptions/{subscriptionId}'), resource group (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}', or resource (format: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/[{parentResourcePath}/]{resourceType}/{resourceName}'.|PolicyAssignments_CreateById|
|Delete|`/%{policy_assignment_id}`|Delete|This operation deletes the policy with the given ID. Policy assignment IDs have this format: '{scope}/providers/Microsoft.Authorization/policyAssignments/{policyAssignmentName}'. Valid formats for {scope} are: '/providers/Microsoft.Management/managementGroups/{managementGroup}' (management group), '/subscriptions/{subscriptionId}' (subscription), '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' (resource group), or '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/[{parentResourcePath}/]{resourceType}/{resourceName}' (resource).|PolicyAssignments_DeleteById|
