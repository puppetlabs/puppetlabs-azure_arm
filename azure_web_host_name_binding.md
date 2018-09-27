Document: "service"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/web/resource-manager/Microsoft.Web/stable/2015-08-01/service.json")

## HostNameBinding

A host name binding object

```puppet
azure_web_host_name_binding {
  api_version => "api_version",
  host_name => "host_name",
  host_name_binding => "hostNameBinding",
  id => "id (optional)",
  kind => "kind (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  slot => "slot",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|host_name | String | true | Name of host |
|host_name_binding | Hash | true | Host name binding information |
|id | String | false | Resource Id |
|kind | String | false | Kind of resource |
|location | String | false | Resource Location |
|name | String | false | Resource Name |
|properties | String | false |  |
|resource_group_name | String | true | Name of resource group |
|slot | String | true | Name of web app slot. If not specified then will default to production slot. |
|subscription_id | String | true | Subscription Id |
|tags | Hash | false | Resource tags |
|type | String | false | Resource type |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the HostNameBinding

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/hostNameBindings/%{host_name}`|Put||Sites_CreateOrUpdateSiteHostNameBindingSlot|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/hostNameBindings/%{host_name}`|Get||Sites_GetSiteHostNameBindingSlot|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/hostNameBindings`|Get||Sites_GetSiteHostNameBindingsSlot|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/hostNameBindings/%{host_name}`|Put||Sites_CreateOrUpdateSiteHostNameBindingSlot|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/hostNameBindings/%{host_name}`|Delete||Sites_DeleteSiteHostNameBindingSlot|
