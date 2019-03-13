Document: "apimanagement"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimanagement.json")

## PolicyContract

Policy Contract details.

```puppet
azure_policy_contract {
  api_version => "api_version",
  if_match => "if_match",
  parameters => "parameters",
  policy_id => "policy_id",
  properties => $azure_policy_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|if_match | String | true | ETag of the Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update. |
|parameters | Hash | true | The policy contents to apply. |
|policy_id | String | true | The identifier of the Policy. |
|properties | [PolicyContractProperties](#policycontractproperties) | false | Properties of the Policy. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## PolicyContractProperties

Policy contract Properties.

```puppet
$azure_policy_contract_properties = {
  contentFormat => "contentFormat (optional)",
  policyContent => "policyContent",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|contentFormat | String | false | Format of the policyContent. |
|policyContent | String | true | Json escaped Xml Encoded contents of the Policy. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the PolicyContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/policies/%{policy_id}`|Put|Creates or updates the global policy configuration of the Api Management service.|Policy_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/policies/%{policy_id}`|Get|Get the Global policy definition of the Api Management service.|Policy_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/policies`|Get|Lists all the Global Policy definitions of the Api Management service.|Policy_ListByService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/policies/%{policy_id}`|Put|Creates or updates the global policy configuration of the Api Management service.|Policy_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/policies/%{policy_id}`|Delete|Deletes the global policy configuration of the Api Management Service.|Policy_Delete|
