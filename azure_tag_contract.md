Document: "apimtags"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2017-03-01/apimtags.json")

## TagContract

Tag Contract details.

```puppet
azure_tag_contract {
  api_version => "api_version",
  if_match => "if_match",
  parameters => "parameters",
  properties => $azure_tag_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
  tag_id => "tag_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|if_match | String | true | ETag of the Tag Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update. |
|parameters | Hash | true | Create parameters. |
|properties | [TagContractProperties](#tagcontractproperties) | false | Tag entity contract properties. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tag_id | String | true | Tag identifier. Must be unique in the current API Management service instance. |
        
## TagContractProperties

Tag contract Properties.

```puppet
$azure_tag_contract_properties = {
  displayName => "displayName",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|displayName | String | true | Tag name. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the TagContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/tags/%{tag_id}`|Put|Creates a tag.|Tag_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/operations/%{operation_id}/tags/%{tag_id}`|Get|Get tag associated with the Operation.|Tag_GetByOperation|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/tags`|Get|Lists a collection of tags defined within a service instance.|Tag_ListByService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/tags/%{tag_id}`|Put|Creates a tag.|Tag_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/tags/%{tag_id}`|Delete|Deletes specific tag of the API Management service instance.|Tag_Delete|
