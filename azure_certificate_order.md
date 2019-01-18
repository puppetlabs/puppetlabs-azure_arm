Document: "service"


Path: "/tmp/azure-rest-api-specs/specification/web/resource-manager/Microsoft.Web/stable/2015-08-01/service.json")

## CertificateOrder

Certificate purchase order

```puppet
azure_certificate_order {
  api_version => "api_version",
  certificate_distinguished_name => "certificateDistinguishedName",
  id => "id (optional)",
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
|certificate_distinguished_name | Hash | true | Distinguished name to be used for purchasing certificate |
|id | String | false | Resource Id |
|kind | String | false | Kind of resource |
|location | String | false | Resource Location |
|name | String | false | Resource Name |
|properties | String | false |  |
|resource_group_name | String | true | Azure resource group name |
|subscription_id | String | true | Subscription Id |
|tags | Hash | false | Resource tags |
|type | String | false | Resource type |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the CertificateOrder

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CertificateRegistration/certificateOrders/%{name}`|Put||CertificateOrders_CreateOrUpdateCertificateOrder|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.CertificateRegistration/certificateOrders`|Get||GlobalCertificateOrder_GetAllCertificateOrders|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CertificateRegistration/certificateOrders/%{name}`|Get||CertificateOrders_GetCertificateOrder|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.CertificateRegistration/certificateOrders`|Get||GlobalCertificateOrder_GetAllCertificateOrders|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CertificateRegistration/certificateOrders/%{name}`|Put||CertificateOrders_CreateOrUpdateCertificateOrder|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CertificateRegistration/certificateOrders/%{name}`|Delete||CertificateOrders_DeleteCertificateOrder|
