Document: "iothub"
Path: "/root/specs/specification/iothub/resource-manager/Microsoft.Devices/stable/2018-04-01/iothub.json")

## CertificateDescription

```puppet
azure_certificate_description {
  api_version => "api_version",
  certificate_description => "certificateDescription",
  certificate_name => "certificate_name",
  etag => "etag (optional)",
  id => "id (optional)",
  if_match => "if_match",
  name => "name (optional)",
  properties => $azure_certificate_properties
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The version of the API. |
|certificate_description | Hash | true | The certificate body. |
|certificate_name | String | true | The name of the certificate |
|etag | String | false | The entity tag. |
|id | String | false | The resource identifier. |
|if_match | String | true | ETag of the Certificate. |
|name | String | false | The name of the certificate. |
|properties | [CertificateProperties](#certificateproperties) | false |  |
|resource_group_name | String | true | The name of the resource group that contains the IoT hub. |
|resource_name | String | true | The name of the IoT hub. |
|subscription_id | String | true | The subscription identifier. |
|type | String | false | The resource type. |
        
## CertificateProperties

```puppet
$azure_certificate_properties = {
  created => "created (optional)",
  expiry => "expiry (optional)",
  isVerified => "isVerified (optional)",
  subject => "subject (optional)",
  thumbprint => "thumbprint (optional)",
  updated => "updated (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|created | String | false | The certificate's create date and time. |
|expiry | String | false | The certificate's expiration date and time. |
|isVerified | Boolean | false | Determines whether certificate has been verified. |
|subject | String | false | The certificate's subject name. |
|thumbprint | String | false | The certificate's thumbprint. |
|updated | String | false | The certificate's last update date and time. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the CertificateDescription

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/IotHubs/%{resource_name}/certificates/%{certificate_name}`|Put|Adds new or replaces existing certificate.|Certificates_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/IotHubs/%{resource_name}/certificates/%{certificate_name}`|Get|Returns the certificate.|Certificates_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/IotHubs/%{resource_name}/certificates`|Get|Returns the list of certificates.|Certificates_ListByIotHub|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/IotHubs/%{resource_name}/certificates/%{certificate_name}`|Put|Adds new or replaces existing certificate.|Certificates_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/IotHubs/%{resource_name}/certificates/%{certificate_name}`|Delete|Deletes an existing X509 certificate or does nothing if it does not exist.|Certificates_Delete|