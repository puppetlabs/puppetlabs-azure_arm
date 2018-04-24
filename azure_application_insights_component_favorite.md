Document: "favorites_API"
Path: "/root/specs/specification/applicationinsights/resource-manager/Microsoft.Insights/stable/2015-05-01/favorites_API.json")

## ApplicationInsightsComponentFavorite

```puppet
azure_application_insights_component_favorite {
  api_version => "api_version",
  category => "category (optional)",
  config => "config (optional)",
  favorite_id => "favorite_id (optional)",
  favorite_properties => "favoriteProperties",
  favorite_type => "favorite_type (optional)",
  is_generated_from_template => "IsGeneratedFromTemplate (optional)",
  name => "name (optional)",
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  source_type => "source_type (optional)",
  subscription_id => "subscription_id",
  tags => "Tags (optional)",
  time_modified => "time_modified (optional)",
  user_id => "user_id (optional)",
  version => "version (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|category | String | false | Favorite category, as defined by the user at creation time. |
|config | String | false | Configuration of this particular favorite, which are driven by the Azure portal UX. Configuration data is a string containing valid JSON |
|favorite_id | String | false | Internally assigned unique id of the favorite definition. |
|favorite_properties | Hash | true | Properties that need to be specified to create a new favorite and add it to an Application Insights component. |
|favorite_type | String | false | Enum indicating if this favorite definition is owned by a specific user or is shared between all users with access to the Application Insights component. |
|is_generated_from_template | Boolean | false | Flag denoting wether or not this favorite was generated from a template. |
|name | String | false | The user-defined name of the favorite. |
|resource_group_name | String | true | The name of the resource group. |
|resource_name | String | true | The name of the Application Insights component resource. |
|source_type | String | false | The source of the favorite definition. |
|subscription_id | String | true | The Azure subscription ID. |
|tags | Array | false | A list of 0 or more tags that are associated with this favorite definition |
|time_modified | String | false | Date and time in UTC of the last modification that was made to this favorite definition. |
|user_id | String | false | Unique user id of the specific user that owns this favorite. |
|version | String | false | This instance's version of the data model. This can change as new features are added that can be marked favorite. Current examples include MetricsExplorer (ME) and Search. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ApplicationInsightsComponentFavorite

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/components/%{resource_name}/favorites/%{favorite_id}`|Put|Adds a new favorites to an Application Insights component.|Favorite_Add|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/components/%{resource_name}/favorites/%{favorite_id}`|Get|Get a single favorite by its FavoriteId, defined within an Application Insights component.|Favorite_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/components/%{resource_name}/favorites`|Get|Gets a list of favorites defined within an Application Insights component.|Favorites_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/components/%{resource_name}/favorites/%{favorite_id}`|Put|Adds a new favorites to an Application Insights component.|Favorite_Add|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/components/%{resource_name}/favorites/%{favorite_id}`|Delete|Remove a favorite that is associated to an Application Insights component.|Favorite_Delete|