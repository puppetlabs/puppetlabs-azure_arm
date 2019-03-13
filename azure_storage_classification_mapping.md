Document: "service"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/recoveryservicessiterecovery/resource-manager/Microsoft.RecoveryServices/stable/2018-01-10/service.json")

## StorageClassificationMapping

Storage mapping object.

```puppet
azure_storage_classification_mapping {
  api_version => "api_version",
  fabric_name => "fabric_name",
  location => "location (optional)",
  pairing_input => "pairingInput",
  properties => $azure_storage_classification_mapping_properties
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  storage_classification_name => "storage_classification_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|fabric_name | String | true | Fabric name. |
|location | String | false | Resource Location |
|pairing_input | Hash | true | Pairing input. |
|properties | [StorageClassificationMappingProperties](#storageclassificationmappingproperties) | false | Properties of the storage mapping object. |
|resource_group_name | String | true | The name of the resource group where the recovery services vault is present. |
|resource_name | String | true | The name of the recovery services vault. |
|storage_classification_name | String | true | Storage classification name. |
|subscription_id | String | true | The subscription Id. |
        
## StorageClassificationMappingProperties

Storage mapping properties.

```puppet
$azure_storage_classification_mapping_properties = {
  targetStorageClassificationId => "targetStorageClassificationId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|targetStorageClassificationId | String | false | Target storage object Id. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the StorageClassificationMapping

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationStorageClassifications/%{storage_classification_name}/replicationStorageClassificationMappings/%{storage_classification_mapping_name}`|Put|The operation to create a storage classification mapping.|ReplicationStorageClassificationMappings_Create|
|List - list all|``||||
|List - get one|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationStorageClassifications/%{storage_classification_name}/replicationStorageClassificationMappings/%{storage_classification_mapping_name}`|Get|Gets the details of the specified storage classification mapping.|ReplicationStorageClassificationMappings_Get|
|List - get list using params|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationStorageClassificationMappings`|Get|Lists the storage classification mappings in the vault.|ReplicationStorageClassificationMappings_List|
|Update|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationStorageClassifications/%{storage_classification_name}/replicationStorageClassificationMappings/%{storage_classification_mapping_name}`|Put|The operation to create a storage classification mapping.|ReplicationStorageClassificationMappings_Create|
|Delete|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationStorageClassifications/%{storage_classification_name}/replicationStorageClassificationMappings/%{storage_classification_mapping_name}`|Delete|The operation to delete a storage classification mapping.|ReplicationStorageClassificationMappings_Delete|
