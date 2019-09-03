Document: "logic"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/logic/resource-manager/Microsoft.Logic/stable/2016-06-01/logic.json")

## Aiarnpc

The integration account RosettaNet process configuration.

```puppet
azure_aiarnpc {
  api_version => "api_version",
  integration_account_name => "integration_account_name",
  location => "location (optional)",
  properties => $azure_integration_account_rosetta_net_process_configuration_properties
  resource_group_name => "resource_group_name",
  rosetta_net_process_configuration => "rosettaNetProcessConfiguration",
  rosetta_net_process_configuration_name => "rosetta_net_process_configuration_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|integration_account_name | String | true | The integration account name. |
|location | String | false | The resource location. |
|properties | [IntegrationAccountRosettaNetProcessConfigurationProperties](#integrationaccountrosettanetprocessconfigurationproperties) | true | The integration account RosettaNet process configuration properties. |
|resource_group_name | String | true | The resource group name. |
|rosetta_net_process_configuration | Hash | true | The integration account RosettaNet ProcessConfiguration. |
|rosetta_net_process_configuration_name | String | true | The integration account RosettaNet ProcessConfiguration name. |
|subscription_id | String | true | The subscription id. |
|tags | Hash | false | The resource tags. |
        
## IntegrationAccountRosettaNetProcessConfigurationProperties

The integration account RosettaNet process configuration properties.

```puppet
$azure_integration_account_rosetta_net_process_configuration_properties = {
  activitySettings => $azure_rosetta_net_pip_activity_settings
  description => "description (optional)",
  initiatorRoleSettings => $azure_rosetta_net_pip_role_settings
  metadata => "metadata (optional)",
  processCode => "processCode",
  processName => "processName",
  processVersion => "processVersion",
  responderRoleSettings => $azure_rosetta_net_pip_role_settings
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|activitySettings | [RosettaNetPipActivitySettings](#rosettanetpipactivitysettings) | true | The RosettaNet process configuration activity settings. |
|description | String | false | The integration account RosettaNet ProcessConfiguration properties. |
|initiatorRoleSettings | [RosettaNetPipRoleSettings](#rosettanetpiprolesettings) | true | The RosettaNet initiator role settings. |
|metadata | Hash | false | The metadata. |
|processCode | String | true | The integration account RosettaNet process code. |
|processName | String | true | The integration account RosettaNet process name. |
|processVersion | String | true | The integration account RosettaNet process version. |
|responderRoleSettings | [RosettaNetPipRoleSettings](#rosettanetpiprolesettings) | true | The RosettaNet responder role settings. |
        
## RosettaNetPipActivitySettings

The integration account RosettaNet ProcessConfiguration activity settings.

```puppet
$azure_rosetta_net_pip_activity_settings = {
  acknowledgmentOfReceiptSettings => $azure_rosetta_net_pip_acknowledgment_of_receipt_settings
  activityBehavior => $azure_rosetta_net_pip_activity_behavior
  activityType => $azure_rosetta_net_pip_activity_type
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|acknowledgmentOfReceiptSettings | [RosettaNetPipAcknowledgmentOfReceiptSettings](#rosettanetpipacknowledgmentofreceiptsettings) | true | The RosettaNet ProcessConfiguration acknowledgement settings. |
|activityBehavior | [RosettaNetPipActivityBehavior](#rosettanetpipactivitybehavior) | true | The RosettaNet ProcessConfiguration activity behavior. |
|activityType | [RosettaNetPipActivityType](#rosettanetpipactivitytype) | true | The RosettaNet ProcessConfiguration activity type. |
        
## RosettaNetPipAcknowledgmentOfReceiptSettings

The integration account RosettaNet ProcessConfiguration Acknowledgement settings.

```puppet
$azure_rosetta_net_pip_acknowledgment_of_receipt_settings = {
  isNonRepudiationRequired => "isNonRepudiationRequired",
  timeToAcknowledgeInSeconds => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|isNonRepudiationRequired | Boolean | true | The non-repudiation is required or not. |
|timeToAcknowledgeInSeconds | Integer | true | The time to acknowledge in seconds. |
        
## RosettaNetPipActivityBehavior

The integration account RosettaNet ProcessConfiguration activity behavior.

```puppet
$azure_rosetta_net_pip_activity_behavior = {
  actionType => $azure_rosetta_net_action_type
  isAuthorizationRequired => "isAuthorizationRequired",
  isSecuredTransportRequired => "isSecuredTransportRequired",
  nonRepudiationOfOriginAndContent => "nonRepudiationOfOriginAndContent",
  persistentConfidentialityScope => $azure_rosetta_net_pip_confidentiality_scope
  responseType => $azure_rosetta_net_response_type
  retryCount => "1234",
  timeToPerformInSeconds => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|actionType | [RosettaNetActionType](#rosettanetactiontype) | true | The value indicating whether the RosettaNet PIP is used for a single action. |
|isAuthorizationRequired | Boolean | true | The value indicating whether authorization is required. |
|isSecuredTransportRequired | Boolean | true | The value indicating whether secured transport is required. |
|nonRepudiationOfOriginAndContent | Boolean | true | The value indicating whether non-repudiation is for origin and content. |
|persistentConfidentialityScope | [RosettaNetPipConfidentialityScope](#rosettanetpipconfidentialityscope) | true | The persistent confidentiality encryption scope. |
|responseType | [RosettaNetResponseType](#rosettanetresponsetype) | true | The value indicating whether the RosettaNet PIP communication is synchronous. |
|retryCount | Integer | true | The value indicating retry count. |
|timeToPerformInSeconds | Integer | true | The time to perform in seconds. |
        
## RosettaNetActionType



```puppet
$azure_rosetta_net_action_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## RosettaNetPipConfidentialityScope



```puppet
$azure_rosetta_net_pip_confidentiality_scope = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## RosettaNetResponseType



```puppet
$azure_rosetta_net_response_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## RosettaNetPipActivityType



```puppet
$azure_rosetta_net_pip_activity_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## RosettaNetPipRoleSettings

The integration account RosettaNet ProcessConfiguration role settings.

```puppet
$azure_rosetta_net_pip_role_settings = {
  action => "action",
  businessDocument => $azure_rosetta_net_pip_business_document
  description => "description (optional)",
  role => "role",
  roleType => $azure_rosetta_net_pip_role_type
  service => "service",
  serviceClassification => "serviceClassification",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|action | String | true | The action name. |
|businessDocument | [RosettaNetPipBusinessDocument](#rosettanetpipbusinessdocument) | true | The RosettaNet ProcessConfiguration business document. |
|description | String | false | The description. |
|role | String | true | The role name. |
|roleType | [RosettaNetPipRoleType](#rosettanetpiproletype) | true | The RosettaNet ProcessConfiguration role type. |
|service | String | true | The service name. |
|serviceClassification | String | true | The service classification name. |
        
## RosettaNetPipBusinessDocument

The RosettaNet ProcessConfiguration business document settings.

```puppet
$azure_rosetta_net_pip_business_document = {
  description => "description (optional)",
  name => "name",
  version => "version",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | The business document description. |
|name | String | true | The business document name. |
|version | String | true | The business document version. |
        
## RosettaNetPipRoleType



```puppet
$azure_rosetta_net_pip_role_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the aiarnpc

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/rosettanetprocessconfigurations/%{rosetta_net_process_configuration_name}`|Put|Creates or updates an integration account RosettaNetProcessConfiguration.|RosettaNetProcessConfigurations_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/rosettanetprocessconfigurations/%{rosetta_net_process_configuration_name}`|Get|Gets an integration account RosettaNetProcessConfiguration.|RosettaNetProcessConfigurations_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/rosettanetprocessconfigurations`|Get|Gets a list of integration account RosettaNet process configurations.|RosettaNetProcessConfigurations_ListByIntegrationAccounts|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/rosettanetprocessconfigurations/%{rosetta_net_process_configuration_name}`|Put|Creates or updates an integration account RosettaNetProcessConfiguration.|RosettaNetProcessConfigurations_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/rosettanetprocessconfigurations/%{rosetta_net_process_configuration_name}`|Delete|Deletes an integration account RosettaNet ProcessConfiguration.|RosettaNetProcessConfigurations_Delete|
