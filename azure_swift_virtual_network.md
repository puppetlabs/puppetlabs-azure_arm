Document: "WebApps"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/web/resource-manager/Microsoft.Web/stable/2018-02-01/WebApps.json")

## SwiftVirtualNetwork

Swift Virtual Network Contract. This is used to enable the new Swift way of doing virtual network integration.

```puppet
azure_swift_virtual_network {
  api_version => "api_version",
  connection_envelope => "connectionEnvelope",
  kind => "kind (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
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
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the SwiftVirtualNetwork

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/config/virtualNetwork`|Put|Integrates this Web App with a Virtual Network. This requires that 1) "swiftSupported" is true when doing a GET against this resource, and 2) that the target Subnet has already been delegated, and is not
in use by another App Service Plan other than the one this App is in.|WebApps_CreateOrUpdateSwiftVirtualNetworkConnection|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/config/virtualNetwork`|Get|Gets a Swift Virtual Network connection.|WebApps_GetSwiftVirtualNetworkConnection|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/config/virtualNetwork`|Put|Integrates this Web App with a Virtual Network. This requires that 1) "swiftSupported" is true when doing a GET against this resource, and 2) that the target Subnet has already been delegated, and is not
in use by another App Service Plan other than the one this App is in.|WebApps_CreateOrUpdateSwiftVirtualNetworkConnection|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/config/virtualNetwork`|Delete|Deletes a Swift Virtual Network connection from an app (or deployment slot).|WebApps_DeleteSwiftVirtualNetwork|
