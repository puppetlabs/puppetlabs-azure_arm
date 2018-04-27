Document: "Certificates"
Path: "/root/specs/specification/web/resource-manager/Microsoft.Web/stable/2018-02-01/Certificates.json")

## Certificate

```puppet
azure_certificate {
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
|certificate_envelope | Hash | true | Details of certificate, if it exists already. |
|id | String | false | Resource Id. |
|kind | String | false | Kind of resource. |
|location | String | false | Resource Location. |
|name | String | false | Resource Name. |
|properties | String | false | Certificate resource specific properties |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |
|tags | Hash | false | Resource tags. |
|type | String | false | Resource type. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Certificate

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/certificates/%{name}`|Put|Create or update a certificate.|Certificates_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Web/certificates`|Get|Get all certificates for a subscription.|Certificates_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/certificates/%{name}`|Get|Get a certificate.|Certificates_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Web/certificates`|Get|Get all certificates for a subscription.|Certificates_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/certificates/%{name}`|Put|Create or update a certificate.|Certificates_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/certificates/%{name}`|Delete|Delete a certificate.|Certificates_Delete|