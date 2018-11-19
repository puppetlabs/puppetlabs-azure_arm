Document: "servicebus"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/servicebus/resource-manager/Microsoft.ServiceBus/stable/2017-04-01/servicebus.json")

## MigrationConfigProperties

Single item in List or Get Migration Config operation

```puppet
azure_migration_config_properties {
  api_version => "api_version",
  config_name => "config_name",
  namespace_name => "namespace_name",
  parameters => "parameters",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|config_name | String | true | The configuration name. Should always be '$default'. |
|namespace_name | String | true | The namespace name |
|parameters | Hash | true | Parameters required to create Migration Configuration |
|properties | String | false | Properties required to the Create Migration Configuration |
|resource_group_name | String | true | Name of the Resource group within the Azure subscription. |
|subscription_id | String | true | Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the MigrationConfigProperties

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/migrationConfigurations/%{config_name}`|Put|Creates Migration configuration and starts migration of enties from Standard to Premium namespace|MigrationConfigs_CreateAndStartMigration|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/migrationConfigurations/%{config_name}`|Get|Retrieves Migration Config|MigrationConfigs_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/migrationConfigurations`|Get|Gets all migrationConfigurations|MigrationConfigs_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/migrationConfigurations/%{config_name}`|Put|Creates Migration configuration and starts migration of enties from Standard to Premium namespace|MigrationConfigs_CreateAndStartMigration|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}/migrationConfigurations/%{config_name}`|Delete|Deletes a MigrationConfiguration|MigrationConfigs_Delete|
