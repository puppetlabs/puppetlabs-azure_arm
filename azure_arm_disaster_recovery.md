Document: "EventHub"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/eventhub/resource-manager/Microsoft.EventHub/stable/2017-04-01/EventHub.json")

## ArmDisasterRecovery

Single item in List or Get Alias(Disaster Recovery configuration) operation

```puppet
azure_arm_disaster_recovery {
  alias => "alias",
  api_version => "api_version",
  namespace_name => "namespace_name",
  parameters => "parameters",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|alias | String | true | The Disaster Recovery configuration name |
|api_version | String | true | Client API Version. |
|namespace_name | String | true | The Namespace name |
|parameters | Hash | true | Parameters required to create an Alias(Disaster Recovery configuration) |
|properties | String | false | Properties required to the Create Or Update Alias(Disaster Recovery configurations) |
|resource_group_name | String | true | Name of the resource group within the azure subscription. |
|subscription_id | String | true | Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ArmDisasterRecovery

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/disasterRecoveryConfigs/%{alias}`|Put|Creates or updates a new Alias(Disaster Recovery configuration)|DisasterRecoveryConfigs_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/disasterRecoveryConfigs/%{alias}`|Get|Retrieves Alias(Disaster Recovery configuration) for primary or secondary namespace|DisasterRecoveryConfigs_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/disasterRecoveryConfigs`|Get|Gets all Alias(Disaster Recovery configurations)|DisasterRecoveryConfigs_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/disasterRecoveryConfigs/%{alias}`|Put|Creates or updates a new Alias(Disaster Recovery configuration)|DisasterRecoveryConfigs_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}/disasterRecoveryConfigs/%{alias}`|Delete|Deletes an Alias(Disaster Recovery configuration)|DisasterRecoveryConfigs_Delete|
