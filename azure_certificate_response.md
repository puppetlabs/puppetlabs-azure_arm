Document: "iotdps"
Path: "/root/specs/specification/deviceprovisioningservices/resource-manager/Microsoft.Devices/stable/2018-01-22/iotdps.json")

## CertificateResponse

```puppet
azure_certificate_response {
  api_version => "api_version",
  certificate_description => "certificateDescription",
  certificate_name => "certificate_name",
  etag => "etag (optional)",
  id => "id (optional)",
  if_match => "if_match",
  name => "name (optional)",
  properties => $azure_certificate_properties
  provisioning_service_name => "provisioning_service_name",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The version of the API. |
|certificate_description | Hash | true | The certificate body. |
|certificate_name | String | true | The name of the certificate create or update. |
|etag | String | false | The entity tag. |
|id | String | false | The resource identifier. |
|if_match | String | true | ETag of the certificate |
|name | String | false | The name of the certificate. |
|properties | [CertificateProperties](#certificateproperties) | false | properties of a certificate |
|provisioning_service_name | String | true | The name of the provisioning service. |
|resource_group_name | String | true | Resource group identifier. |
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
|created | String | false | The certificate's creation date and time. |
|expiry | String | false | The certificate's expiration date and time. |
|isVerified | Boolean | false | Determines whether certificate has been verified. |
|subject | String | false | The certificate's subject name. |
|thumbprint | String | false | The certificate's thumbprint. |
|updated | String | false | The certificate's last update date and time. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the CertificateResponse

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/provisioningServices/%{provisioning_service_name}/certificates/%{certificate_name}`|Put|Add new certificate or update an existing certificate.|DpsCertificate_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/provisioningServices/%{provisioning_service_name}/certificates/%{certificate_name}`|Get|Get the certificate from the provisioning service.|DpsCertificate_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/provisioningServices/%{provisioning_service_name}/certificates`|Get|Get all the certificates tied to the provisioning service.|DpsCertificate_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/provisioningServices/%{provisioning_service_name}/certificates/%{certificate_name}`|Put|Add new certificate or update an existing certificate.|DpsCertificate_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/provisioningServices/%{provisioning_service_name}/certificates/%{certificate_name}`|Delete|Deletes the specified certificate assosciated with the Provisioning Service|DpsCertificate_Delete|