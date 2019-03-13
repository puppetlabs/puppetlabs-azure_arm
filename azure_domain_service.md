Document: "domainservices"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/domainservices/resource-manager/Microsoft.AAD/stable/2017-06-01/domainservices.json")

## DomainService

Domain service.

```puppet
azure_domain_service {
  api_version => "api_version",
  domain_service => "domainService",
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
|domain_service | Hash | true | Properties supplied to the Create or Update a Domain Service operation. |
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
  domainSecuritySettings => $azure_domain_security_settings
  filteredSync => "filteredSync (optional)",
  healthAlerts => $azure_health_alert
  healthMonitors => $azure_health_monitor
  ldapsSettings => $azure_ldaps_settings
  notificationSettings => $azure_notification_settings
  subnetId => "subnetId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|domainName | String | false | The name of the Azure domain that the user would like to deploy Domain Services to. |
|domainSecuritySettings | [DomainSecuritySettings](#domainsecuritysettings) | false | DomainSecurity Settings |
|filteredSync | String | false | Enabled or Disabled flag to turn on Group-based filtered sync |
|healthAlerts | [HealthAlert](#healthalert) | false | List of Domain Health Alerts |
|healthMonitors | [HealthMonitor](#healthmonitor) | false | List of Domain Health Monitors |
|ldapsSettings | [LdapsSettings](#ldapssettings) | false | Secure LDAP Settings |
|notificationSettings | [NotificationSettings](#notificationsettings) | false | Notification Settings |
|subnetId | String | false | The name of the virtual network that Domain Services will be deployed on. The id of the subnet that Domain Services will be deployed on. /virtualNetwork/vnetName/subnets/subnetName. |
        
## DomainSecuritySettings

Domain Security Settings

```puppet
$azure_domain_security_settings = {
  ntlmV1 => "ntlmV1 (optional)",
  syncNtlmPasswords => "syncNtlmPasswords (optional)",
  tlsV1 => "tlsV1 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|ntlmV1 | String | false | A flag to determine whether or not NtlmV1 is enabled or disabled. |
|syncNtlmPasswords | String | false | A flag to determine whether or not SyncNtlmPasswords is enabled or disabled. |
|tlsV1 | String | false | A flag to determine whether or not TlsV1 is enabled or disabled. |
        
## HealthAlert

Health Alert Description

```puppet
$azure_health_alert = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## HealthMonitor

Health Monitor Description

```puppet
$azure_health_monitor = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
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
        
## NotificationSettings

Settings for notification

```puppet
$azure_notification_settings = {
  additionalRecipients => "additionalRecipients (optional)",
  notifyDcAdmins => "notifyDcAdmins (optional)",
  notifyGlobalAdmins => "notifyGlobalAdmins (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|additionalRecipients | Array | false | The list of additional recipients |
|notifyDcAdmins | String | false | Should domain controller admins be notified |
|notifyGlobalAdmins | String | false | Should global admins be notified |



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
