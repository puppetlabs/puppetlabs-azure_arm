Document: "iothub"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/iothub/resource-manager/Microsoft.Devices/stable/2018-04-01/iothub.json")

## CertificateDescription

The X509 Certificate.

```puppet
azure_certificate_description {
  api_version => "api_version",
  certificate_description => "certificateDescription",
  certificate_name => "certificate_name",
  if_match => "if_match",
  properties => $azure_certificate_properties
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The version of the API. |
|certificate_description | Hash | true | The certificate body. |
|certificate_name | String | true | The name of the certificate |
|if_match | String | true | ETag of the Certificate. |
|properties | [CertificateProperties](#certificateproperties) | false |  |
|resource_group_name | String | true | The name of the resource group that contains the IoT hub. |
|resource_name | String | true | The name of the IoT hub. |
|subscription_id | String | true | The subscription identifier. |
        
## CertificateProperties

The description of an X509 CA Certificate.

```puppet
$azure_certificate_properties = {
  certificate => "certificate (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|certificate | String | false | The certificate content |



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
