Document: "service"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/recoveryservicessiterecovery/resource-manager/Microsoft.RecoveryServices/stable/2018-01-10/service.json")

## NetworkMapping

Network Mapping model. Ideally it should have been possible to inherit this class from prev version in InheritedModels as long as there is no difference in structure or method signature. Since there were no base Models for certain fields and methods viz NetworkMappingProperties and Load with required return type, the class has been introduced in its entirety with references to base models to facilitate exensions in subsequent versions.

```puppet
azure_network_mapping {
  api_version => "api_version",
  fabric_name => "fabric_name",
  input => "input",
  location => "location (optional)",
  network_name => "network_name",
  properties => $azure_network_mapping_properties
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|fabric_name | String | true | Primary fabric name. |
|input | Hash | true | Create network mapping input. |
|location | String | false | Resource Location |
|network_name | String | true | Primary network name. |
|properties | [NetworkMappingProperties](#networkmappingproperties) | false | The Network Mapping Properties. |
|resource_group_name | String | true | The name of the resource group where the recovery services vault is present. |
|resource_name | String | true | The name of the recovery services vault. |
|subscription_id | String | true | The subscription Id. |
        
## NetworkMappingProperties

Network Mapping Properties.

```puppet
$azure_network_mapping_properties = {
  fabricSpecificSettings => $azure_network_mapping_fabric_specific_settings
  primaryFabricFriendlyName => "primaryFabricFriendlyName (optional)",
  primaryNetworkFriendlyName => "primaryNetworkFriendlyName (optional)",
  primaryNetworkId => "primaryNetworkId (optional)",
  recoveryFabricArmId => "recoveryFabricArmId (optional)",
  recoveryFabricFriendlyName => "recoveryFabricFriendlyName (optional)",
  recoveryNetworkFriendlyName => "recoveryNetworkFriendlyName (optional)",
  recoveryNetworkId => "recoveryNetworkId (optional)",
  state => "state (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|fabricSpecificSettings | [NetworkMappingFabricSpecificSettings](#networkmappingfabricspecificsettings) | false | The fabric specific settings. |
|primaryFabricFriendlyName | String | false | The primary fabric friendly name. |
|primaryNetworkFriendlyName | String | false | The primary network friendly name. |
|primaryNetworkId | String | false | The primary network id for network mapping. |
|recoveryFabricArmId | String | false | The recovery fabric ARM id. |
|recoveryFabricFriendlyName | String | false | The recovery fabric friendly name. |
|recoveryNetworkFriendlyName | String | false | The recovery network friendly name. |
|recoveryNetworkId | String | false | The recovery network id for network mapping. |
|state | String | false | The pairing state for network mapping. |
        
## NetworkMappingFabricSpecificSettings

Network Mapping fabric specific settings.

```puppet
$azure_network_mapping_fabric_specific_settings = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the NetworkMapping

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationNetworks/%{network_name}/replicationNetworkMappings/%{network_mapping_name}`|Put|The operation to create an ASR network mapping.|ReplicationNetworkMappings_Create|
|List - list all|``||||
|List - get one|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationNetworks/%{network_name}/replicationNetworkMappings/%{network_mapping_name}`|Get|Gets the details of an ASR network mapping|ReplicationNetworkMappings_Get|
|List - get list using params|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationNetworks/%{network_name}/replicationNetworkMappings`|Get|Lists all ASR network mappings for the specified network.|ReplicationNetworkMappings_ListByReplicationNetworks|
|Update|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationNetworks/%{network_name}/replicationNetworkMappings/%{network_mapping_name}`|Put|The operation to create an ASR network mapping.|ReplicationNetworkMappings_Create|
|Delete|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationNetworks/%{network_name}/replicationNetworkMappings/%{network_mapping_name}`|Delete|The operation to delete a network mapping.|ReplicationNetworkMappings_Delete|
