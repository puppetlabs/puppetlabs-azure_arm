Document: "WebApps"
Path: "/root/specs/specification/web/resource-manager/Microsoft.Web/stable/2018-02-01/WebApps.json")

## SiteSourceControl

```puppet
azure_site_source_control {
  api_version => "api_version",
  id => "id (optional)",
  kind => "kind (optional)",
  name => "name (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  site_source_control => "siteSourceControl",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|id | String | false | Resource Id. |
|kind | String | false | Kind of resource. |
|name | String | false | Resource Name. |
|properties | String | false | SiteSourceControl resource specific properties |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|site_source_control | Hash | true | JSON representation of a SiteSourceControl object. See example. |
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |
|type | String | false | Resource type. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the SiteSourceControl

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/sourcecontrols/web`|Put|Updates the source control configuration of an app.|WebApps_CreateOrUpdateSourceControl|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/sourcecontrols/web`|Get|Gets the source control configuration of an app.|WebApps_GetSourceControl|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/sourcecontrols/web`|Put|Updates the source control configuration of an app.|WebApps_CreateOrUpdateSourceControl|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/sourcecontrols/web`|Delete|Deletes the source control configuration of an app.|WebApps_DeleteSourceControl|