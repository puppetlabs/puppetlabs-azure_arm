Document: "analyticsItems_API"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/applicationinsights/resource-manager/microsoft.insights/stable/2015-05-01/analyticsItems_API.json")

## ApplicationInsightsComponentAnalyticsItem

Properties that define an Analytics item that is associated to an Application Insights component.

```puppet
azure_application_insights_component_analytics_item {
  api_version => "api_version",
  content => "content (optional)",
  id => "id (optional)",
  item_properties => "itemProperties",
  name => "name (optional)",
  properties => $azure_application_insights_component_analytics_item_properties
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  scope => "scope (optional)",
  scope_path => "scope_path",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|content | String | false | The content of this item |
|id | String | false | Internally assigned unique id of the item definition. |
|item_properties | Hash | true | Properties that need to be specified to create a new item and add it to an Application Insights component. |
|name | String | false | The user-defined name of the item. |
|properties | [ApplicationInsightsComponentAnalyticsItemProperties](#applicationinsightscomponentanalyticsitemproperties) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|resource_name | String | true | The name of the Application Insights component resource. |
|scope | String | false | Enum indicating if this item definition is owned by a specific user or is shared between all users with access to the Application Insights component. |
|scope_path | String | true | Enum indicating if this item definition is owned by a specific user or is shared between all users with access to the Application Insights component. |
|subscription_id | String | true | The Azure subscription ID. |
|type | String | false | Enum indicating the type of the Analytics item. |
        
## ApplicationInsightsComponentAnalyticsItemProperties

A set of properties that can be defined in the context of a specific item type. Each type may have its own properties.

```puppet
$azure_application_insights_component_analytics_item_properties = {
  functionAlias => "functionAlias (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|functionAlias | String | false | A function alias, used when the type of the item is Function |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ApplicationInsightsComponentAnalyticsItem

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/microsoft.insights/components/%{resource_name}/%{scope_path}/item`|Put|Adds or Updates a specific Analytics Item within an Application Insights component.|AnalyticsItem_Put|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/microsoft.insights/components/%{resource_name}/%{scope_path}/item`|Get|Gets a specific Analytics Items defined within an Application Insights component.|AnalyticsItem_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/microsoft.insights/components/%{resource_name}/%{scope_path}`|Get|Gets a list of Analytics Items defined within an Application Insights component.|AnalyticsItem_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/microsoft.insights/components/%{resource_name}/%{scope_path}/item`|Put|Adds or Updates a specific Analytics Item within an Application Insights component.|AnalyticsItem_Put|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/microsoft.insights/components/%{resource_name}/%{scope_path}/item`|Delete|Deletes a specific Analytics Items defined within an Application Insights component.|AnalyticsItem_Delete|
