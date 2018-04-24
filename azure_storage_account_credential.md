Document: "storsimple"
Path: "/root/specs/specification/storsimple8000series/resource-manager/Microsoft.StorSimple/stable/2017-06-01/storsimple.json")

## StorageAccountCredential

```puppet
azure_storage_account_credential {
  api_version => "api_version",
  id => "id (optional)",
  kind => "kind (optional)",
  manager_name => "manager_name",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_storage_account_credential_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The api version |
|id | String | false | The path ID that uniquely identifies the object. |
|kind | String | false | The Kind of the object. Currently only Series8000 is supported |
|manager_name | String | true | The manager name |
|name | String | false | The name of the object. |
|parameters | Hash | true | The storage account credential to be added or updated. |
|properties | [StorageAccountCredentialProperties](#storageaccountcredentialproperties) | true | The storage account credential properties. |
|resource_group_name | String | true | The resource group name |
|subscription_id | String | true | The subscription id |
|type | String | false | The hierarchical type of the object. |
        
## StorageAccountCredentialProperties

```puppet
$azure_storage_account_credential_properties = {
  accessKey => $azure_asymmetric_encrypted_secret
  endPoint => "endPoint",
  sslStatus => "sslStatus",
  volumesCount => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accessKey | [AsymmetricEncryptedSecret](#asymmetricencryptedsecret) | false | The details of the storage account password. |
|endPoint | String | true | The storage endpoint |
|sslStatus | String | true | Signifies whether SSL needs to be enabled or not. |
|volumesCount | Integer | false | The count of volumes using this storage account credential. |
        
## AsymmetricEncryptedSecret

```puppet
$azure_asymmetric_encrypted_secret = {
  encryptionAlgorithm => "encryptionAlgorithm",
  encryptionCertThumbprint => "encryptionCertThumbprint (optional)",
  value => "value",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|encryptionAlgorithm | String | true | The algorithm used to encrypt 'Value'. |
|encryptionCertThumbprint | String | false | Thumbprint certificate that was used to encrypt 'Value'. If the value in unencrypted, it will be null. |
|value | String | true | The value of the secret. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the StorageAccountCredential

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/storageAccountCredentials/%{storage_account_credential_name}`|Put|Creates or updates the storage account credential.|StorageAccountCredentials_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/storageAccountCredentials/%{storage_account_credential_name}`|Get|Gets the properties of the specified storage account credential name.|StorageAccountCredentials_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/storageAccountCredentials`|Get|Gets all the storage account credentials in a manager.|StorageAccountCredentials_ListByManager|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/storageAccountCredentials/%{storage_account_credential_name}`|Put|Creates or updates the storage account credential.|StorageAccountCredentials_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.StorSimple/managers/%{manager_name}/storageAccountCredentials/%{storage_account_credential_name}`|Delete|Deletes the storage account credential.|StorageAccountCredentials_Delete|