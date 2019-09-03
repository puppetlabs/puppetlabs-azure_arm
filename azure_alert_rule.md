Document: "SmartDetectorAlertRulesApi"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/alertsmanagement/resource-manager/Microsoft.AlertsManagement/stable/2019-06-01/SmartDetectorAlertRulesApi.json")

## AlertRule

The alert rule information

```puppet
azure_alert_rule {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_alert_rule_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|location | String | false | The resource location. |
|parameters | Hash | true | Parameters supplied to the operation. |
|properties | [AlertRuleProperties](#alertruleproperties) | false | The properties of the alert rule. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The ID of the target subscription. |
|tags | Hash | false | The resource tags. |
        
## AlertRuleProperties

The alert rule properties.

```puppet
$azure_alert_rule_properties = {
  actionGroups => $azure_action_groups_information
  description => "description (optional)",
  detector => $azure_detector
  frequency => "frequency",
  scope => "scope",
  severity => "severity",
  state => "state",
  throttling => $azure_throttling_information
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|actionGroups | [ActionGroupsInformation](#actiongroupsinformation) | true | The alert rule actions. |
|description | String | false | The alert rule description. |
|detector | [Detector](#detector) | true | The alert rule's detector. |
|frequency | String | true | The alert rule frequency in ISO8601 format. The time granularity must be in minutes and minimum value is 5 minutes. |
|scope | Array | true | The alert rule resources scope. |
|severity | String | true | The alert rule severity. |
|state | String | true | The alert rule state. |
|throttling | [ThrottlingInformation](#throttlinginformation) | false | The alert rule throttling information. |
        
## ActionGroupsInformation

The Action Groups information, used by the alert rule.

```puppet
$azure_action_groups_information = {
  customEmailSubject => "customEmailSubject (optional)",
  customWebhookPayload => "customWebhookPayload (optional)",
  groupIds => "groupIds",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|customEmailSubject | String | false | An optional custom email subject to use in email notifications. |
|customWebhookPayload | String | false | An optional custom web-hook payload to use in web-hook notifications. |
|groupIds | Array | true | The Action Group resource IDs. |
        
## Detector

The detector information. By default this is not populated, unless it's specified in expandDetector

```puppet
$azure_detector = {
  description => "description (optional)",
  id => "id",
  imagePaths => "imagePaths (optional)",
  name => "name (optional)",
  parameters => "parameters (optional)",
  supportedResourceTypes => "supportedResourceTypes (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | The Smart Detector description. By default this is not populated, unless it's specified in expandDetector |
|id | String | true | The detector id. |
|imagePaths | Array | false | The Smart Detector image path. By default this is not populated, unless it's specified in expandDetector |
|name | String | false | The Smart Detector name. By default this is not populated, unless it's specified in expandDetector |
|parameters | Hash | false | The detector's parameters.' |
|supportedResourceTypes | Array | false | The Smart Detector supported resource types. By default this is not populated, unless it's specified in expandDetector |
        
## ThrottlingInformation

Optional throttling information for the alert rule.

```puppet
$azure_throttling_information = {
  duration => "duration (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|duration | String | false | The required duration (in ISO8601 format) to wait before notifying on the alert rule again. The time granularity must be in minutes and minimum value is 0 minutes |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the AlertRule

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/microsoft.alertsManagement/smartDetectorAlertRules/%{alert_rule_name}`|Put|Create or update a Smart Detector alert rule.|SmartDetectorAlertRules_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/microsoft.alertsManagement/smartDetectorAlertRules`|Get|List all the existing Smart Detector alert rules within the subscription.|SmartDetectorAlertRules_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/microsoft.alertsManagement/smartDetectorAlertRules/%{alert_rule_name}`|Get|Get a specific Smart Detector alert rule.|SmartDetectorAlertRules_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/microsoft.alertsManagement/smartDetectorAlertRules`|Get|List all the existing Smart Detector alert rules within the subscription.|SmartDetectorAlertRules_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/microsoft.alertsManagement/smartDetectorAlertRules/%{alert_rule_name}`|Put|Create or update a Smart Detector alert rule.|SmartDetectorAlertRules_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/microsoft.alertsManagement/smartDetectorAlertRules/%{alert_rule_name}`|Delete|Delete an existing Smart Detector alert rule.|SmartDetectorAlertRules_Delete|
