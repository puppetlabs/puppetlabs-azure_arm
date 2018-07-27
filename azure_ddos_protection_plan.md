Document: "ddosProtectionPlan"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/network/resource-manager/Microsoft.Network/stable/2018-05-01/ddosProtectionPlan.json")

## DdosProtectionPlan

A DDoS protection plan in a resource group.

```puppet
azure_ddos_protection_plan {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_ddos_protection_plan_properties_format
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|location | String | false | Resource location. |
|parameters | Hash | true | Parameters supplied to the create or update operation. |
|properties | [DdosProtectionPlanPropertiesFormat](#ddosprotectionplanpropertiesformat) | false | Properties of the DDoS protection plan. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
        
## DdosProtectionPlanPropertiesFormat

DDoS protection plan properties.

```puppet
$azure_ddos_protection_plan_properties_format = {
  virtualNetworks => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|virtualNetworks | [SubResource](#subresource) | false | The list of virtual networks associated with the DDoS protection plan resource. This list is read-only. |
        
## SubResource

Reference to another subresource.

```puppet
$azure_sub_resource = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DdosProtectionPlan

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/ddosProtectionPlans/%{ddos_protection_plan_name}`|Put|Creates or updates a DDoS protection plan.|DdosProtectionPlans_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/ddosProtectionPlans`|Get|Gets all DDoS protection plans in a subscription.|DdosProtectionPlans_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/ddosProtectionPlans/%{ddos_protection_plan_name}`|Get|Gets information about the specified DDoS protection plan.|DdosProtectionPlans_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/ddosProtectionPlans`|Get|Gets all DDoS protection plans in a subscription.|DdosProtectionPlans_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/ddosProtectionPlans/%{ddos_protection_plan_name}`|Put|Creates or updates a DDoS protection plan.|DdosProtectionPlans_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/ddosProtectionPlans/%{ddos_protection_plan_name}`|Delete|Deletes the specified DDoS protection plan.|DdosProtectionPlans_Delete|
