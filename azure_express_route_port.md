Document: "expressRoutePort"


Path: "/tmp/azure-rest-api-specs/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/expressRoutePort.json")

## ExpressRoutePort

ExpressRoutePort resource definition.

```puppet
azure_express_route_port {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_express_route_port_properties_format
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|parameters | Hash | true | Parameters supplied to the create ExpressRoutePort operation. |
|properties | [ExpressRoutePortPropertiesFormat](#expressrouteportpropertiesformat) | false | ExpressRoutePort properties |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
        
## ExpressRoutePortPropertiesFormat

Properties specific to ExpressRoutePort resources.

```puppet
$azure_express_route_port_properties_format = {
  bandwidthInGbps => "1234 (optional)",
  circuits => $azure_sub_resource
  encapsulation => "encapsulation (optional)",
  links => $azure_express_route_link
  peeringLocation => "peeringLocation (optional)",
  resourceGuid => "resourceGuid (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|bandwidthInGbps | Integer | false | Bandwidth of procured ports in Gbps |
|circuits | [SubResource](#subresource) | false | Reference the ExpressRoute circuit(s) that are provisioned on this ExpressRoutePort resource. |
|encapsulation | String | false | Encapsulation method on physical ports. |
|links | [ExpressRouteLink](#expressroutelink) | false | The set of physical links of the ExpressRoutePort resource |
|peeringLocation | String | false | The name of the peering location that the ExpressRoutePort is mapped to physically. |
|resourceGuid | String | false | The resource GUID property of the ExpressRoutePort resource. |
        
## SubResource

Reference to another subresource.

```puppet
$azure_sub_resource = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
        
## ExpressRouteLink

ExpressRouteLink child resource definition.

```puppet
$azure_express_route_link = {
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_express_route_link_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
|name | String | false | Name of child port resource that is unique among child port resources of the parent. |
|properties | [ExpressRouteLinkPropertiesFormat](#expressroutelinkpropertiesformat) | false | ExpressRouteLink properties |
        
## ExpressRouteLinkPropertiesFormat

Properties specific to ExpressRouteLink resources.

```puppet
$azure_express_route_link_properties_format = {
  adminState => "adminState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|adminState | String | false | Administrative state of the physical port |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ExpressRoutePort

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/ExpressRoutePorts/%{express_route_port_name}`|Put|Creates or updates the specified ExpressRoutePort resource.|ExpressRoutePorts_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/ExpressRoutePorts`|Get|List all the ExpressRoutePort resources in the specified subscription|ExpressRoutePorts_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/ExpressRoutePorts/%{express_route_port_name}`|Get|Retrieves the requested ExpressRoutePort resource.|ExpressRoutePorts_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/ExpressRoutePorts`|Get|List all the ExpressRoutePort resources in the specified subscription|ExpressRoutePorts_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/ExpressRoutePorts/%{express_route_port_name}`|Put|Creates or updates the specified ExpressRoutePort resource.|ExpressRoutePorts_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/ExpressRoutePorts/%{express_route_port_name}`|Delete|Deletes the specified ExpressRoutePort resource.|ExpressRoutePorts_Delete|
