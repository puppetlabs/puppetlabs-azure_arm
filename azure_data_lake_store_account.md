Document: "account"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/datalake-store/resource-manager/Microsoft.DataLakeStore/stable/2016-11-01/account.json")

## DataLakeStoreAccount

Data Lake Store account information.

```puppet
azure_data_lake_store_account {
  account_name => "account_name",
  api_version => "api_version",
  identity => $azure_encryption_identity
  parameters => "parameters",
  properties => $azure_data_lake_store_account_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The name of the Data Lake Store account. |
|api_version | String | true | Client Api Version. |
|identity | [EncryptionIdentity](#encryptionidentity) | false | The Key Vault encryption identity, if any. |
|parameters | Hash | true | Parameters supplied to create the Data Lake Store account. |
|properties | [DataLakeStoreAccountProperties](#datalakestoreaccountproperties) | false | The Data Lake Store account properties. |
|resource_group_name | String | true | The name of the Azure resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## EncryptionIdentity

The encryption identity properties.

```puppet
$azure_encryption_identity = {
  type => "type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|type | String | true | The type of encryption being used. Currently the only supported type is 'SystemAssigned'. |
        
## DataLakeStoreAccountProperties

Data Lake Store account properties information.

```puppet
$azure_data_lake_store_account_properties = {
  encryptionConfig => $azure_encryption_config
  firewallRules => $azure_firewall_rule
  trustedIdProviders => $azure_trusted_id_provider
  virtualNetworkRules => $azure_virtual_network_rule
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|encryptionConfig | [EncryptionConfig](#encryptionconfig) | false | The Key Vault encryption configuration. |
|firewallRules | [FirewallRule](#firewallrule) | false | The list of firewall rules associated with this Data Lake Store account. |
|trustedIdProviders | [TrustedIdProvider](#trustedidprovider) | false | The list of trusted identity providers associated with this Data Lake Store account. |
|virtualNetworkRules | [VirtualNetworkRule](#virtualnetworkrule) | false | The list of virtual network rules associated with this Data Lake Store account. |
        
## EncryptionConfig

The encryption configuration for the account.

```puppet
$azure_encryption_config = {
  keyVaultMetaInfo => $azure_key_vault_meta_info
  type => "type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|keyVaultMetaInfo | [KeyVaultMetaInfo](#keyvaultmetainfo) | false | The Key Vault information for connecting to user managed encryption keys. |
|type | String | true | The type of encryption configuration being used. Currently the only supported types are 'UserManaged' and 'ServiceManaged'. |
        
## KeyVaultMetaInfo

Metadata information used by account encryption.

```puppet
$azure_key_vault_meta_info = {
  encryptionKeyName => "encryptionKeyName",
  encryptionKeyVersion => "encryptionKeyVersion",
  keyVaultResourceId => "keyVaultResourceId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|encryptionKeyName | String | true | The name of the user managed encryption key. |
|encryptionKeyVersion | String | true | The version of the user managed encryption key. |
|keyVaultResourceId | String | true | The resource identifier for the user managed Key Vault being used to encrypt. |
        
## FirewallRule

Data Lake Store firewall rule information.

```puppet
$azure_firewall_rule = {
  properties => $azure_firewall_rule_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|properties | [FirewallRuleProperties](#firewallruleproperties) | false | The firewall rule properties. |
        
## FirewallRuleProperties

The firewall rule properties.

```puppet
$azure_firewall_rule_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## TrustedIdProvider

Data Lake Store trusted identity provider information.

```puppet
$azure_trusted_id_provider = {
  properties => $azure_trusted_id_provider_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|properties | [TrustedIdProviderProperties](#trustedidproviderproperties) | false | The trusted identity provider properties. |
        
## TrustedIdProviderProperties

The trusted identity provider properties.

```puppet
$azure_trusted_id_provider_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## VirtualNetworkRule

Data Lake Store virtual network rule information.

```puppet
$azure_virtual_network_rule = {
  properties => $azure_virtual_network_rule_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|properties | [VirtualNetworkRuleProperties](#virtualnetworkruleproperties) | false | The virtual network rule properties. |
        
## VirtualNetworkRuleProperties

The virtual network rule properties.

```puppet
$azure_virtual_network_rule_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DataLakeStoreAccount

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeStore/accounts/%{account_name}`|Put|Creates the specified Data Lake Store account.|Accounts_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeStore/accounts/%{account_name}`|Get|Gets the specified Data Lake Store account.|Accounts_Get|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeStore/accounts/%{account_name}`|Put|Creates the specified Data Lake Store account.|Accounts_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeStore/accounts/%{account_name}`|Delete|Deletes the specified Data Lake Store account.|Accounts_Delete|
