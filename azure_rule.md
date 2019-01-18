Document: "servicebus"


Path: "/tmp/azure-rest-api-specs/specification/servicebus/resource-manager/Microsoft.ServiceBus/stable/2017-04-01/servicebus.json")

## Rule

Description of Rule Resource.

```puppet
azure_rule {
  api_version => "api_version",
  namespace_name => "namespace_name",
  parameters => "parameters",
  properties => $azure_ruleproperties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  subscription_name => "subscription_name",
  topic_name => "topic_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|namespace_name | String | true | The namespace name |
|parameters | Hash | true | Parameters supplied to create a rule. |
|properties | [Ruleproperties](#ruleproperties) | false | Properties of Rule resource |
|resource_group_name | String | true | Name of the Resource group within the Azure subscription. |
|subscription_id | String | true | Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|subscription_name | String | true | The subscription name. |
|topic_name | String | true | The topic name. |
        
## Ruleproperties

Description of Rule Resource.

```puppet
$azure_ruleproperties = {
  action => $azure_action
  correlationFilter => $azure_correlation_filter
  filterType => $azure_filter_type
  sqlFilter => $azure_sql_filter
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|action | [Action](#action) | false | Represents the filter actions which are allowed for the transformation of a message that have been matched by a filter expression. |
|correlationFilter | [CorrelationFilter](#correlationfilter) | false | Properties of correlationFilter |
|filterType | [FilterType](#filtertype) | false | Filter type that is evaluated against a BrokeredMessage. |
|sqlFilter | [SqlFilter](#sqlfilter) | false | Properties of sqlFilter |
        
## Action

Represents the filter actions which are allowed for the transformation of a message that have been matched by a filter expression.

```puppet
$azure_action = {
  compatibilityLevel => "1234 (optional)",
  requiresPreprocessing => "requiresPreprocessing (optional)",
  sqlExpression => "sqlExpression (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|compatibilityLevel | Integer | false | This property is reserved for future use. An integer value showing the compatibility level, currently hard-coded to 20. |
|requiresPreprocessing | Boolean | false | Value that indicates whether the rule action requires preprocessing. |
|sqlExpression | String | false | SQL expression. e.g. MyProperty='ABC' |
        
## CorrelationFilter

Represents the correlation filter expression.

```puppet
$azure_correlation_filter = {
  contentType => "contentType (optional)",
  correlationId => "correlationId (optional)",
  label => "label (optional)",
  messageId => "messageId (optional)",
  properties => "properties (optional)",
  replyTo => "replyTo (optional)",
  replyToSessionId => "replyToSessionId (optional)",
  requiresPreprocessing => "requiresPreprocessing (optional)",
  sessionId => "sessionId (optional)",
  to => "to (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|contentType | String | false | Content type of the message. |
|correlationId | String | false | Identifier of the correlation. |
|label | String | false | Application specific label. |
|messageId | String | false | Identifier of the message. |
|properties | Hash | false | dictionary object for custom filters |
|replyTo | String | false | Address of the queue to reply to. |
|replyToSessionId | String | false | Session identifier to reply to. |
|requiresPreprocessing | Boolean | false | Value that indicates whether the rule action requires preprocessing. |
|sessionId | String | false | Session identifier. |
|to | String | false | Address to send to. |
        
## FilterType

Rule filter types

```puppet
$azure_filter_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## SqlFilter

Represents a filter which is a composition of an expression and an action that is executed in the pub/sub pipeline.

```puppet
$azure_sql_filter = {
  requiresPreprocessing => "requiresPreprocessing (optional)",
  sqlExpression => "sqlExpression (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|requiresPreprocessing | Boolean | false | Value that indicates whether the rule action requires preprocessing. |
|sqlExpression | String | false | The SQL expression. e.g. MyProperty='ABC' |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Rule

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/topics/%{topic_name}/subscriptions/%{subscription_name}/rules/%{rule_name}`|Put|Creates a new rule and updates an existing rule|Rules_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/topics/%{topic_name}/subscriptions/%{subscription_name}/rules`|Get|List all the rules within given topic-subscription|Rules_ListBySubscriptions|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/topics/%{topic_name}/subscriptions/%{subscription_name}/rules`|Get|List all the rules within given topic-subscription|Rules_ListBySubscriptions|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/topics/%{topic_name}/subscriptions/%{subscription_name}/rules/%{rule_name}`|Put|Creates a new rule and updates an existing rule|Rules_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/topics/%{topic_name}/subscriptions/%{subscription_name}/rules/%{rule_name}`|Delete|Deletes an existing rule.|Rules_Delete|
