Document: "notificationhubs"
Path: "/root/specs/specification/notificationhubs/resource-manager/Microsoft.NotificationHubs/stable/2017-04-01/notificationhubs.json")

## NotificationHubResource

```puppet
azure_notification_hub_resource {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  namespace_name => "namespace_name",
  notification_hub_name => "notification_hub_name",
  parameters => "parameters",
  properties => $azure_notification_hub_properties
  resource_group_name => "resource_group_name",
  sku => "sku (optional)",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|id | String | false | Resource Id |
|location | String | false | Resource location |
|name | String | false | Resource name |
|namespace_name | String | true | The namespace name. |
|notification_hub_name | String | true | The notification hub name. |
|parameters | Hash | true | Parameters supplied to the create/update a NotificationHub Resource. |
|properties | [NotificationHubProperties](#notificationhubproperties) | false | Properties of the NotificationHub. |
|resource_group_name | String | true | The name of the resource group. |
|sku | String | false | The sku of the created namespace |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
|type | String | false | Resource type |
        
## NotificationHubProperties

```puppet
$azure_notification_hub_properties = {
  admCredential => $azure_adm_credential
  apnsCredential => $azure_apns_credential
  authorizationRules => $azure_shared_access_authorization_rule_properties
  baiduCredential => $azure_baidu_credential
  gcmCredential => $azure_gcm_credential
  mpnsCredential => $azure_mpns_credential
  name => "name (optional)",
  registrationTtl => "registrationTtl (optional)",
  wnsCredential => $azure_wns_credential
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|admCredential | [AdmCredential](#admcredential) | false | The AdmCredential of the created NotificationHub |
|apnsCredential | [ApnsCredential](#apnscredential) | false | The ApnsCredential of the created NotificationHub |
|authorizationRules | [SharedAccessAuthorizationRuleProperties](#sharedaccessauthorizationruleproperties) | false | The AuthorizationRules of the created NotificationHub |
|baiduCredential | [BaiduCredential](#baiducredential) | false | The BaiduCredential of the created NotificationHub |
|gcmCredential | [GcmCredential](#gcmcredential) | false | The GcmCredential of the created NotificationHub |
|mpnsCredential | [MpnsCredential](#mpnscredential) | false | The MpnsCredential of the created NotificationHub |
|name | String | false | The NotificationHub name. |
|registrationTtl | String | false | The RegistrationTtl of the created NotificationHub |
|wnsCredential | [WnsCredential](#wnscredential) | false | The WnsCredential of the created NotificationHub |
        
## AdmCredential

```puppet
$azure_adm_credential = {
  properties => $azure_adm_credential_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|properties | [AdmCredentialProperties](#admcredentialproperties) | false | Properties of NotificationHub AdmCredential. |
        
## AdmCredentialProperties

```puppet
$azure_adm_credential_properties = {
  authTokenUrl => "authTokenUrl (optional)",
  clientId => "clientId (optional)",
  clientSecret => "clientSecret (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|authTokenUrl | String | false | The URL of the authorization token. |
|clientId | String | false | The client identifier. |
|clientSecret | String | false | The credential secret access key. |
        
## ApnsCredential

```puppet
$azure_apns_credential = {
  properties => $azure_apns_credential_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|properties | [ApnsCredentialProperties](#apnscredentialproperties) | false | Properties of NotificationHub ApnsCredential. |
        
## ApnsCredentialProperties

```puppet
$azure_apns_credential_properties = {
  apnsCertificate => "apnsCertificate (optional)",
  appId => "appId (optional)",
  appName => "appName (optional)",
  certificateKey => "certificateKey (optional)",
  endpoint => "endpoint (optional)",
  keyId => "keyId (optional)",
  thumbprint => "thumbprint (optional)",
  token => "token (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|apnsCertificate | String | false | The APNS certificate. |
|appId | String | false | The issuer (iss) registered claim key, whose value is your 10-character Team ID, obtained from your developer account |
|appName | String | false | The name of the application |
|certificateKey | String | false | The certificate key. |
|endpoint | String | false | The endpoint of this credential. |
|keyId | String | false | A 10-character key identifier (kid) key, obtained from your developer account |
|thumbprint | String | false | The Apns certificate Thumbprint |
|token | String | false | Provider Authentication Token, obtained through your developer account |
        
## SharedAccessAuthorizationRuleProperties

```puppet
$azure_shared_access_authorization_rule_properties = {
  rights => "rights (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|rights | Array | false | The rights associated with the rule. |
        
## BaiduCredential

```puppet
$azure_baidu_credential = {
  properties => $azure_baidu_credential_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|properties | [BaiduCredentialProperties](#baiducredentialproperties) | false | Properties of NotificationHub BaiduCredential. |
        
## BaiduCredentialProperties

```puppet
$azure_baidu_credential_properties = {
  baiduApiKey => "baiduApiKey (optional)",
  baiduEndPoint => "baiduEndPoint (optional)",
  baiduSecretKey => "baiduSecretKey (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|baiduApiKey | String | false | Baidu Api Key. |
|baiduEndPoint | String | false | Baidu Endpoint. |
|baiduSecretKey | String | false | Baidu Secret Key |
        
## GcmCredential

```puppet
$azure_gcm_credential = {
  properties => $azure_gcm_credential_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|properties | [GcmCredentialProperties](#gcmcredentialproperties) | false | Properties of NotificationHub GcmCredential. |
        
## GcmCredentialProperties

```puppet
$azure_gcm_credential_properties = {
  gcmEndpoint => "gcmEndpoint (optional)",
  googleApiKey => "googleApiKey (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|gcmEndpoint | String | false | The GCM endpoint. |
|googleApiKey | String | false | The Google API key. |
        
## MpnsCredential

```puppet
$azure_mpns_credential = {
  properties => $azure_mpns_credential_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|properties | [MpnsCredentialProperties](#mpnscredentialproperties) | false | Properties of NotificationHub MpnsCredential. |
        
## MpnsCredentialProperties

```puppet
$azure_mpns_credential_properties = {
  certificateKey => "certificateKey (optional)",
  mpnsCertificate => "mpnsCertificate (optional)",
  thumbprint => "thumbprint (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|certificateKey | String | false | The certificate key for this credential. |
|mpnsCertificate | String | false | The MPNS certificate. |
|thumbprint | String | false | The Mpns certificate Thumbprint |
        
## WnsCredential

```puppet
$azure_wns_credential = {
  properties => $azure_wns_credential_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|properties | [WnsCredentialProperties](#wnscredentialproperties) | false | Properties of NotificationHub WnsCredential. |
        
## WnsCredentialProperties

```puppet
$azure_wns_credential_properties = {
  packageSid => "packageSid (optional)",
  secretKey => "secretKey (optional)",
  windowsLiveEndpoint => "windowsLiveEndpoint (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|packageSid | String | false | The package ID for this credential. |
|secretKey | String | false | The secret key. |
|windowsLiveEndpoint | String | false | The Windows Live endpoint. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the NotificationHubResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.NotificationHubs/namespaces/%{namespace_name}/notificationHubs/%{notification_hub_name}`|Put|Creates/Update a NotificationHub in a namespace.|NotificationHubs_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.NotificationHubs/namespaces/%{namespace_name}/notificationHubs/%{notification_hub_name}`|Get|Lists the notification hubs associated with a namespace.|NotificationHubs_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.NotificationHubs/namespaces/%{namespace_name}/notificationHubs`|Get|Lists the notification hubs associated with a namespace.|NotificationHubs_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.NotificationHubs/namespaces/%{namespace_name}/notificationHubs/%{notification_hub_name}`|Put|Creates/Update a NotificationHub in a namespace.|NotificationHubs_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.NotificationHubs/namespaces/%{namespace_name}/notificationHubs/%{notification_hub_name}`|Delete|Deletes a notification hub associated with a namespace.|NotificationHubs_Delete|