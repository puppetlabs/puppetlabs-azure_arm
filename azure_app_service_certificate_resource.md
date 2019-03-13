Document: "AppServiceCertificateOrders"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/web/resource-manager/Microsoft.CertificateRegistration/stable/2018-02-01/AppServiceCertificateOrders.json")

## AppServiceCertificateResource

Key Vault container ARM resource for a certificate that is purchased through Azure.

```puppet
azure_app_service_certificate_resource {
  api_version => "api_version",
  certificate_order_name => "certificate_order_name",
  key_vault_certificate => "keyVaultCertificate",
  kind => "kind (optional)",
  location => "location (optional)",
  properties => $azure_app_service_certificate
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|certificate_order_name | String | true | Name of the certificate order. |
|key_vault_certificate | Hash | true | Key vault certificate resource Id. |
|kind | String | false | Kind of resource. |
|location | String | false | Resource Location. |
|properties | [AppServiceCertificate](#appservicecertificate) | false | Core resource properties |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |
|tags | Hash | false | Resource tags. |
        
## AppServiceCertificate

Key Vault container for a certificate that is purchased through Azure.

```puppet
$azure_app_service_certificate = {
  keyVaultId => "keyVaultId (optional)",
  keyVaultSecretName => "keyVaultSecretName (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|keyVaultId | String | false | Key Vault resource Id. |
|keyVaultSecretName | String | false | Key Vault secret name. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the AppServiceCertificateResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CertificateRegistration/certificateOrders/%{certificate_order_name}/certificates/%{name}`|Put|Creates or updates a certificate and associates with key vault secret.|AppServiceCertificateOrders_CreateOrUpdateCertificate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CertificateRegistration/certificateOrders/%{certificate_order_name}/certificates/%{name}`|Get|Get the certificate associated with a certificate order.|AppServiceCertificateOrders_GetCertificate|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CertificateRegistration/certificateOrders/%{certificate_order_name}/certificates`|Get|List all certificates associated with a certificate order.|AppServiceCertificateOrders_ListCertificates|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CertificateRegistration/certificateOrders/%{certificate_order_name}/certificates/%{name}`|Put|Creates or updates a certificate and associates with key vault secret.|AppServiceCertificateOrders_CreateOrUpdateCertificate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CertificateRegistration/certificateOrders/%{certificate_order_name}/certificates/%{name}`|Delete|Delete the certificate associated with a certificate order.|AppServiceCertificateOrders_DeleteCertificate|
