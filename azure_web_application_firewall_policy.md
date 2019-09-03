Document: "webapplicationfirewall"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/frontdoor/resource-manager/Microsoft.Network/stable/2019-03-01/webapplicationfirewall.json")

## WebApplicationFirewallPolicy

Defines web application firewall policy.

```puppet
azure_web_application_firewall_policy {
  api_version => "api_version",
  etag => "etag (optional)",
  location => "location (optional)",
  parameters => "parameters",
  policy_name => "policy_name",
  properties => $azure_web_application_firewall_policy_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|etag | String | false | Gets a unique read-only string that changes whenever the resource is updated. |
|location | String | false | Resource location. |
|parameters | Hash | true | Policy to be created. |
|policy_name | String | true | The name of the Web Application Firewall Policy. |
|properties | [WebApplicationFirewallPolicyProperties](#webapplicationfirewallpolicyproperties) | false | Properties of the web application firewall policy. |
|resource_group_name | String | true | Name of the Resource group within the Azure subscription. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
        
## WebApplicationFirewallPolicyProperties

Defines web application firewall policy properties.

```puppet
$azure_web_application_firewall_policy_properties = {
  customRules => $azure_custom_rule_list
  frontendEndpointLinks => $azure_frontend_endpoint_link
  managedRules => $azure_managed_rule_set_list
  policySettings => $azure_policy_settings
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|customRules | [CustomRuleList](#customrulelist) | false | Describes custom rules inside the policy. |
|frontendEndpointLinks | [FrontendEndpointLink](#frontendendpointlink) | false | Describes Frontend Endpoints associated with this Web Application Firewall policy. |
|managedRules | [ManagedRuleSetList](#managedrulesetlist) | false | Describes managed rules inside the policy. |
|policySettings | [PolicySettings](#policysettings) | false | Describes settings for the policy. |
        
## CustomRuleList

Defines contents of custom rules

```puppet
$azure_custom_rule_list = {
  rules => $azure_custom_rule
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|rules | [CustomRule](#customrule) | false | List of rules |
        
## CustomRule

Defines contents of a web application rule

```puppet
$azure_custom_rule = {
  action => $azure_action_type
  enabledState => "enabledState (optional)",
  matchConditions => $azure_match_condition
  name => "name (optional)",
  priority => "1234",
  rateLimitDurationInMinutes => "1234 (optional)",
  rateLimitThreshold => "1234 (optional)",
  ruleType => "ruleType",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|action | [ActionType](#actiontype) | true | Describes what action to be applied when rule matches. |
|enabledState | String | false | Describes if the custom rule is in enabled or disabled state. Defaults to Enabled if not specified. |
|matchConditions | [MatchCondition](#matchcondition) | true | List of match conditions. |
|name | String | false | Describes the name of the rule. |
|priority | Integer | true | Describes priority of the rule. Rules with a lower value will be evaluated before rules with a higher value. |
|rateLimitDurationInMinutes | Integer | false | Time window for resetting the rate limit count. Default is 1 minute. |
|rateLimitThreshold | Integer | false | Number of allowed requests per client within the time window. |
|ruleType | String | true | Describes type of rule. |
        
## ActionType

Defines the action to take on rule match.

```puppet
$azure_action_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## MatchCondition

Define a match condition.

```puppet
$azure_match_condition = {
  matchValue => "matchValue",
  matchVariable => "matchVariable",
  negateCondition => "negateCondition (optional)",
  operator => "operator",
  selector => "selector (optional)",
  transforms => $azure_transform_type
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|matchValue | Array | true | List of possible match values. |
|matchVariable | String | true | Request variable to compare with. |
|negateCondition | Boolean | false | Describes if the result of this condition should be negated. |
|operator | String | true | Comparison type to use for matching with the variable value. |
|selector | String | false | Match against a specific key from the QueryString, PostArgs, RequestHeader or Cookies variables. Default is null. |
|transforms | [TransformType](#transformtype) | false | List of transforms. |
        
## TransformType

Describes what transforms applied before matching.

```puppet
$azure_transform_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## FrontendEndpointLink

Defines the Resource ID for a Frontend Endpoint.

```puppet
$azure_frontend_endpoint_link = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
        
## ManagedRuleSetList

Defines the list of managed rule sets for the policy.

```puppet
$azure_managed_rule_set_list = {
  managedRuleSets => $azure_managed_rule_set
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|managedRuleSets | [ManagedRuleSet](#managedruleset) | false | List of rule sets. |
        
## ManagedRuleSet

Defines a managed rule set.

```puppet
$azure_managed_rule_set = {
  ruleGroupOverrides => $azure_managed_rule_group_override
  ruleSetType => "ruleSetType",
  ruleSetVersion => "ruleSetVersion",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|ruleGroupOverrides | [ManagedRuleGroupOverride](#managedrulegroupoverride) | false | Defines the rule group overrides to apply to the rule set. |
|ruleSetType | String | true | Defines the rule set type to use. |
|ruleSetVersion | String | true | Defines the version of the rule set to use. |
        
## ManagedRuleGroupOverride

Defines a managed rule group override setting.

```puppet
$azure_managed_rule_group_override = {
  ruleGroupName => "ruleGroupName",
  rules => $azure_managed_rule_override
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|ruleGroupName | String | true | Describes the managed rule group to override. |
|rules | [ManagedRuleOverride](#managedruleoverride) | false | List of rules that will be disabled. If none specified, all rules in the group will be disabled. |
        
## ManagedRuleOverride

Defines a managed rule group override setting.

```puppet
$azure_managed_rule_override = {
  action => $azure_action_type
  enabledState => "enabledState (optional)",
  ruleId => "ruleId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|action | [ActionType](#actiontype) | false | Describes the override action to be applied when rule matches. |
|enabledState | String | false | Describes if the managed rule is in enabled or disabled state. Defaults to Disabled if not specified. |
|ruleId | String | true | Identifier for the managed rule. |
        
        
## PolicySettings

Defines top-level WebApplicationFirewallPolicy configuration settings.

```puppet
$azure_policy_settings = {
  customBlockResponseBody => "customBlockResponseBody (optional)",
  customBlockResponseStatusCode => "1234 (optional)",
  enabledState => "enabledState (optional)",
  mode => "mode (optional)",
  redirectUrl => "redirectUrl (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|customBlockResponseBody | String | false | If the action type is block, customer can override the response body. The body must be specified in base64 encoding. |
|customBlockResponseStatusCode | Integer | false | If the action type is block, customer can override the response status code. |
|enabledState | String | false | Describes if the policy is in enabled or disabled state. Defaults to Enabled if not specified. |
|mode | String | false | Describes if it is in detection mode or prevention mode at policy level. |
|redirectUrl | String | false | If action type is redirect, this field represents redirect URL for the client. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the WebApplicationFirewallPolicy

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/FrontDoorWebApplicationFirewallPolicies/%{policy_name}`|Put|Create or update policy with specified rule set name within a resource group.|Policies_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/FrontDoorWebApplicationFirewallPolicies/%{policy_name}`|Get|Retrieve protection policy with specified name within a resource group.|Policies_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/FrontDoorWebApplicationFirewallPolicies`|Get|Lists all of the protection policies within a resource group.|Policies_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/FrontDoorWebApplicationFirewallPolicies/%{policy_name}`|Put|Create or update policy with specified rule set name within a resource group.|Policies_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/FrontDoorWebApplicationFirewallPolicies/%{policy_name}`|Delete|Deletes Policy|Policies_Delete|
