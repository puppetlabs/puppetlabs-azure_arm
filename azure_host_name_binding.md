Document: "WebApps"
Path: "/root/specs/specification/web/resource-manager/Microsoft.Web/stable/2018-02-01/WebApps.json")

## HostNameBinding

```puppet
azure_host_name_binding {
  api_version => "api_version",
  host_name => "host_name",
  host_name_binding => "hostNameBinding",
  id => "id (optional)",
  kind => "kind (optional)",
  name => "name (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|host_name | String | true | Hostname in the hostname binding. |
|host_name_binding | Hash | true | Binding details. This is the JSON representation of a HostNameBinding object. |
|id | String | false | Resource Id. |
|kind | String | false | Kind of resource. |
|name | String | false | Resource Name. |
|properties | String | false | HostNameBinding resource specific properties |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |
|type | String | false | Resource type. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the HostNameBinding

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/hostNameBindings/%{host_name}`|Put|Creates a hostname binding for an app.|WebApps_CreateOrUpdateHostNameBinding|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/hostNameBindings/%{host_name}`|Get|Get the named hostname binding for an app (or deployment slot, if specified).|WebApps_GetHostNameBinding|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/hostNameBindings`|Get|Get hostname bindings for an app or a deployment slot.|WebApps_ListHostNameBindingsSlot|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/hostNameBindings/%{host_name}`|Put|Creates a hostname binding for an app.|WebApps_CreateOrUpdateHostNameBinding|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/hostNameBindings/%{host_name}`|Delete|Deletes a hostname binding for an app.|WebApps_DeleteHostNameBinding|