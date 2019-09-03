Document: "customer-insights"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/customer-insights/resource-manager/Microsoft.CustomerInsights/stable/2017-04-26/customer-insights.json")

## ViewResourceFormat

The view resource format.

```puppet
azure_view_resource_format {
  api_version => "api_version",
  hub_name => "hub_name",
  parameters => "parameters",
  properties => $azure_view
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  user_id => "user_id",
  view_name => "view_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|hub_name | String | true | The name of the hub. |
|parameters | Hash | true | Parameters supplied to the CreateOrUpdate View operation. |
|properties | [View](#view) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|user_id | String | true | The user ID. Use * to retrieve hub level view. |
|view_name | String | true | The name of the view. |
        
## View

The view in Customer 360 web application.

```puppet
$azure_view = {
  definition => "definition",
  displayName => "displayName (optional)",
  userId => "userId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|definition | String | true | View definition. |
|displayName | Hash | false | Localized display name for the view. |
|userId | String | false | the user ID. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ViewResourceFormat

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/views/%{view_name}`|Put|Creates a view or updates an existing view in the hub.|Views_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/views/%{view_name}`|Get|Gets a view in the hub.|Views_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/views`|Get|Gets all available views for given user in the specified hub.|Views_ListByHub|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/views/%{view_name}`|Put|Creates a view or updates an existing view in the hub.|Views_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/views/%{view_name}`|Delete|Deletes a view in the specified hub.|Views_Delete|
