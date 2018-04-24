Document: "OperationalInsights"
Path: "/root/specs/specification/operationalinsights/resource-manager/Microsoft.OperationalInsights/stable/2015-03-20/OperationalInsights.json")

## SavedSearch

```puppet
azure_saved_search {
  api_version => "api_version",
  e_tag => "e_tag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_saved_search_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
  workspace_name => "workspace_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|e_tag | String | false | The etag of the saved search. |
|id | String | false | The id of the saved search. |
|name | String | false | The name of the saved search. |
|parameters | Hash | true | The parameters required to save a search. |
|properties | [SavedSearchProperties](#savedsearchproperties) | true | Gets or sets properties of the saved search. |
|resource_group_name | String | true | The name of the resource group to get. The name is case insensitive. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | The type of the saved search. |
|workspace_name | String | true | Log Analytics workspace name |
        
## SavedSearchProperties

```puppet
$azure_saved_search_properties = {
  category => "category",
  displayName => "displayName",
  query => "query",
  tags => $azure_tag
  version => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|category | String | true | The category of the saved search. This helps the user to find a saved search faster.  |
|displayName | String | true | Saved search display name. |
|query | String | true | The query expression for the saved search. Please see https://docs.microsoft.com/en-us/azure/log-analytics/log-analytics-search-reference for reference. |
|tags | [Tag](#tag) | false | The tags attached to the saved search. |
|version | Integer | true | The version number of the query lanuage. Only verion 1 is allowed here. |
        
## Tag

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
|Create|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.OperationalInsights/workspaces/%{workspace_name}/savedSearches/%{saved_search_name}`|Put|Creates or updates a saved search for a given workspace.|SavedSearches_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.OperationalInsights/workspaces/%{workspace_name}/savedSearches/%{saved_search_name}`|Get|Gets the specified saved search for a given workspace.|SavedSearches_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.OperationalInsights/workspaces/%{workspace_name}/savedSearches`|Get|Gets the saved searches for a given Log Analytics Workspace|SavedSearches_ListByWorkspace|
|Update|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.OperationalInsights/workspaces/%{workspace_name}/savedSearches/%{saved_search_name}`|Put|Creates or updates a saved search for a given workspace.|SavedSearches_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.OperationalInsights/workspaces/%{workspace_name}/savedSearches/%{saved_search_name}`|Delete|Deletes the specified saved search in a given workspace.|SavedSearches_Delete|