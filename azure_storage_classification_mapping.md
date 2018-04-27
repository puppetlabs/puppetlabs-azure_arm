Document: "service"
Path: "/root/specs/specification/recoveryservicessiterecovery/resource-manager/Microsoft.RecoveryServices/stable/2018-01-10/service.json")

## StorageClassificationMapping

```puppet
azure_storage_classification_mapping {
  api_version => "api_version",
  fabric_name => "fabric_name",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  pairing_input => "pairingInput",
  properties => $azure_storage_classification_mapping_properties
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  storage_classification_name => "storage_classification_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|fabric_name | String | true | Fabric name. |
|id | String | false | Resource Id |
|location | String | false | Resource Location |
|name | String | false | Resource Name |
|pairing_input | Hash | true | Pairing input. |
|properties | [StorageClassificationMappingProperties](#storageclassificationmappingproperties) | false | Proprties of the storage mappping object. |
|resource_group_name | String | true | The name of the resource group where the recovery services vault is present. |
|resource_name | String | true | The name of the recovery services vault. |
|storage_classification_name | String | true | Storage classification name. |
|subscription_id | String | true | The subscription Id. |
|type | String | false | Resource Type |
        
## StorageClassificationMappingProperties

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
|List - get list using params|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationStorageClassifications/%{storage_classification_name}/replicationStorageClassificationMappings`|Get|Lists the storage classification mappings for the fabric.|ReplicationStorageClassificationMappings_ListByReplicationStorageClassifications|
|Update|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationStorageClassifications/%{storage_classification_name}/replicationStorageClassificationMappings/%{storage_classification_mapping_name}`|Put|The operation to create a storage classification mapping.|ReplicationStorageClassificationMappings_Create|
|Delete|`/Subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.RecoveryServices/vaults/%{resource_name}/replicationFabrics/%{fabric_name}/replicationStorageClassifications/%{storage_classification_name}/replicationStorageClassificationMappings/%{storage_classification_mapping_name}`|Delete|The operation to delete a storage classification mapping.|ReplicationStorageClassificationMappings_Delete|