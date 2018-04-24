Document: "apimtags"
Path: "/root/specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2017-03-01/apimtags.json")

## TagDescriptionContract

```puppet
azure_tag_description_contract {
  api_version => "api_version",
  api_id => "api_id",
  id => "id (optional)",
  if_match => "if_match",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_tag_description_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
  tag_id => "tag_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|api_id | String | true | API identifier. Must be unique in the current API Management service instance. |
|id | String | false | Resource ID. |
|if_match | String | true | The entity state (Etag) version of the Api schema to update. A value of '*' can be used for If-Match to unconditionally apply the operation. |
|name | String | false | Resource name. |
|parameters | Hash | true | Create parameters. |
|properties | [TagDescriptionContractProperties](#tagdescriptioncontractproperties) | false | TagDescription entity contract properties. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tag_id | String | true | Tag identifier. Must be unique in the current API Management service instance. |
|type | String | false | Resource type for API Management resource. |
        
## TagDescriptionContractProperties

```puppet
$azure_tag_description_contract_properties = {
  description => "description (optional)",
  displayName => "displayName (optional)",
  externalDocsDescription => "externalDocsDescription (optional)",
  externalDocsUrl => "externalDocsUrl (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | Description of the Tag. |
|displayName | String | false | Tag name. |
|externalDocsDescription | String | false | Description of the external resources describing the tag. |
|externalDocsUrl | String | false | Absolute URL of external resources describing the tag. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the TagDescriptionContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/tagDescriptions/%{tag_id}`|Put|Create/Update tag fescription in scope of the Api.|TagDescription_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/tagDescriptions/%{tag_id}`|Get|Get tag associated with the API.|TagDescription_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/tagDescriptions`|Get|Lists all Tags descriptions in scope of API. Model similar to swagger - tagDescription is defined on API level but tag may be assigned to the Operations|TagDescription_ListByApi|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/tagDescriptions/%{tag_id}`|Put|Create/Update tag fescription in scope of the Api.|TagDescription_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/tagDescriptions/%{tag_id}`|Delete|Delete tag description for the Api.|TagDescription_Delete|