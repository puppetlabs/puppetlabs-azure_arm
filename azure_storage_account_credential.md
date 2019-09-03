Document: "edgegateway"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/edgegateway/resource-manager/Microsoft.DataBoxEdge/stable/2019-03-01/edgegateway.json")

## StorageAccountCredential

The storage account credential.

```puppet
azure_storage_account_credential {
  api_version => "api_version",
  device_name => "device_name",
  properties => $azure_storage_account_credential_properties
  resource_group_name => "resource_group_name",
  storage_account_credential => "storageAccountCredential",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|device_name | String | true | The device name. |
|properties | [StorageAccountCredentialProperties](#storageaccountcredentialproperties) | true | The storage account credential properties. |
|resource_group_name | String | true | The resource group name. |
|storage_account_credential | Hash | true | The storage account credential. |
|subscription_id | String | true | The subscription ID. |
        
## StorageAccountCredentialProperties

The storage account credential properties.

```puppet
$azure_storage_account_credential_properties = {
  accountKey => $azure_asymmetric_encrypted_secret
  accountType => "accountType",
  alias => "alias",
  blobDomainName => "blobDomainName (optional)",
  connectionString => "connectionString (optional)",
  sslStatus => "sslStatus",
  userName => "userName (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accountKey | [AsymmetricEncryptedSecret](#asymmetricencryptedsecret) | false | Encrypted storage key. |
|accountType | String | true | Type of storage accessed on the storage account. |
|alias | String | true | Alias for the storage account. |
|blobDomainName | String | false | Blob end point for private clouds. |
|connectionString | String | false | Connection string for the storage account. Use this string if username and account key are not specified. |
|sslStatus | String | true | Signifies whether SSL needs to be enabled or not. |
|userName | String | false | Username for the storage account. |
        
## AsymmetricEncryptedSecret

Represent the secrets intended for encryption with asymmetric key pair.

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
|encryptionCertThumbprint | String | false | Thumbprint certificate used to encrypt \'Value\'. If the value is unencrypted, it will be null. |
|value | String | true | The value of the secret. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the StorageAccountCredential

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/storageAccountCredentials/%{name}`|Put|Creates or updates the storage account credential.|StorageAccountCredentials_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/storageAccountCredentials/%{name}`|Get|Gets the properties of the specified storage account credential.|StorageAccountCredentials_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/storageAccountCredentials`|Get||StorageAccountCredentials_ListByDataBoxEdgeDevice|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/storageAccountCredentials/%{name}`|Put|Creates or updates the storage account credential.|StorageAccountCredentials_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/storageAccountCredentials/%{name}`|Delete|Deletes the storage account credential.|StorageAccountCredentials_Delete|
