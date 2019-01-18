Document: "WebApps"


Path: "/tmp/azure-rest-api-specs/specification/web/resource-manager/Microsoft.Web/stable/2018-02-01/WebApps.json")

## SwiftVirtualNetwork

Swift Virtual Network Contract. This is used to enable the new Swift way of doing virtual network integration.

```puppet
azure_swift_virtual_network {
  api_version => "api_version",
  connection_envelope => "connectionEnvelope",
  kind => "kind (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  slot => "slot",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|connection_envelope | Hash | true | Properties of the Virtual Network connection. See example. |
|kind | String | false | Kind of resource. |
|properties | String | false | SwiftVirtualNetwork resource specific properties |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|slot | String | true | Name of the deployment slot. If a slot is not specified, the API will add or update connections for the production slot. |
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the SwiftVirtualNetwork

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/config/virtualNetwork`|Put|Integrates this Web App with a Virtual Network. This requires that 1) "swiftSupported" is true when doing a GET against this resource, and 2) that the target Subnet has already been delegated, and is not
in use by another App Service Plan other than the one this App is in.|WebApps_CreateOrUpdateSwiftVirtualNetworkConnectionSlot|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/config/virtualNetwork`|Get|Gets a Swift Virtual Network connection.|WebApps_GetSwiftVirtualNetworkConnectionSlot|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/config/virtualNetwork`|Put|Integrates this Web App with a Virtual Network. This requires that 1) "swiftSupported" is true when doing a GET against this resource, and 2) that the target Subnet has already been delegated, and is not
in use by another App Service Plan other than the one this App is in.|WebApps_CreateOrUpdateSwiftVirtualNetworkConnectionSlot|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/config/virtualNetwork`|Delete|Deletes a Swift Virtual Network connection from an app (or deployment slot).|WebApps_DeleteSwiftVirtualNetworkSlot|
