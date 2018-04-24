Document: "domainservices"
Path: "/root/specs/specification/domainservices/resource-manager/Microsoft.AAD/stable/2017-06-01/domainservices.json")

## DomainService

```puppet
azure_domain_service {
  api_version => "api_version",
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_domain_service_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|etag | String | false | Resource etag |
|id | String | false | Resource Id |
|location | String | false | Resource location |
|name | String | false | Resource name |
|properties | [DomainServiceProperties](#domainserviceproperties) | false | Domain service properties |
|resource_group_name | String | true | The name of the resource group within the user's subscription. The name is case insensitive. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
|type | String | false | Resource type |
        
## DomainServiceProperties

```puppet
$azure_domain_service_properties = {
  domainControllerIpAddress => "domainControllerIpAddress (optional)",
  domainName => "domainName (optional)",
  ldapsSettings => $azure_ldaps_settings
  provisioningState => "provisioningState (optional)",
  serviceStatus => "serviceStatus (optional)",
  subnetId => "subnetId (optional)",
  tenantId => "tenantId (optional)",
  vnetSiteId => "vnetSiteId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|domainControllerIpAddress | Array | false | List of Domain Controller IP Address |
|domainName | String | false | The name of the Azure domain that the user would like to deploy Domain Services to. |
|ldapsSettings | [LdapsSettings](#ldapssettings) | false | Secure LDAP Settings |
|provisioningState | String | false | the current deployment or provisioning state, which only appears in the response. |
|serviceStatus | String | false | Status of Domain Service instance |
|subnetId | String | false | The name of the virtual network that Domain Services will be deployed on. The id of the subnet that Domain Services will be deployed on. /virtualNetwork/vnetName/subnets/subnetName. |
|tenantId | String | false | Azure Active Directory tenant id |
|vnetSiteId | String | false | Virtual network site id |
        
## LdapsSettings

```puppet
$azure_ldaps_settings = {
  certificateNotAfter => "certificateNotAfter (optional)",
  certificateThumbprint => "certificateThumbprint (optional)",
  externalAccess => "externalAccess (optional)",
  externalAccessIpAddress => "externalAccessIpAddress (optional)",
  ldaps => "ldaps (optional)",
  pfxCertificate => "pfxCertificate (optional)",
  pfxCertificatePassword => "pfxCertificatePassword (optional)",
  publicCertificate => "publicCertificate (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|certificateNotAfter | String | false | NotAfter DateTime of configure ldaps certificate. |
|certificateThumbprint | String | false | Thumbprint of configure ldaps certificate. |
|externalAccess | String | false | A flag to determine whether or not Secure LDAP access over the internet is enabled or disabled. |
|externalAccessIpAddress | String | false | External access ip address. |
|ldaps | String | false | A flag to determine whether or not Secure LDAP is enabled or disabled. |
|pfxCertificate | String | false | The certificate required to configure Secure LDAP. The parameter passed here should be a base64encoded representation of the certificate pfx file. |
|pfxCertificatePassword | String | false | The password to decrypt the provided Secure LDAP certificate pfx file. |
|publicCertificate | String | false | Public certificate used to configure secure ldap. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DomainService

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.AAD/domainServices/%{domain_service_name}`|Put|The Create Domain Service operation creates a new domain service with the specified parameters. If the specific service already exists, then any patchable properties will be updated and any immutable properties will remain unchanged.|DomainServices_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.AAD/domainServices`|Get|The List Domain Services in Subscription operation lists all the domain services available under the given subscription (and across all resource groups within that subscription).|DomainServices_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.AAD/domainServices/%{domain_service_name}`|Get|The Get Domain Service operation retrieves a json representation of the Domain Service.|DomainServices_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.AAD/domainServices`|Get|The List Domain Services in Subscription operation lists all the domain services available under the given subscription (and across all resource groups within that subscription).|DomainServices_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.AAD/domainServices/%{domain_service_name}`|Put|The Create Domain Service operation creates a new domain service with the specified parameters. If the specific service already exists, then any patchable properties will be updated and any immutable properties will remain unchanged.|DomainServices_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.AAD/domainServices/%{domain_service_name}`|Delete|The Delete Domain Service operation deletes an existing Domain Service.|DomainServices_Delete|