Document: "scheduledQueryRule_API"
Path: "/root/specs/specification/monitor/resource-manager/microsoft.insights/stable/2018-04-16/scheduledQueryRule_API.json")

## LogSearchRuleResource

```puppet
azure_log_search_rule_resource {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_log_search_rule
  resource_group_name => "resource_group_name",
  rule_name => "rule_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|id | String | false | Azure resource Id |
|location | String | false | Resource location |
|name | String | false | Azure resource name |
|parameters | Hash | true | The parameters of the rule to create or update. |
|properties | [LogSearchRule](#logsearchrule) | true | The rule properties of the resource. |
|resource_group_name | String | true | The name of the resource group. |
|rule_name | String | true | The name of the rule. |
|subscription_id | String | true | The Azure subscription Id. |
|tags | String | false | Resource tags |
|type | String | false | Azure resource type |
        
## LogSearchRule

```puppet
$azure_log_search_rule = {
  action => $azure_action
  description => "description (optional)",
  enabled => "enabled (optional)",
  lastUpdatedTime => "lastUpdatedTime (optional)",
  provisioningState => "provisioningState (optional)",
  schedule => $azure_schedule
  source => $azure_source
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|action | [Action](#action) | true | Action needs to be taken on rule execution. |
|description | String | false | The description of the Log Search rule. |
|enabled | String | false | The flag which indicates whether the Log Search rule is enabled. Value should be true or false |
|lastUpdatedTime | String | false | Last time the rule was updated in IS08601 format. |
|provisioningState | String | false | Provisioning state of the scheduledquery rule |
|schedule | [Schedule](#schedule) | true | Schedule (Frequnecy, Time Window) for rule. |
|source | [Source](#source) | true | Data Source against which rule will Query Data |
        
## Action

```puppet
$azure_action = {
  odata.type => "odata.type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|odata.type | String | true | Specifies the action. Only supported value - AlertingAction  |
        
## Schedule

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

```puppet
$azure_source = {
  authorizedResources => "authorizedResources (optional)",
  datasourceId => "datasourceId",
  query => "query",
  queryType => $azure_query_type
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|authorizedResources | Array | false | List of  Resource referred into query |
|datasourceId | String | true | The resource uri over which log search query is to be run. |
|query | String | true | Log search query. |
|queryType | [QueryType](#querytype) | false | Set value to ResultCount if query should be returning search result count. Set it to Number if its a metric query. |
        
## QueryType

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
|List - get list using params|`/subscriptions/%{subscription_id}/providers/microsoft.insights/scheduledQueryRules`|Get|List the Log Search rules within a subscription group.|ScheduledQueryRules_ListBySubscription|
|Update|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/microsoft.insights/scheduledQueryRules/%{rule_name}`|Put|Creates or updates an log search rule.|ScheduledQueryRules_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/microsoft.insights/scheduledQueryRules/%{rule_name}`|Delete|Deletes a Log Search rule|ScheduledQueryRules_Delete|