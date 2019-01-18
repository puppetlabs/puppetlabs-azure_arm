Document: "disasterRecoveryConfigurations"


Path: "/tmp/azure-rest-api-specs/specification/sql/resource-manager/Microsoft.Sql/stable/2014-04-01/disasterRecoveryConfigurations.json")

## DisasterRecoveryConfiguration

Represents a disaster recovery configuration.

```puppet
azure_disaster_recovery_configuration {
  api_version => "api_version",
  properties => $azure_disaster_recovery_configuration_properties
  resource_group_name => "resource_group_name",
  server_name => "server_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the request. |
|properties | [DisasterRecoveryConfigurationProperties](#disasterrecoveryconfigurationproperties) | true | The properties representing the resource. |
|resource_group_name | String | true | The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal. |
|server_name | String | true | The name of the server. |
|subscription_id | String | true | The subscription ID that identifies an Azure subscription. |
        
## DisasterRecoveryConfigurationProperties

Represents the properties of a disaster recovery configuration.

```puppet
$azure_disaster_recovery_configuration_properties = {
  autoFailover => "autoFailover",
  failoverPolicy => "failoverPolicy",
  partnerServerId => "partnerServerId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|autoFailover | String | true | Whether or not failover can be done automatically. |
|failoverPolicy | String | true | How aggressive the automatic failover should be. |
|partnerServerId | String | true | Id of the partner server. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DisasterRecoveryConfiguration

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/disasterRecoveryConfiguration/%{disaster_recovery_configuration_name}`|Put|Creates or updates a disaster recovery configuration.|DisasterRecoveryConfigurations_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/disasterRecoveryConfiguration/%{disaster_recovery_configuration_name}`|Get|Gets a disaster recovery configuration.|DisasterRecoveryConfigurations_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/disasterRecoveryConfiguration`|Get|Lists a server's disaster recovery configuration.|DisasterRecoveryConfigurations_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/disasterRecoveryConfiguration/%{disaster_recovery_configuration_name}`|Put|Creates or updates a disaster recovery configuration.|DisasterRecoveryConfigurations_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Sql/servers/%{server_name}/disasterRecoveryConfiguration/%{disaster_recovery_configuration_name}`|Delete|Deletes a disaster recovery configuration.|DisasterRecoveryConfigurations_Delete|
