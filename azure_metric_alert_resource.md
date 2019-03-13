Document: "metricAlert_API"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/monitor/resource-manager/Microsoft.Insights/stable/2018-03-01/metricAlert_API.json")

## MetricAlertResource

The metric alert resource.

```puppet
azure_metric_alert_resource {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_metric_alert_properties
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
|properties | [MetricAlertProperties](#metricalertproperties) | true | The alert rule properties of the resource. |
|resource_group_name | String | true | The name of the resource group. |
|rule_name | String | true | The name of the rule. |
|subscription_id | String | true | The Azure subscription Id. |
|tags | String | false | Resource tags |
        
## MetricAlertProperties

An alert rule.

```puppet
$azure_metric_alert_properties = {
  actions => $azure_metric_alert_action
  autoMitigate => "autoMitigate (optional)",
  criteria => $azure_metric_alert_criteria
  description => "description",
  enabled => "enabled",
  evaluationFrequency => "evaluationFrequency",
  scopes => "scopes (optional)",
  severity => "1234",
  targetResourceRegion => "targetResourceRegion (optional)",
  targetResourceType => "targetResourceType (optional)",
  windowSize => "windowSize",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|actions | [MetricAlertAction](#metricalertaction) | false | the array of actions that are performed when the alert rule becomes active, and when an alert condition is resolved. |
|autoMitigate | Boolean | false | the flag that indicates whether the alert should be auto resolved or not. |
|criteria | [MetricAlertCriteria](#metricalertcriteria) | true | defines the specific alert criteria information. |
|description | String | true | the description of the metric alert that will be included in the alert email. |
|enabled | Boolean | true | the flag that indicates whether the metric alert is enabled. |
|evaluationFrequency | String | true | how often the metric alert is evaluated represented in ISO 8601 duration format. |
|scopes | Array | false | the list of resource id's that this metric alert is scoped to. |
|severity | Integer | true | Alert severity {0, 1, 2, 3, 4} |
|targetResourceRegion | String | false | the region of the target resource(s) on which the alert is created/updated. Mandatory for MultipleResourceMultipleMetricCriteria. |
|targetResourceType | String | false | the resource type of the target resource(s) on which the alert is created/updated. Mandatory for MultipleResourceMultipleMetricCriteria. |
|windowSize | String | true | the period of time (in ISO 8601 duration format) that is used to monitor alert activity based on the threshold. |
        
## MetricAlertAction

An alert action.

```puppet
$azure_metric_alert_action = {
  actionGroupId => "actionGroupId (optional)",
  webhookProperties => "webhookProperties (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|actionGroupId | String | false | the id of the action group to use. |
|webhookProperties | Hash | false | The properties of a webhook object. |
        
## MetricAlertCriteria

The rule criteria that defines the conditions of the alert rule.

```puppet
$azure_metric_alert_criteria = {
  odata.type => "odata.type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|odata.type | String | true | specifies the type of the alert criteria. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the MetricAlertResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/metricAlerts/%{rule_name}`|Put|Create or update an metric alert definition.|MetricAlerts_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Insights/metricAlerts`|Get|Retrieve alert rule definitions in a subscription.|MetricAlerts_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/metricAlerts/%{rule_name}`|Get|Retrieve an alert rule definition.|MetricAlerts_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Insights/metricAlerts`|Get|Retrieve alert rule definitions in a subscription.|MetricAlerts_ListBySubscription|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/metricAlerts/%{rule_name}`|Put|Create or update an metric alert definition.|MetricAlerts_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/metricAlerts/%{rule_name}`|Delete|Delete an alert rule definition.|MetricAlerts_Delete|
