Document: "service"


Path: "/tmp/azure-rest-api-specs/specification/web/resource-manager/Microsoft.Web/stable/2015-08-01/service.json")

## Certificate

App certificate

```puppet
azure_web_certificate {
  api_version => "api_version",
  certificate_envelope => "certificateEnvelope",
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
|certificate_envelope | Hash | true | Details of certificate if it exists already. |
|id | String | false | Resource Id |
|kind | String | false | Kind of resource |
|location | String | false | Resource Location |
|name | String | false | Resource Name |
|properties | String | false |  |
|resource_group_name | String | true | Name of the resource group |
|subscription_id | String | true | Subscription Id |
|tags | Hash | false | Resource tags |
|type | String | false | Resource type |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Certificate

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/certificates/%{name}`|Put||Certificates_CreateOrUpdateCertificate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Web/certificates`|Get||Global_GetAllCertificates|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/certificates/%{name}`|Get||Certificates_GetCertificate|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Web/certificates`|Get||Global_GetAllCertificates|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/certificates/%{name}`|Put||Certificates_CreateOrUpdateCertificate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/certificates/%{name}`|Delete||Certificates_DeleteCertificate|
