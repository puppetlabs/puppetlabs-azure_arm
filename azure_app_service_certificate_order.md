Document: "AppServiceCertificateOrders"
Path: "/root/specs/specification/web/resource-manager/Microsoft.CertificateRegistration/stable/2018-02-01/AppServiceCertificateOrders.json")

## AppServiceCertificateOrder

```puppet
azure_app_service_certificate_order {
  api_version => "api_version",
  certificate_distinguished_name => "certificateDistinguishedName",
  certificate_order_name => "certificate_order_name",
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
|certificate_distinguished_name | Hash | true | Distinguished name to to use for the certificate order. |
|certificate_order_name | String | true | Name of the certificate order. |
|id | String | false | Resource Id. |
|kind | String | false | Kind of resource. |
|location | String | false | Resource Location. |
|name | String | false | Resource Name. |
|properties | String | false | AppServiceCertificateOrder resource specific properties |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |
|tags | Hash | false | Resource tags. |
|type | String | false | Resource type. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the AppServiceCertificateOrder

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CertificateRegistration/certificateOrders/%{certificate_order_name}`|Put|Create or update a certificate purchase order.|AppServiceCertificateOrders_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.CertificateRegistration/certificateOrders`|Get|List all certificate orders in a subscription.|AppServiceCertificateOrders_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CertificateRegistration/certificateOrders/%{certificate_order_name}`|Get|Get a certificate order.|AppServiceCertificateOrders_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CertificateRegistration/certificateOrders`|Get|Get certificate orders in a resource group.|AppServiceCertificateOrders_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CertificateRegistration/certificateOrders/%{certificate_order_name}`|Put|Create or update a certificate purchase order.|AppServiceCertificateOrders_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CertificateRegistration/certificateOrders/%{certificate_order_name}`|Delete|Delete an existing certificate order.|AppServiceCertificateOrders_Delete|