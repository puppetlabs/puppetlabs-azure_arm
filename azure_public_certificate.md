Document: "WebApps"
Path: "/root/specs/specification/web/resource-manager/Microsoft.Web/stable/2018-02-01/WebApps.json")

## PublicCertificate

```puppet
azure_public_certificate {
  api_version => "api_version",
  id => "id (optional)",
  kind => "kind (optional)",
  name => "name (optional)",
  properties => "properties (optional)",
  public_certificate => "publicCertificate",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|id | String | false | Resource Id. |
|kind | String | false | Kind of resource. |
|name | String | false | Resource Name. |
|properties | String | false | PublicCertificate resource specific properties |
|public_certificate | Hash | true | Public certificate details. This is the JSON representation of a PublicCertificate object. |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |
|type | String | false | Resource type. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the PublicCertificate

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/publicCertificates/%{public_certificate_name}`|Put|Creates a hostname binding for an app.|WebApps_CreateOrUpdatePublicCertificate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/publicCertificates/%{public_certificate_name}`|Get|Get the named public certificate for an app (or deployment slot, if specified).|WebApps_GetPublicCertificate|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/publicCertificates`|Get|Get public certificates for an app or a deployment slot.|WebApps_ListPublicCertificates|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/publicCertificates/%{public_certificate_name}`|Put|Creates a hostname binding for an app.|WebApps_CreateOrUpdatePublicCertificate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/publicCertificates/%{public_certificate_name}`|Delete|Deletes a hostname binding for an app.|WebApps_DeletePublicCertificate|