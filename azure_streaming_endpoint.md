Document: "streamingservice"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/mediaservices/resource-manager/Microsoft.Media/stable/2018-07-01/streamingservice.json")

## StreamingEndpoint

The StreamingEndpoint.

```puppet
azure_streaming_endpoint {
  account_name => "account_name",
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_streaming_endpoint_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The Media Services account name. |
|api_version | String | true | The Version of the API to be used with the client request. |
|location | String | false | The Azure Region of the resource. |
|parameters | Hash | true | StreamingEndpoint properties needed for creation. |
|properties | [StreamingEndpointProperties](#streamingendpointproperties) | false | The StreamingEndpoint properties. |
|resource_group_name | String | true | The name of the resource group within the Azure subscription. |
|subscription_id | String | true | The unique identifier for a Microsoft Azure subscription. |
|tags | Hash | false | Resource tags. |
        
## StreamingEndpointProperties

The StreamingEndpoint properties.

```puppet
$azure_streaming_endpoint_properties = {
  accessControl => $azure_streaming_endpoint_access_control
  availabilitySetName => "availabilitySetName (optional)",
  cdnEnabled => "cdnEnabled (optional)",
  cdnProfile => "cdnProfile (optional)",
  cdnProvider => "cdnProvider (optional)",
  crossSiteAccessPolicies => $azure_cross_site_access_policies
  customHostNames => "customHostNames (optional)",
  description => "description (optional)",
  maxCacheAge => "1234 (optional)",
  scaleUnits => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accessControl | [StreamingEndpointAccessControl](#streamingendpointaccesscontrol) | false | The access control definition of the StreamingEndpoint. |
|availabilitySetName | String | false | The name of the AvailabilitySet used with this StreamingEndpoint for high availability streaming.  This value can only be set at creation time. |
|cdnEnabled | Boolean | false | The CDN enabled flag. |
|cdnProfile | String | false | The CDN profile name. |
|cdnProvider | String | false | The CDN provider name. |
|crossSiteAccessPolicies | [CrossSiteAccessPolicies](#crosssiteaccesspolicies) | false | The StreamingEndpoint access policies. |
|customHostNames | Array | false | The custom host names of the StreamingEndpoint |
|description | String | false | The StreamingEndpoint description. |
|maxCacheAge | Integer | false | Max cache age |
|scaleUnits | Integer | true | The number of scale units.  Use the Scale operation to adjust this value. |
        
## StreamingEndpointAccessControl

StreamingEndpoint access control definition.

```puppet
$azure_streaming_endpoint_access_control = {
  akamai => $azure_akamai_access_control
  ip => $azure_ip_access_control
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|akamai | [AkamaiAccessControl](#akamaiaccesscontrol) | false | The access control of Akamai |
|ip | [IPAccessControl](#ipaccesscontrol) | false | The IP access control of the StreamingEndpoint. |
        
## AkamaiAccessControl

Akamai access control

```puppet
$azure_akamai_access_control = {
  akamaiSignatureHeaderAuthenticationKeyList => $azure_akamai_signature_header_authentication_key
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|akamaiSignatureHeaderAuthenticationKeyList | [AkamaiSignatureHeaderAuthenticationKey](#akamaisignatureheaderauthenticationkey) | false | authentication key list |
        
## AkamaiSignatureHeaderAuthenticationKey

Akamai Signature Header authentication key.

```puppet
$azure_akamai_signature_header_authentication_key = {
  base64Key => "base64Key (optional)",
  expiration => "expiration (optional)",
  identifier => "identifier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|base64Key | String | false | authentication key |
|expiration | String | false | The expiration time of the authentication key. |
|identifier | String | false | identifier of the key |
        
## IPAccessControl

The IP access control.

```puppet
$azure_ip_access_control = {
  allow => $azure_ip_range
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|allow | [IPRange](#iprange) | false | The IP allow list. |
        
## IPRange

The IP address range in the CIDR scheme.

```puppet
$azure_ip_range = {
  address => "address (optional)",
  name => "name (optional)",
  subnetPrefixLength => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|address | String | false | The IP address. |
|name | String | false | The friendly name for the IP address range. |
|subnetPrefixLength | Integer | false | The subnet mask prefix length (see CIDR notation). |
        
## CrossSiteAccessPolicies

The client access policy.

```puppet
$azure_cross_site_access_policies = {
  clientAccessPolicy => "clientAccessPolicy (optional)",
  crossDomainPolicy => "crossDomainPolicy (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|clientAccessPolicy | String | false | The content of clientaccesspolicy.xml used by Silverlight. |
|crossDomainPolicy | String | false | The content of crossdomain.xml used by Silverlight. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the StreamingEndpoint

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{account_name}/streamingEndpoints/%{streaming_endpoint_name}`|Put|Creates a StreamingEndpoint.|StreamingEndpoints_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{account_name}/streamingEndpoints/%{streaming_endpoint_name}`|Get|Gets a StreamingEndpoint.|StreamingEndpoints_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{account_name}/streamingEndpoints`|Get|Lists the StreamingEndpoints in the account.|StreamingEndpoints_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{account_name}/streamingEndpoints/%{streaming_endpoint_name}`|Put|Creates a StreamingEndpoint.|StreamingEndpoints_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{account_name}/streamingEndpoints/%{streaming_endpoint_name}`|Delete|Deletes a StreamingEndpoint.|StreamingEndpoints_Delete|
