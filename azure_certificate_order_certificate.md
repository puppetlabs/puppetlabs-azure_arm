Document: "service"
Path: "/root/specs/specification/web/resource-manager/Microsoft.Web/stable/2015-08-01/service.json")

## CertificateOrderCertificate

```puppet
azure_certificate_order_certificate {
  api_version => "api_version",
  certificate_order_name => "certificate_order_name",
  id => "id (optional)",
  key_vault_certificate => "keyVaultCertificate",
  kind => "kind (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|certificate_order_name | String | true | Certificate name |
|id | String | false | Resource Id |
|key_vault_certificate | Hash | true | Key Vault secret csm Id |
|kind | String | false | Kind of resource |
|location | String | false | Resource Location |
|name | String | false | Resource Name |
|properties | String | false |  |
|resource_group_name | String | true | Azure resource group name |
|subscription_id | String | true | Subscription Id |
|tags | Hash | false | Resource tags |
|type | String | false | Resource type |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the CertificateOrderCertificate

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CertificateRegistration/certificateOrders/%{certificate_order_name}/certificates/%{name}`|Put||CertificateOrders_CreateOrUpdateCertificate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CertificateRegistration/certificateOrders/%{certificate_order_name}/certificates/%{name}`|Get||CertificateOrders_GetCertificate|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CertificateRegistration/certificateOrders/%{certificate_order_name}/certificates`|Get||CertificateOrders_GetCertificates|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CertificateRegistration/certificateOrders/%{certificate_order_name}/certificates/%{name}`|Put||CertificateOrders_CreateOrUpdateCertificate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CertificateRegistration/certificateOrders/%{certificate_order_name}/certificates/%{name}`|Delete||CertificateOrders_DeleteCertificate|