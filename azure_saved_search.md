Document: "OperationalInsights"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/operationalinsights/resource-manager/Microsoft.OperationalInsights/stable/2015-03-20/OperationalInsights.json")

## SavedSearch

Value object for saved search results.

```puppet
azure_saved_search {
  api_version => "api_version",
  e_tag => "e_tag (optional)",
  parameters => "parameters",
  properties => $azure_saved_search_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  workspace_name => "workspace_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The client API version. |
|e_tag | String | false | The ETag of the saved search. |
|parameters | Hash | true | The parameters required to save a search. |
|properties | [SavedSearchProperties](#savedsearchproperties) | true | The properties of the saved search. |
|resource_group_name | String | true | The Resource Group name. |
|subscription_id | String | true | The Subscription ID. |
|workspace_name | String | true | The Log Analytics Workspace name. |
        
## SavedSearchProperties

Value object for saved search results.

```puppet
$azure_saved_search_properties = {
  category => "category",
  displayName => "displayName",
  query => "query",
  tags => $azure_tag
  version => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|category | String | true | The category of the saved search. This helps the user to find a saved search faster.  |
|displayName | String | true | Saved search display name. |
|query | String | true | The query expression for the saved search. Please see https://docs.microsoft.com/en-us/azure/log-analytics/log-analytics-search-reference for reference. |
|tags | [Tag](#tag) | false | The tags attached to the saved search. |
|version | Integer | false | The version number of the query language. The current version is 2 and is the default. |
        
## Tag

A tag of a saved search.

```puppet
$azure_tag = {
  name => "name",
  value => "value",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | The tag name. |
|value | String | true | The tag value. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the SavedSearch

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.OperationalInsights/workspaces/%{workspace_name}/savedSearches/%{saved_search_id}`|Put|Creates or updates a saved search for a given workspace.|SavedSearches_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.OperationalInsights/workspaces/%{workspace_name}/savedSearches/%{saved_search_id}`|Get|Gets the specified saved search for a given workspace.|SavedSearches_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.OperationalInsights/workspaces/%{workspace_name}/savedSearches`|Get|Gets the saved searches for a given Log Analytics Workspace|SavedSearches_ListByWorkspace|
|Update|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.OperationalInsights/workspaces/%{workspace_name}/savedSearches/%{saved_search_id}`|Put|Creates or updates a saved search for a given workspace.|SavedSearches_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.OperationalInsights/workspaces/%{workspace_name}/savedSearches/%{saved_search_id}`|Delete|Deletes the specified saved search in a given workspace.|SavedSearches_Delete|
