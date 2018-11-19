Document: "customer-insights"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/customer-insights/resource-manager/Microsoft.CustomerInsights/stable/2017-04-26/customer-insights.json")

## RoleAssignmentResourceFormat

The Role Assignment resource format.

```puppet
azure_role_assignment_resource_format {
  api_version => "api_version",
  assignment_name => "assignment_name",
  hub_name => "hub_name",
  parameters => "parameters",
  properties => $azure_role_assignment
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|assignment_name | String | true | The assignment name |
|hub_name | String | true | The name of the hub. |
|parameters | Hash | true | Parameters supplied to the CreateOrUpdate RoleAssignment operation. |
|properties | [RoleAssignment](#roleassignment) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## RoleAssignment

The Role Assignment definition.

```puppet
$azure_role_assignment = {
  conflationPolicies => $azure_resource_set_description
  connectors => $azure_resource_set_description
  description => "description (optional)",
  displayName => "displayName (optional)",
  interactions => $azure_resource_set_description
  kpis => $azure_resource_set_description
  links => $azure_resource_set_description
  principals => $azure_assignment_principal
  profiles => $azure_resource_set_description
  provisioningState => $azure_provisioning_state
  relationshipLinks => $azure_resource_set_description
  relationships => $azure_resource_set_description
  role => "role",
  roleAssignments => $azure_resource_set_description
  sasPolicies => $azure_resource_set_description
  segments => $azure_resource_set_description
  views => $azure_resource_set_description
  widgetTypes => $azure_resource_set_description
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|conflationPolicies | [ResourceSetDescription](#resourcesetdescription) | false | Widget types set for the assignment. |
|connectors | [ResourceSetDescription](#resourcesetdescription) | false | Connectors set for the assignment. |
|description | Hash | false | Localized description for the metadata. |
|displayName | Hash | false | Localized display names for the metadata. |
|interactions | [ResourceSetDescription](#resourcesetdescription) | false | Interactions set for the assignment. |
|kpis | [ResourceSetDescription](#resourcesetdescription) | false | Kpis set for the assignment. |
|links | [ResourceSetDescription](#resourcesetdescription) | false | Links set for the assignment. |
|principals | [AssignmentPrincipal](#assignmentprincipal) | true | The principals being assigned to. |
|profiles | [ResourceSetDescription](#resourcesetdescription) | false | Profiles set for the assignment. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | Provisioning state. |
|relationshipLinks | [ResourceSetDescription](#resourcesetdescription) | false | The Role assignments set for the relationship links. |
|relationships | [ResourceSetDescription](#resourcesetdescription) | false | The Role assignments set for the relationships. |
|role | String | true | Type of roles. |
|roleAssignments | [ResourceSetDescription](#resourcesetdescription) | false | The Role assignments set for the assignment. |
|sasPolicies | [ResourceSetDescription](#resourcesetdescription) | false | Sas Policies set for the assignment. |
|segments | [ResourceSetDescription](#resourcesetdescription) | false | The Role assignments set for the assignment. |
|views | [ResourceSetDescription](#resourcesetdescription) | false | Views set for the assignment. |
|widgetTypes | [ResourceSetDescription](#resourcesetdescription) | false | Widget types set for the assignment. |
        
## ResourceSetDescription

The resource set description.

```puppet
$azure_resource_set_description = {
  elements => "elements (optional)",
  exceptions => "exceptions (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|elements | Array | false | The elements included in the set. |
|exceptions | Array | false | The elements that are not included in the set, in case elements contains '*' indicating 'all'. |
        
        
        
        
        
## AssignmentPrincipal

The AssignmentPrincipal

```puppet
$azure_assignment_principal = {
  principalId => "principalId",
  principalMetadata => "principalMetadata (optional)",
  principalType => "principalType",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|principalId | String | true | The principal id being assigned to. |
|principalMetadata | Hash | false | Other metadata for the principal. |
|principalType | String | true | The Type of the principal ID. |
        
        
## ProvisioningState

Provisioning state.

```puppet
$azure_provisioning_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
        
        
        
        
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the RoleAssignmentResourceFormat

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/roleAssignments/%{assignment_name}`|Put|Creates or updates a role assignment in the hub.|RoleAssignments_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/roleAssignments/%{assignment_name}`|Get|Gets the role assignment in the hub.|RoleAssignments_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/roleAssignments`|Get|Gets all the role assignments for the specified hub.|RoleAssignments_ListByHub|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/roleAssignments/%{assignment_name}`|Put|Creates or updates a role assignment in the hub.|RoleAssignments_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/roleAssignments/%{assignment_name}`|Delete|Deletes the role assignment in the hub.|RoleAssignments_Delete|
