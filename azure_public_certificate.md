Document: "WebApps"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/web/resource-manager/Microsoft.Web/stable/2018-02-01/WebApps.json")

## PublicCertificate

Public certificate object

```puppet
azure_public_certificate {
  api_version => "api_version",
  kind => "kind (optional)",
  properties => "properties (optional)",
  public_certificate => "publicCertificate",
  resource_group_name => "resource_group_name",
  slot => "slot",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|kind | String | false | Kind of resource. |
|properties | String | false | PublicCertificate resource specific properties |
|public_certificate | Hash | true | Public certificate details. This is the JSON representation of a PublicCertificate object. |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|slot | String | true | Name of the deployment slot. If a slot is not specified, the API will create a binding for the production slot. |
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the PublicCertificate

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/publicCertificates/%{public_certificate_name}`|Put|Creates a hostname binding for an app.|WebApps_CreateOrUpdatePublicCertificateSlot|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/publicCertificates/%{public_certificate_name}`|Get|Get the named public certificate for an app (or deployment slot, if specified).|WebApps_GetPublicCertificateSlot|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/publicCertificates`|Get|Get public certificates for an app or a deployment slot.|WebApps_ListPublicCertificatesSlot|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/publicCertificates/%{public_certificate_name}`|Put|Creates a hostname binding for an app.|WebApps_CreateOrUpdatePublicCertificateSlot|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/sites/%{name}/slots/%{slot}/publicCertificates/%{public_certificate_name}`|Delete|Deletes a hostname binding for an app.|WebApps_DeletePublicCertificateSlot|
