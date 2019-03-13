Document: "alertRules_API"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/monitor/resource-manager/Microsoft.Insights/stable/2016-03-01/alertRules_API.json")

## AlertRuleResource

The alert rule resource.

```puppet
azure_alert_rule_resource {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_alert_rule
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
|properties | [AlertRule](#alertrule) | true | The alert rule properties of the resource. |
|resource_group_name | String | true | The name of the resource group. |
|rule_name | String | true | The name of the rule. |
|subscription_id | String | true | The Azure subscription Id. |
|tags | String | false | Resource tags |
        
## AlertRule

An alert rule.

```puppet
$azure_alert_rule = {
  actions => $azure_rule_action
  condition => $azure_rule_condition
  description => "description (optional)",
  isEnabled => "isEnabled",
  name => "name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|actions | [RuleAction](#ruleaction) | false | the array of actions that are performed when the alert rule becomes active, and when an alert condition is resolved. |
|condition | [RuleCondition](#rulecondition) | true | the condition that results in the alert rule being activated. |
|description | String | false | the description of the alert rule that will be included in the alert email. |
|isEnabled | Boolean | true | the flag that indicates whether the alert rule is enabled. |
|name | String | true | the name of the alert rule. |
        
## RuleAction

The action that is performed when the alert rule becomes active, and when an alert condition is resolved.

```puppet
$azure_rule_action = {
  odata.type => "odata.type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|odata.type | String | true | specifies the type of the action. There are two types of actions: RuleEmailAction and RuleWebhookAction. |
        
## RuleCondition

The condition that results in the alert rule being activated.

```puppet
$azure_rule_condition = {
  dataSource => $azure_rule_data_source
  odata.type => "odata.type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dataSource | [RuleDataSource](#ruledatasource) | false | the resource from which the rule collects its data. For this type dataSource will always be of type RuleMetricDataSource. |
|odata.type | String | true | specifies the type of condition. This can be one of three types: ManagementEventRuleCondition (occurrences of management events), LocationThresholdRuleCondition (based on the number of failures of a web test), and ThresholdRuleCondition (based on the threshold of a metric). |
        
## RuleDataSource

The resource from which the rule collects its data.

```puppet
$azure_rule_data_source = {
  odata.type => "odata.type",
  resourceUri => "resourceUri (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|odata.type | String | true | specifies the type of data source. There are two types of rule data sources: RuleMetricDataSource and RuleManagementEventDataSource |
|resourceUri | String | false | the resource identifier of the resource the rule monitors. **NOTE**: this property cannot be updated for an existing rule. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the AlertRuleResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/microsoft.insights/alertrules/%{rule_name}`|Put|Creates or updates an alert rule.|AlertRules_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/microsoft.insights/alertrules`|Get|List the alert rules within a subscription.|AlertRules_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/microsoft.insights/alertrules/%{rule_name}`|Get|Gets an alert rule|AlertRules_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/microsoft.insights/alertrules`|Get|List the alert rules within a resource group.|AlertRules_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/microsoft.insights/alertrules/%{rule_name}`|Put|Creates or updates an alert rule.|AlertRules_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/microsoft.insights/alertrules/%{rule_name}`|Delete|Deletes an alert rule|AlertRules_Delete|
