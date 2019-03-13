Document: "ddosCustomPolicy"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/ddosCustomPolicy.json")

## DdosCustomPolicy

A DDoS custom policy in a resource group.

```puppet
azure_ddos_custom_policy {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_ddos_custom_policy_properties_format
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|parameters | Hash | true | Parameters supplied to the create or update operation. |
|properties | [DdosCustomPolicyPropertiesFormat](#ddoscustompolicypropertiesformat) | false | Properties of the DDoS custom policy. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
        
## DdosCustomPolicyPropertiesFormat

DDoS custom policy properties.

```puppet
$azure_ddos_custom_policy_properties_format = {
  protocolCustomSettings => $azure_protocol_custom_settings_format
  publicIPAddresses => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|protocolCustomSettings | [ProtocolCustomSettingsFormat](#protocolcustomsettingsformat) | false | The protocol-specific DDoS policy customization parameters. |
|publicIPAddresses | [SubResource](#subresource) | false | The list of public IPs associated with the DDoS custom policy resource. This list is read-only. |
        
## ProtocolCustomSettingsFormat

DDoS custom policy properties.

```puppet
$azure_protocol_custom_settings_format = {
  protocol => "protocol (optional)",
  sourceRateOverride => "sourceRateOverride (optional)",
  triggerRateOverride => "triggerRateOverride (optional)",
  triggerSensitivityOverride => "triggerSensitivityOverride (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|protocol | String | false | The protocol for which the DDoS protection policy is being customized. |
|sourceRateOverride | String | false | The customized DDoS protection source rate. |
|triggerRateOverride | String | false | The customized DDoS protection trigger rate. |
|triggerSensitivityOverride | String | false | The customized DDoS protection trigger rate sensitivity degrees. High: Trigger rate set with most sensitivity w.r.t. normal traffic. Default: Trigger rate set with moderate sensitivity w.r.t. normal traffic. Low: Trigger rate set with less sensitivity w.r.t. normal traffic. Relaxed: Trigger rate set with least sensitivity w.r.t. normal traffic. |
        
## SubResource

Reference to another subresource.

```puppet
$azure_sub_resource = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DdosCustomPolicy

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/ddosCustomPolicies/%{ddos_custom_policy_name}`|Put|Creates or updates a DDoS custom policy.|DdosCustomPolicies_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/ddosCustomPolicies/%{ddos_custom_policy_name}`|Get|Gets information about the specified DDoS custom policy.|DdosCustomPolicies_Get|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/ddosCustomPolicies/%{ddos_custom_policy_name}`|Put|Creates or updates a DDoS custom policy.|DdosCustomPolicies_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/ddosCustomPolicies/%{ddos_custom_policy_name}`|Delete|Deletes the specified DDoS custom policy.|DdosCustomPolicies_Delete|
