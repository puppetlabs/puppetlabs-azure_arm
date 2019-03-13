Document: "apimtags"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimtags.json")

## TagDescriptionContract

Contract details.

```puppet
azure_tag_description_contract {
  api_version => "api_version",
  api_id => "api_id",
  if_match => "if_match",
  parameters => "parameters",
  properties => $azure_tag_description_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
  tag_id => "tag_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|api_id | String | true | API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number. |
|if_match | String | true | ETag of the Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update. |
|parameters | Hash | true | Create parameters. |
|properties | [TagDescriptionContractProperties](#tagdescriptioncontractproperties) | false | TagDescription entity contract properties. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tag_id | String | true | Tag identifier. Must be unique in the current API Management service instance. |
        
## TagDescriptionContractProperties

TagDescription contract Properties.

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
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/tagDescriptions/%{tag_id}`|Put|Create/Update tag description in scope of the Api.|TagDescription_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/tagDescriptions/%{tag_id}`|Get|Get tag associated with the API.|TagDescription_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/tagDescriptions`|Get|Lists all Tags descriptions in scope of API. Model similar to swagger - tagDescription is defined on API level but tag may be assigned to the Operations|TagDescription_ListByApi|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/tagDescriptions/%{tag_id}`|Put|Create/Update tag description in scope of the Api.|TagDescription_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/tagDescriptions/%{tag_id}`|Delete|Delete tag description for the Api.|TagDescription_Delete|
