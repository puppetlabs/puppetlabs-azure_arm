Document: "logic"
Path: "/root/specs/specification/logic/resource-manager/Microsoft.Logic/stable/2016-06-01/logic.json")

## IntegrationAccountCertificate

```puppet
azure_integration_account_certificate {
  api_version => "api_version",
  certificate => "certificate",
  certificate_name => "certificate_name",
  id => "id (optional)",
  integration_account_name => "integration_account_name",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_integration_account_certificate_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|certificate | Hash | true | The integration account certificate. |
|certificate_name | String | true | The integration account certificate name. |
|id | String | false | The resource id. |
|integration_account_name | String | true | The integration account name. |
|location | String | false | The resource location. |
|name | String | false | Gets the resource name. |
|properties | [IntegrationAccountCertificateProperties](#integrationaccountcertificateproperties) | true | The integration account certificate properties. |
|resource_group_name | String | true | The resource group name. |
|subscription_id | String | true | The subscription id. |
|tags | Hash | false | The resource tags. |
|type | String | false | Gets the resource type. |
        
## IntegrationAccountCertificateProperties

```puppet
$azure_integration_account_certificate_properties = {
  changedTime => "changedTime (optional)",
  createdTime => "createdTime (optional)",
  key => $azure_key_vault_key_reference
  metadata => "metadata (optional)",
  publicCertificate => "publicCertificate (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|changedTime | String | false | The changed time. |
|createdTime | String | false | The created time. |
|key | [KeyVaultKeyReference](#keyvaultkeyreference) | false | The key details in the key vault. |
|metadata | Hash | false | The metadata. |
|publicCertificate | String | false | The public certificate. |
        
## KeyVaultKeyReference

```puppet
$azure_key_vault_key_reference = {
  keyName => "keyName",
  keyVault => "keyVault",
  keyVersion => "keyVersion (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|keyName | String | true | The private key name in key vault. |
|keyVault | Hash | true | The key vault reference. |
|keyVersion | String | false | The private key version in key vault. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the IntegrationAccountCertificate

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/certificates/%{certificate_name}`|Put|Creates or updates an integration account certificate.|Certificates_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/certificates/%{certificate_name}`|Get|Gets an integration account certificate.|Certificates_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/certificates`|Get|Gets a list of integration account certificates.|Certificates_ListByIntegrationAccounts|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/certificates/%{certificate_name}`|Put|Creates or updates an integration account certificate.|Certificates_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/certificates/%{certificate_name}`|Delete|Deletes an integration account certificate.|Certificates_Delete|