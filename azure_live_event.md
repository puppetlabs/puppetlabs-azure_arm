Document: "streamingservice"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/mediaservices/resource-manager/Microsoft.Media/stable/2018-07-01/streamingservice.json")

## LiveEvent

The Live Event.

```puppet
azure_live_event {
  account_name => "account_name",
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_live_event_properties
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
|parameters | Hash | true | Live Event properties needed for creation. |
|properties | [LiveEventProperties](#liveeventproperties) | false | The Live Event properties. |
|resource_group_name | String | true | The name of the resource group within the Azure subscription. |
|subscription_id | String | true | The unique identifier for a Microsoft Azure subscription. |
|tags | Hash | false | Resource tags. |
        
## LiveEventProperties

The Live Event properties.

```puppet
$azure_live_event_properties = {
  crossSiteAccessPolicies => $azure_cross_site_access_policies
  description => "description (optional)",
  encoding => $azure_live_event_encoding
  input => $azure_live_event_input
  preview => $azure_live_event_preview
  streamOptions => "streamOptions (optional)",
  vanityUrl => "vanityUrl (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|crossSiteAccessPolicies | [CrossSiteAccessPolicies](#crosssiteaccesspolicies) | false | The Live Event access policies. |
|description | String | false | The Live Event description. |
|encoding | [LiveEventEncoding](#liveeventencoding) | false | The Live Event encoding. |
|input | [LiveEventInput](#liveeventinput) | true | The Live Event input. |
|preview | [LiveEventPreview](#liveeventpreview) | false | The Live Event preview. |
|streamOptions | Array | false | The options to use for the LiveEvent.  This value is specified at creation time and cannot be updated. |
|vanityUrl | Boolean | false | Specifies whether to use a vanity url with the Live Event.  This value is specified at creation time and cannot be updated. |
        
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
        
## LiveEventEncoding

The Live Event encoding.

```puppet
$azure_live_event_encoding = {
  encodingType => "encodingType (optional)",
  presetName => "presetName (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|encodingType | String | false | The encoding type for Live Event.  This value is specified at creation time and cannot be updated. |
|presetName | String | false | The encoding preset name.  This value is specified at creation time and cannot be updated. |
        
## LiveEventInput

The Live Event input.

```puppet
$azure_live_event_input = {
  accessControl => $azure_live_event_input_access_control
  accessToken => "accessToken (optional)",
  endpoints => $azure_live_event_endpoint
  keyFrameIntervalDuration => "keyFrameIntervalDuration (optional)",
  streamingProtocol => "streamingProtocol",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accessControl | [LiveEventInputAccessControl](#liveeventinputaccesscontrol) | false | The access control for LiveEvent Input. |
|accessToken | String | false | A unique identifier for a stream.  This can be specified at creation time but cannot be updated.  If omitted, the service will generate a unique value. |
|endpoints | [LiveEventEndpoint](#liveeventendpoint) | false | The input endpoints for the Live Event. |
|keyFrameIntervalDuration | String | false | ISO 8601 timespan duration of the key frame interval duration. |
|streamingProtocol | String | true | The streaming protocol for the Live Event.  This is specified at creation time and cannot be updated. |
        
## LiveEventInputAccessControl

The IP access control for Live Event Input.

```puppet
$azure_live_event_input_access_control = {
  ip => $azure_ip_access_control
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|ip | [IPAccessControl](#ipaccesscontrol) | false | The IP access control properties. |
        
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
        
## LiveEventEndpoint

The Live Event endpoint.

```puppet
$azure_live_event_endpoint = {
  protocol => "protocol (optional)",
  url => "url (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|protocol | String | false | The endpoint protocol. |
|url | String | false | The endpoint URL. |
        
## LiveEventPreview

The Live Event preview.

```puppet
$azure_live_event_preview = {
  accessControl => $azure_live_event_preview_access_control
  alternativeMediaId => "alternativeMediaId (optional)",
  endpoints => $azure_live_event_endpoint
  previewLocator => "previewLocator (optional)",
  streamingPolicyName => "streamingPolicyName (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accessControl | [LiveEventPreviewAccessControl](#liveeventpreviewaccesscontrol) | false | The access control for LiveEvent preview. |
|alternativeMediaId | String | false | An Alternative Media Identifier associated with the StreamingLocator created for the preview.  This value is specified at creation time and cannot be updated.  The identifier can be used in the CustomLicenseAcquisitionUrlTemplate or the CustomKeyAcquisitionUrlTemplate of the StreamingPolicy specified in the StreamingPolicyName field. |
|endpoints | [LiveEventEndpoint](#liveeventendpoint) | false | The endpoints for preview. |
|previewLocator | String | false | The identifier of the preview locator in Guid format.  Specifying this at creation time allows the caller to know the preview locator url before the event is created.  If omitted, the service will generate a random identifier.  This value cannot be updated once the live event is created. |
|streamingPolicyName | String | false | The name of streaming policy used for the LiveEvent preview.  This value is specified at creation time and cannot be updated. |
        
## LiveEventPreviewAccessControl

The IP access control for Live Event preview.

```puppet
$azure_live_event_preview_access_control = {
  ip => $azure_ip_access_control
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|ip | [IPAccessControl](#ipaccesscontrol) | false | The IP access control properties. |
        
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the LiveEvent

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{account_name}/liveEvents/%{live_event_name}`|Put|Creates a Live Event.|LiveEvents_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{account_name}/liveEvents/%{live_event_name}`|Get|Gets a Live Event.|LiveEvents_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{account_name}/liveEvents`|Get|Lists the Live Events in the account.|LiveEvents_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{account_name}/liveEvents/%{live_event_name}`|Put|Creates a Live Event.|LiveEvents_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{account_name}/liveEvents/%{live_event_name}`|Delete|Deletes a Live Event.|LiveEvents_Delete|
