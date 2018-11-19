Document: "WebApps"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/web/resource-manager/Microsoft.Web/stable/2018-02-01/WebApps.json")

## SiteExtensionInfo

Site Extension Information.

```puppet
azure_site_extension_info {
  api_version => "api_version",
  kind => "kind (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  site_extension_id => "site_extension_id",
  slot => "slot",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|kind | String | false | Kind of resource. |
|properties | String | false | SiteExtensionInfo resource specific properties |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|site_extension_id | String | true | Site extension name. |
|slot | String | true | Name of the deployment slot. If a slot is not specified, the API deletes a deployment for the production slot. |
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the SiteExtensionInfo

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/siteextensions/%{site_extension_id}`|Put|Install site extension on a web site, or a deployment slot.|WebApps_InstallSiteExtensionSlot|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/siteextensions/%{site_extension_id}`|Get|Get site extension information by its ID for a web site, or a deployment slot.|WebApps_GetSiteExtensionSlot|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/siteextensions`|Get|Get list of siteextensions for a web site, or a deployment slot.|WebApps_ListSiteExtensions|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/siteextensions/%{site_extension_id}`|Put|Install site extension on a web site, or a deployment slot.|WebApps_InstallSiteExtensionSlot|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/siteextensions/%{site_extension_id}`|Delete|Remove a site extension from a web site, or a deployment slot.|WebApps_DeleteSiteExtensionSlot|
