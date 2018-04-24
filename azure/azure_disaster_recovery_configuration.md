Document: "disasterRecoveryConfigurations"
Path: "/root/specs/specification/sql/resource-manager/Microsoft.Sql/stable/2014-04-01/disasterRecoveryConfigurations.json")

## DisasterRecoveryConfiguration

```puppet
azure_disaster_recovery_configuration {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_disaster_recovery_configuration_properties
  resource_group_name => "resource_group_name",
  server_name => "server_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the request. |
|id | String | false | Resource ID. |
|location | String | false | Location of the server that contains this disaster recovery configuration. |
|name | String | false | Resource name. |
|properties | [DisasterRecoveryConfigurationProperties](#disasterrecoveryconfigurationproperties) | true | The properties representing the resource. |
|resource_group_name | String | true | The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal. |
|server_name | String | true | The name of the server. |
|subscription_id | String | true | The subscription ID that identifies an Azure subscription. |
|type | String | false | Type of resource this is. |
        
## DisasterRecoveryConfigurationProperties

```puppet
$azure_disaster_recovery_configuration_properties = {
  autoFailover => "autoFailover",
  failoverPolicy => "failoverPolicy",
  logicalServerName => "logicalServerName (optional)",
  partnerLogicalServerName => "partnerLogicalServerName (optional)",
  partnerServerId => "partnerServerId",
  role => "role (optional)",
  status => "status (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|autoFailover | String | true | Whether or not failover can be done automatically. |
|failoverPolicy | String | true | How aggressive the automatic failover should be. |
|logicalServerName | String | false | Logical name of the server. |
|partnerLogicalServerName | String | false | Logical name of the partner server. |
|partnerServerId | String | true | Id of the partner server. |
|role | String | false | The role of the current server in the disaster recovery configuration. |
|status | String | false | The status of the disaster recovery configuration. |



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