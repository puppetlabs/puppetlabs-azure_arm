Document: "storage"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/storage/resource-manager/Microsoft.Storage/stable/2018-02-01/storage.json")

## StorageAccount

The storage account.

```puppet
azure_storage_account {
  account_name => "account_name",
  api_version => "api_version",
  identity => $azure_identity
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_storage_account_properties
  resource_group_name => "resource_group_name",
  sku => $azure_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |
|api_version | String | true | The API version to use for this operation. |
|identity | [Identity](#identity) | false | The identity of the resource. |
|location | String | false | The geo-location where the resource lives |
|parameters | Hash | true | The parameters to provide for the created account. |
|properties | [StorageAccountProperties](#storageaccountproperties) | false | Properties of the storage account. |
|resource_group_name | String | true | The name of the resource group within the user's subscription. The name is case insensitive. |
|sku | [Sku](#sku) | false | Gets the SKU. |
|subscription_id | String | true | The ID of the target subscription. |
|tags | Hash | false | Resource tags. |
        
## Identity

Identity for the resource.

```puppet
$azure_identity = {
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|type | String | false | The identity type. |
        
## StorageAccountProperties

Properties of the storage account.

```puppet
$azure_storage_account_properties = {
  customDomain => $azure_custom_domain
  encryption => $azure_encryption
  networkAcls => $azure_network_rule_set
  primaryEndpoints => $azure_endpoints
  secondaryEndpoints => $azure_endpoints
  supportsHttpsTrafficOnly => "supportsHttpsTrafficOnly (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|customDomain | [CustomDomain](#customdomain) | false | Gets the custom domain the user assigned to this storage account. |
|encryption | [Encryption](#encryption) | false | Gets the encryption settings on the account. If unspecified, the account is unencrypted. |
|networkAcls | [NetworkRuleSet](#networkruleset) | false | Network rule set |
|primaryEndpoints | [Endpoints](#endpoints) | false | Gets the URLs that are used to perform a retrieval of a public blob, queue, or table object. Note that Standard_ZRS and Premium_LRS accounts only return the blob endpoint. |
|secondaryEndpoints | [Endpoints](#endpoints) | false | Gets the URLs that are used to perform a retrieval of a public blob, queue, or table object from the secondary location of the storage account. Only available if the SKU name is Standard_RAGRS. |
|supportsHttpsTrafficOnly | Boolean | false | Allows https traffic only to storage service if sets to true. |
        
## CustomDomain

The custom domain assigned to this storage account. This can be set via Update.

```puppet
$azure_custom_domain = {
  name => "name",
  useSubDomain => "useSubDomain (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | Gets or sets the custom domain name assigned to the storage account. Name is the CNAME source. |
|useSubDomain | Boolean | false | Indicates whether indirect CName validation is enabled. Default value is false. This should only be set on updates. |
        
## Encryption

The encryption settings on the storage account.

```puppet
$azure_encryption = {
  keySource => "keySource",
  keyvaultproperties => $azure_key_vault_properties
  services => $azure_encryption_services
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|keySource | String | true | The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Storage, Microsoft.Keyvault |
|keyvaultproperties | [KeyVaultProperties](#keyvaultproperties) | false | Properties provided by key vault. |
|services | [EncryptionServices](#encryptionservices) | false | List of services which support encryption. |
        
## KeyVaultProperties

Properties of key vault.

```puppet
$azure_key_vault_properties = {
  keyname => "keyname (optional)",
  keyvaulturi => "keyvaulturi (optional)",
  keyversion => "keyversion (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|keyname | String | false | The name of KeyVault key. |
|keyvaulturi | String | false | The Uri of KeyVault. |
|keyversion | String | false | The version of KeyVault key. |
        
## EncryptionServices

A list of services that support encryption.

```puppet
$azure_encryption_services = {
  blob => $azure_encryption_service
  file => $azure_encryption_service
  queue => $azure_encryption_service
  table => $azure_encryption_service
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|blob | [EncryptionService](#encryptionservice) | false | The encryption function of the blob storage service. |
|file | [EncryptionService](#encryptionservice) | false | The encryption function of the file storage service. |
|queue | [EncryptionService](#encryptionservice) | false | The encryption function of the queue storage service. |
|table | [EncryptionService](#encryptionservice) | false | The encryption function of the table storage service. |
        
## EncryptionService

A service that allows server-side encryption to be used.

```puppet
$azure_encryption_service = {
  enabled => "enabled (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|enabled | Boolean | false | A boolean indicating whether or not the service encrypts the data as it is stored. |
        
        
        
        
## NetworkRuleSet

Network rule set

```puppet
$azure_network_rule_set = {
  bypass => "bypass (optional)",
  defaultAction => "defaultAction",
  ipRules => $azure_ip_rule
  virtualNetworkRules => $azure_virtual_network_rule
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|bypass | String | false | Specifies whether traffic is bypassed for Logging/Metrics/AzureServices. Possible values are any combination of Logging|Metrics|AzureServices (For example, 'Logging, Metrics'), or None to bypass none of those traffics. |
|defaultAction | String | true | Specifies the default action of allow or deny when no other rules match. |
|ipRules | [IPRule](#iprule) | false | Sets the IP ACL rules |
|virtualNetworkRules | [VirtualNetworkRule](#virtualnetworkrule) | false | Sets the virtual network rules |
        
## IPRule

IP rule with specific IP or IP range in CIDR format.

```puppet
$azure_ip_rule = {
  action => "action (optional)",
  value => "value",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|action | String | false | The action of IP ACL rule. |
|value | String | true | Specifies the IP or IP range in CIDR format. Only IPV4 address is allowed. |
        
## VirtualNetworkRule

Virtual Network rule.

```puppet
$azure_virtual_network_rule = {
  action => "action (optional)",
  id => "id",
  state => "state (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|action | String | false | The action of virtual network rule. |
|id | String | true | Resource ID of a subnet, for example: /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.Network/virtualNetworks/{vnetName}/subnets/{subnetName}. |
|state | String | false | Gets the state of virtual network rule. |
        
## Endpoints

The URIs that are used to perform a retrieval of a public blob, queue, or table object.

```puppet
$azure_endpoints = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
## Sku

The resource model definition representing SKU

```puppet
$azure_sku = {
  capacity => "1234 (optional)",
  family => "family (optional)",
  name => "name",
  size => "size (optional)",
  tier => "tier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|capacity | Integer | false | If the SKU supports scale out/in then the capacity integer should be included. If scale out/in is not possible for the resource this may be omitted. |
|family | String | false | If the service has different generations of hardware, for the same SKU, then that can be captured here. |
|name | String | true | The name of the SKU. Ex - P3. It is typically a letter+number code |
|size | String | false | The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code.  |
|tier | String | false | This field is required to be implemented by the Resource Provider if the service has more than one tier, but is not required on a PUT. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the StorageAccount

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Storage/storageAccounts/%{account_name}`|Put|Asynchronously creates a new storage account with the specified parameters. If an account is already created and a subsequent create request is issued with different properties, the account properties will be updated. If an account is already created and a subsequent create or update request is issued with the exact same set of properties, the request will succeed.|StorageAccounts_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Storage/storageAccounts`|Get|Lists all the storage accounts available under the subscription. Note that storage keys are not returned; use the ListKeys operation for this.|StorageAccounts_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Storage/storageAccounts/%{account_name}`|Get|Returns the properties for the specified storage account including but not limited to name, SKU name, location, and account status. The ListKeys operation should be used to retrieve storage keys.|StorageAccounts_GetProperties|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Storage/storageAccounts`|Get|Lists all the storage accounts available under the given resource group. Note that storage keys are not returned; use the ListKeys operation for this.|StorageAccounts_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Storage/storageAccounts/%{account_name}`|Put|Asynchronously creates a new storage account with the specified parameters. If an account is already created and a subsequent create request is issued with different properties, the account properties will be updated. If an account is already created and a subsequent create or update request is issued with the exact same set of properties, the request will succeed.|StorageAccounts_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Storage/storageAccounts/%{account_name}`|Delete|Deletes a storage account in Microsoft Azure.|StorageAccounts_Delete|
