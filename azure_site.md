Document: "service"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/web/resource-manager/Microsoft.Web/stable/2015-08-01/service.json")

## Site

Represents a web app

```puppet
azure_site {
  api_version => "api_version",
  id => "id (optional)",
  kind => "kind (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  site_envelope => "siteEnvelope",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|id | String | false | Resource Id |
|kind | String | false | Kind of resource |
|location | String | false | Resource Location |
|name | String | false | Resource Name |
|properties | String | false |  |
|resource_group_name | String | true | Name of the resource group |
|site_envelope | Hash | true | Details of web app if it exists already |
|subscription_id | String | true | Subscription Id |
|tags | Hash | false | Resource tags |
|type | String | false | Resource type |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Site

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}`|Put||Sites_CreateOrUpdateSite|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Web/sites`|Get||Global_GetAllSites|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}`|Get||Sites_GetSite|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Web/sites`|Get||Global_GetAllSites|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}`|Put||Sites_CreateOrUpdateSite|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}`|Delete||Sites_DeleteSite|
