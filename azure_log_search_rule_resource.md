Document: "scheduledQueryRule_API"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/monitor/resource-manager/Microsoft.Insights/stable/2018-04-16/scheduledQueryRule_API.json")

## LogSearchRuleResource

The Log Search Rule resource.

```puppet
azure_log_search_rule_resource {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_log_search_rule
  resource_group_name => "resource_group_name",
  rule_name => "rule_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|location | String | false | Resource location |
|parameters | Hash | true | The parameters of the rule to create or update. |
|properties | [LogSearchRule](#logsearchrule) | true | The rule properties of the resource. |
|resource_group_name | String | true | The name of the resource group. |
|rule_name | String | true | The name of the rule. |
|subscription_id | String | true | The Azure subscription Id. |
|tags | String | false | Resource tags |
        
## LogSearchRule

Log Search Rule Definition

```puppet
$azure_log_search_rule = {
  action => $azure_action
  description => "description (optional)",
  enabled => "enabled (optional)",
  schedule => $azure_schedule
  source => $azure_source
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|action | [Action](#action) | true | Action needs to be taken on rule execution. |
|description | String | false | The description of the Log Search rule. |
|enabled | String | false | The flag which indicates whether the Log Search rule is enabled. Value should be true or false |
|schedule | [Schedule](#schedule) | false | Schedule (Frequency, Time Window) for rule. Required for action type - AlertingAction |
|source | [Source](#source) | true | Data Source against which rule will Query Data |
        
## Action

Action descriptor.

```puppet
$azure_action = {
  odata.type => "odata.type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|odata.type | String | true | Specifies the action. Supported values - AlertingAction, LogToMetricAction |
        
## Schedule

Defines how often to run the search and the time interval.

```puppet
$azure_schedule = {
  frequencyInMinutes => "1234",
  timeWindowInMinutes => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|frequencyInMinutes | Integer | true | frequency (in minutes) at which rule condition should be evaluated. |
|timeWindowInMinutes | Integer | true | Time window for which data needs to be fetched for query (should be greater than or equal to frequencyInMinutes). |
        
## Source

Specifies the log search query.

```puppet
$azure_source = {
  authorizedResources => "authorizedResources (optional)",
  dataSourceId => "dataSourceId",
  query => "query (optional)",
  queryType => $azure_query_type
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|authorizedResources | Array | false | List of  Resource referred into query |
|dataSourceId | String | true | The resource uri over which log search query is to be run. |
|query | String | false | Log search query. Required for action type - AlertingAction |
|queryType | [QueryType](#querytype) | false | Set value to 'ResultCount' . |
        
## QueryType

Set value to 'ResultAccount'

```puppet
$azure_query_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the LogSearchRuleResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/microsoft.insights/scheduledQueryRules/%{rule_name}`|Put|Creates or updates an log search rule.|ScheduledQueryRules_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/microsoft.insights/scheduledQueryRules`|Get|List the Log Search rules within a subscription group.|ScheduledQueryRules_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/microsoft.insights/scheduledQueryRules/%{rule_name}`|Get|Gets an Log Search rule|ScheduledQueryRules_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/microsoft.insights/scheduledQueryRules`|Get|List the Log Search rules within a resource group.|ScheduledQueryRules_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/microsoft.insights/scheduledQueryRules/%{rule_name}`|Put|Creates or updates an log search rule.|ScheduledQueryRules_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/microsoft.insights/scheduledQueryRules/%{rule_name}`|Delete|Deletes a Log Search rule|ScheduledQueryRules_Delete|
