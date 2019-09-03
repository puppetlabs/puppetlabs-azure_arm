Document: "hybriddata"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/hybriddatamanager/resource-manager/Microsoft.HybridData/stable/2016-06-01/hybriddata.json")

## DataStore

Data store.

```puppet
azure_data_store {
  api_version => "api_version",
  data_manager_name => "data_manager_name",
  data_store => "dataStore",
  properties => $azure_data_store_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API Version |
|data_manager_name | String | true | The name of the DataManager Resource within the specified resource group. DataManager names must be between 3 and 24 characters in length and use any alphanumeric and underscore only |
|data_store | Hash | true | The data store/repository object to be created or updated. |
|properties | [DataStoreProperties](#datastoreproperties) | true | DataStore properties. |
|resource_group_name | String | true | The Resource Group Name |
|subscription_id | String | true | The Subscription Id |
        
## DataStoreProperties

Data Store for sources and sinks

```puppet
$azure_data_store_properties = {
  customerSecrets => $azure_customer_secret
  dataStoreTypeId => "dataStoreTypeId",
  extendedProperties => "extendedProperties (optional)",
  repositoryId => "repositoryId (optional)",
  state => "state",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|customerSecrets | [CustomerSecret](#customersecret) | false | List of customer secrets containing a key identifier and key value. The key identifier is a way for the specific data source to understand the key. Value contains customer secret encrypted by the encryptionKeys. |
|dataStoreTypeId | String | true | The arm id of the data store type. |
|extendedProperties | Hash | false | A generic json used differently by each data source type. |
|repositoryId | String | false | Arm Id for the manager resource to which the data source is associated. This is optional. |
|state | String | true | State of the data source. |
        
## CustomerSecret

The pair of customer secret.

```puppet
$azure_customer_secret = {
  algorithm => "algorithm",
  keyIdentifier => "keyIdentifier",
  keyValue => "keyValue",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|algorithm | String | true | The encryption algorithm used to encrypt data. |
|keyIdentifier | String | true | The identifier to the data service input object which this secret corresponds to. |
|keyValue | String | true | It contains the encrypted customer secret. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DataStore

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.HybridData/dataManagers/%{data_manager_name}/dataStores/%{data_store_name}`|Put|Creates or updates the data store/repository in the data manager.|DataStores_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.HybridData/dataManagers/%{data_manager_name}/dataStores/%{data_store_name}`|Get|This method gets the data store/repository by name.|DataStores_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.HybridData/dataManagers/%{data_manager_name}/dataStores`|Get|Gets all the data stores/repositories in the given resource.|DataStores_ListByDataManager|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.HybridData/dataManagers/%{data_manager_name}/dataStores/%{data_store_name}`|Put|Creates or updates the data store/repository in the data manager.|DataStores_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.HybridData/dataManagers/%{data_manager_name}/dataStores/%{data_store_name}`|Delete|This method deletes the given data store/repository.|DataStores_Delete|
