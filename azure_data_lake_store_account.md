Document: "account"
Path: "/root/specs/specification/datalake-store/resource-manager/Microsoft.DataLakeStore/stable/2016-11-01/account.json")

## DataLakeStoreAccount

```puppet
azure_data_lake_store_account {
  account_name => "account_name",
  api_version => "api_version",
  id => "id (optional)",
  identity => $azure_encryption_identity
  location => "location (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_data_lake_store_account_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The name of the Data Lake Store account. |
|api_version | String | true | Client Api Version. |
|id | String | false | The resource identifier. |
|identity | [EncryptionIdentity](#encryptionidentity) | false | The Key Vault encryption identity, if any. |
|location | String | false | The resource location. |
|name | String | false | The resource name. |
|parameters | Hash | true | Parameters supplied to create the Data Lake Store account. |
|properties | [DataLakeStoreAccountProperties](#datalakestoreaccountproperties) | false | The Data Lake Store account properties. |
|resource_group_name | String | true | The name of the Azure resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | The resource tags. |
|type | String | false | The resource type. |
        
## EncryptionIdentity

```puppet
$azure_encryption_identity = {
  principalId => "principalId (optional)",
  tenantId => "tenantId (optional)",
  type => "type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|principalId | String | false | The principal identifier associated with the encryption. |
|tenantId | String | false | The tenant identifier associated with the encryption. |
|type | String | true | The type of encryption being used. Currently the only supported type is 'SystemAssigned'. |
        
## DataLakeStoreAccountProperties

```puppet
$azure_data_lake_store_account_properties = {
  accountId => "accountId (optional)",
  creationTime => "creationTime (optional)",
  currentTier => "currentTier (optional)",
  defaultGroup => "defaultGroup (optional)",
  encryptionConfig => $azure_encryption_config
  encryptionProvisioningState => "encryptionProvisioningState (optional)",
  encryptionState => "encryptionState (optional)",
  endpoint => "endpoint (optional)",
  firewallAllowAzureIps => "firewallAllowAzureIps (optional)",
  firewallRules => $azure_firewall_rule
  firewallState => "firewallState (optional)",
  lastModifiedTime => "lastModifiedTime (optional)",
  newTier => "newTier (optional)",
  provisioningState => "provisioningState (optional)",
  state => "state (optional)",
  trustedIdProviders => $azure_trusted_id_provider
  trustedIdProviderState => "trustedIdProviderState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accountId | String | false | The unique identifier associated with this Data Lake Store account. |
|creationTime | String | false | The account creation time. |
|currentTier | String | false | The commitment tier in use for the current month. |
|defaultGroup | String | false | The default owner group for all new folders and files created in the Data Lake Store account. |
|encryptionConfig | [EncryptionConfig](#encryptionconfig) | false | The Key Vault encryption configuration. |
|encryptionProvisioningState | String | false | The current state of encryption provisioning for this Data Lake Store account. |
|encryptionState | String | false | The current state of encryption for this Data Lake Store account. |
|endpoint | String | false | The full CName endpoint for this account. |
|firewallAllowAzureIps | String | false | The current state of allowing or disallowing IPs originating within Azure through the firewall. If the firewall is disabled, this is not enforced. |
|firewallRules | [FirewallRule](#firewallrule) | false | The list of firewall rules associated with this Data Lake Store account. |
|firewallState | String | false | The current state of the IP address firewall for this Data Lake Store account. |
|lastModifiedTime | String | false | The account last modified time. |
|newTier | String | false | The commitment tier to use for next month. |
|provisioningState | String | false | The provisioning status of the Data Lake Store account. |
|state | String | false | The state of the Data Lake Store account. |
|trustedIdProviders | [TrustedIdProvider](#trustedidprovider) | false | The list of trusted identity providers associated with this Data Lake Store account. |
|trustedIdProviderState | String | false | The current state of the trusted identity provider feature for this Data Lake Store account. |
        
## EncryptionConfig

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

```puppet
$azure_firewall_rule = {
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_firewall_rule_properties
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | The resource identifier. |
|name | String | false | The resource name. |
|properties | [FirewallRuleProperties](#firewallruleproperties) | false | The firewall rule properties. |
|type | String | false | The resource type. |
        
## FirewallRuleProperties

```puppet
$azure_firewall_rule_properties = {
  endIpAddress => "endIpAddress (optional)",
  startIpAddress => "startIpAddress (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endIpAddress | String | false | The end IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol. |
|startIpAddress | String | false | The start IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol. |
        
## TrustedIdProvider

```puppet
$azure_trusted_id_provider = {
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_trusted_id_provider_properties
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | The resource identifier. |
|name | String | false | The resource name. |
|properties | [TrustedIdProviderProperties](#trustedidproviderproperties) | false | The trusted identity provider properties. |
|type | String | false | The resource type. |
        
## TrustedIdProviderProperties

```puppet
$azure_trusted_id_provider_properties = {
  idProvider => "idProvider (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|idProvider | String | false | The URL of this trusted identity provider. |



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