Document: "routeFilter"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/network/resource-manager/Microsoft.Network/stable/2019-06-01/routeFilter.json")

## RouteFilterRule

Route Filter Rule Resource.

```puppet
azure_route_filter_rule {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_route_filter_rule_properties_format
  resource_group_name => "resource_group_name",
  route_filter_name => "route_filter_name",
  route_filter_rule_parameters => "routeFilterRuleParameters",
  rule_name => "rule_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [RouteFilterRulePropertiesFormat](#routefilterrulepropertiesformat) | false | Properties of the route filter rule. |
|resource_group_name | String | true | The name of the resource group. |
|route_filter_name | String | true | The name of the route filter. |
|route_filter_rule_parameters | Hash | true | Parameters supplied to the create or update route filter rule operation. |
|rule_name | String | true | The name of the route filter rule. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## RouteFilterRulePropertiesFormat

Route Filter Rule Resource.

```puppet
$azure_route_filter_rule_properties_format = {
  access => $azure_access
  communities => "communities",
  routeFilterRuleType => "routeFilterRuleType",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|access | [Access](#access) | true | The access type of the rule. |
|communities | Array | true | The collection for bgp community values to filter on. e.g. ['12076:5010','12076:5020']. |
|routeFilterRuleType | String | true | The rule type of the rule. |
        
## Access

Access to be allowed or denied.

```puppet
$azure_access = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the RouteFilterRule

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/routeFilters/%{route_filter_name}/routeFilterRules/%{rule_name}`|Put|Creates or updates a route in the specified route filter.|RouteFilterRules_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/routeFilters/%{route_filter_name}/routeFilterRules/%{rule_name}`|Get|Gets the specified rule from a route filter.|RouteFilterRules_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/routeFilters/%{route_filter_name}/routeFilterRules`|Get|Gets all RouteFilterRules in a route filter.|RouteFilterRules_ListByRouteFilter|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/routeFilters/%{route_filter_name}/routeFilterRules/%{rule_name}`|Put|Creates or updates a route in the specified route filter.|RouteFilterRules_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/routeFilters/%{route_filter_name}/routeFilterRules/%{rule_name}`|Delete|Deletes the specified rule from a route filter.|RouteFilterRules_Delete|
