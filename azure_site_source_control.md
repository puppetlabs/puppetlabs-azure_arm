Document: "WebApps"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/web/resource-manager/Microsoft.Web/stable/2018-02-01/WebApps.json")

## SiteSourceControl

Source control configuration for an app.

```puppet
azure_site_source_control {
  api_version => "api_version",
  kind => "kind (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  site_source_control => "siteSourceControl",
  slot => "slot",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|kind | String | false | Kind of resource. |
|properties | String | false | SiteSourceControl resource specific properties |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|site_source_control | Hash | true | JSON representation of a SiteSourceControl object. See example. |
|slot | String | true | Name of the deployment slot. If a slot is not specified, the API will update the source control configuration for the production slot. |
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the SiteSourceControl

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/sourcecontrols/web`|Put|Updates the source control configuration of an app.|WebApps_CreateOrUpdateSourceControlSlot|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/sourcecontrols/web`|Get|Gets the source control configuration of an app.|WebApps_GetSourceControlSlot|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/sourcecontrols/web`|Put|Updates the source control configuration of an app.|WebApps_CreateOrUpdateSourceControlSlot|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/sourcecontrols/web`|Delete|Deletes the source control configuration of an app.|WebApps_DeleteSourceControlSlot|
