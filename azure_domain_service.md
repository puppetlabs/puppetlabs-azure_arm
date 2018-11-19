Document: "domainservices"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/domainservices/resource-manager/Microsoft.AAD/stable/2017-06-01/domainservices.json")

## DomainService

Domain service.

```puppet
azure_domain_service {
  api_version => "api_version",
  etag => "etag (optional)",
  location => "location (optional)",
  properties => $azure_domain_service_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|etag | String | false | Resource etag |
|location | String | false | Resource location |
|properties | [DomainServiceProperties](#domainserviceproperties) | false | Domain service properties |
|resource_group_name | String | true | The name of the resource group within the user's subscription. The name is case insensitive. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
        
## DomainServiceProperties

Properties of the Domain Service.

```puppet
$azure_domain_service_properties = {
  domainName => "domainName (optional)",
  ldapsSettings => $azure_ldaps_settings
  subnetId => "subnetId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|domainName | String | false | The name of the Azure domain that the user would like to deploy Domain Services to. |
|ldapsSettings | [LdapsSettings](#ldapssettings) | false | Secure LDAP Settings |
|subnetId | String | false | The name of the virtual network that Domain Services will be deployed on. The id of the subnet that Domain Services will be deployed on. /virtualNetwork/vnetName/subnets/subnetName. |
        
## LdapsSettings

Secure LDAP Settings

```puppet
$azure_ldaps_settings = {
  externalAccess => "externalAccess (optional)",
  ldaps => "ldaps (optional)",
  pfxCertificate => "pfxCertificate (optional)",
  pfxCertificatePassword => "pfxCertificatePassword (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|externalAccess | String | false | A flag to determine whether or not Secure LDAP access over the internet is enabled or disabled. |
|ldaps | String | false | A flag to determine whether or not Secure LDAP is enabled or disabled. |
|pfxCertificate | String | false | The certificate required to configure Secure LDAP. The parameter passed here should be a base64encoded representation of the certificate pfx file. |
|pfxCertificatePassword | String | false | The password to decrypt the provided Secure LDAP certificate pfx file. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DomainService

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.AAD/domainServices/%{domain_service_name}`|Put|The Create Domain Service operation creates a new domain service with the specified parameters. If the specific service already exists, then any patchable properties will be updated and any immutable properties will remain unchanged.|DomainServices_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.AAD/domainServices`|Get|The List Domain Services in Subscription operation lists all the domain services available under the given subscription (and across all resource groups within that subscription).|DomainServices_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.AAD/domainServices/%{domain_service_name}`|Get|The Get Domain Service operation retrieves a json representation of the Domain Service.|DomainServices_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.AAD/domainServices`|Get|The List Domain Services in Resource Group operation lists all the domain services available under the given resource group.|DomainServices_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.AAD/domainServices/%{domain_service_name}`|Put|The Create Domain Service operation creates a new domain service with the specified parameters. If the specific service already exists, then any patchable properties will be updated and any immutable properties will remain unchanged.|DomainServices_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.AAD/domainServices/%{domain_service_name}`|Delete|The Delete Domain Service operation deletes an existing Domain Service.|DomainServices_Delete|
