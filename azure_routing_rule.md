Document: "frontdoor"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/frontdoor/resource-manager/Microsoft.Network/stable/2019-05-01/frontdoor.json")

## RoutingRule

A routing rule represents a specification for traffic to treat and where to send it, along with health probe information.

```puppet
azure_routing_rule {
  api_version => "api_version",
  front_door_name => "front_door_name",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_routing_rule_properties
  resource_group_name => "resource_group_name",
  routing_rule_parameters => "routingRuleParameters",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|front_door_name | String | true | Name of the Front Door which is globally unique. |
|id | String | false | Resource ID. |
|name | String | false | Resource name. |
|properties | [RoutingRuleProperties](#routingruleproperties) | false | Properties of the Front Door Routing Rule |
|resource_group_name | String | true | Name of the Resource group within the Azure subscription. |
|routing_rule_parameters | Hash | true | Routing Rule properties needed to create a new Front Door. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## RoutingRuleProperties

The JSON object that contains the properties required to create a routing rule.

```puppet
$azure_routing_rule_properties = {
  acceptedProtocols => "acceptedProtocols (optional)",
  enabledState => "enabledState (optional)",
  frontendEndpoints => "frontendEndpoints (optional)",
  patternsToMatch => "patternsToMatch (optional)",
  resourceState => $azure_resource_state
  routeConfiguration => "routeConfiguration (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|acceptedProtocols | Array | false | Protocol schemes to match for this rule |
|enabledState | String | false | Whether to enable use of this rule. Permitted values are 'Enabled' or 'Disabled' |
|frontendEndpoints | Array | false | Frontend endpoints associated with this rule |
|patternsToMatch | Array | false | The route patterns of the rule. |
|resourceState | [ResourceState](#resourcestate) | false | Resource status. |
|routeConfiguration | String | false | A reference to the routing configuration. |
        
## ResourceState



```puppet
$azure_resource_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the RoutingRule

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/routingRules/%{routing_rule_name}`|Put|Creates a new Routing Rule with the specified Rule name within the specified Front Door.|RoutingRules_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/routingRules/%{routing_rule_name}`|Get|Gets a Routing Rule with the specified Rule name within the specified Front Door.|RoutingRules_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/routingRules`|Get|Lists all of the Routing Rules within a Front Door.|RoutingRules_ListByFrontDoor|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/routingRules/%{routing_rule_name}`|Put|Creates a new Routing Rule with the specified Rule name within the specified Front Door.|RoutingRules_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/routingRules/%{routing_rule_name}`|Delete|Deletes an existing Routing Rule with the specified parameters.|RoutingRules_Delete|
