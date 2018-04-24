Document: "WebApps"
Path: "/root/specs/specification/web/resource-manager/Microsoft.Web/stable/2018-02-01/WebApps.json")

## SiteExtensionInfo

```puppet
azure_site_extension_info {
  api_version => "api_version",
  id => "id (optional)",
  kind => "kind (optional)",
  name => "name (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  site_extension_id => "site_extension_id",
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
|properties | String | false | SiteExtensionInfo resource specific properties |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|site_extension_id | String | true | Site extension name. |
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |
|type | String | false | Resource type. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the SiteExtensionInfo

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/siteextensions/%{site_extension_id}`|Put|Install site extension on a web site, or a deployment slot.|WebApps_InstallSiteExtension|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/siteextensions/%{site_extension_id}`|Get|Get site extension information by its ID for a web site, or a deployment slot.|WebApps_GetSiteExtension|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/siteextensions`|Get|Get list of siteextensions for a web site, or a deployment slot.|WebApps_ListSiteExtensionsSlot|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/siteextensions/%{site_extension_id}`|Put|Install site extension on a web site, or a deployment slot.|WebApps_InstallSiteExtension|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/siteextensions/%{site_extension_id}`|Delete|Remove a site extension from a web site, or a deployment slot.|WebApps_DeleteSiteExtension|