Document: "apimcertificates"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimcertificates.json")

## CertificateContract

Certificate details.

```puppet
azure_certificate_contract {
  api_version => "api_version",
  certificate_id => "certificate_id",
  if_match => "if_match",
  parameters => "parameters",
  properties => $azure_certificate_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|certificate_id | String | true | Identifier of the certificate entity. Must be unique in the current API Management service instance. |
|if_match | String | true | ETag of the Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update. |
|parameters | Hash | true | Create or Update parameters. |
|properties | [CertificateContractProperties](#certificatecontractproperties) | false | Certificate properties details. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## CertificateContractProperties

Properties of the Certificate contract.

```puppet
$azure_certificate_contract_properties = {
  expirationDate => "expirationDate",
  subject => "subject",
  thumbprint => "thumbprint",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|expirationDate | String | true | Expiration date of the certificate. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard. |
|subject | String | true | Subject attribute of the certificate. |
|thumbprint | String | true | Thumbprint of the certificate. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the CertificateContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/certificates/%{certificate_id}`|Put|Creates or updates the certificate being used for authentication with the backend.|Certificate_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/certificates/%{certificate_id}`|Get|Gets the details of the certificate specified by its identifier.|Certificate_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/certificates`|Get|Lists a collection of all certificates in the specified service instance.|Certificate_ListByService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/certificates/%{certificate_id}`|Put|Creates or updates the certificate being used for authentication with the backend.|Certificate_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/certificates/%{certificate_id}`|Delete|Deletes specific certificate.|Certificate_Delete|
