Document: "StreamingPoliciesAndStreamingLocators"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/mediaservices/resource-manager/Microsoft.Media/stable/2018-07-01/StreamingPoliciesAndStreamingLocators.json")

## StreamingPolicy

A Streaming Policy resource

```puppet
azure_streaming_policy {
  account_name => "account_name",
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_streaming_policy_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The Media Services account name. |
|api_version | String | true | The Version of the API to be used with the client request. |
|parameters | Hash | true | The request parameters |
|properties | [StreamingPolicyProperties](#streamingpolicyproperties) | false |  |
|resource_group_name | String | true | The name of the resource group within the Azure subscription. |
|subscription_id | String | true | The unique identifier for a Microsoft Azure subscription. |
        
## StreamingPolicyProperties

Class to specify properties of Streaming Policy

```puppet
$azure_streaming_policy_properties = {
  commonEncryptionCbcs => $azure_common_encryption_cbcs
  commonEncryptionCenc => $azure_common_encryption_cenc
  defaultContentKeyPolicyName => "defaultContentKeyPolicyName (optional)",
  envelopeEncryption => $azure_envelope_encryption
  noEncryption => $azure_no_encryption
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|commonEncryptionCbcs | [CommonEncryptionCbcs](#commonencryptioncbcs) | false | Configuration of CommonEncryptionCbcs |
|commonEncryptionCenc | [CommonEncryptionCenc](#commonencryptioncenc) | false | Configuration of CommonEncryptionCenc |
|defaultContentKeyPolicyName | String | false | Default ContentKey used by current Streaming Policy |
|envelopeEncryption | [EnvelopeEncryption](#envelopeencryption) | false | Configuration of EnvelopeEncryption |
|noEncryption | [NoEncryption](#noencryption) | false | Configurations of NoEncryption |
        
## CommonEncryptionCbcs

Class for CommonEncryptionCbcs encryption scheme

```puppet
$azure_common_encryption_cbcs = {
  clearTracks => $azure_track_selection
  contentKeys => $azure_streaming_policy_content_keys
  drm => $azure_cbcs_drm_configuration
  enabledProtocols => $azure_enabled_protocols
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|clearTracks | [TrackSelection](#trackselection) | false | Representing which tracks should not be encrypted |
|contentKeys | [StreamingPolicyContentKeys](#streamingpolicycontentkeys) | false | Representing default content key for each encryption scheme and separate content keys for specific tracks |
|drm | [CbcsDrmConfiguration](#cbcsdrmconfiguration) | false | Configuration of DRMs for current encryption scheme |
|enabledProtocols | [EnabledProtocols](#enabledprotocols) | false | Representing supported protocols |
        
## TrackSelection

Class to select a track

```puppet
$azure_track_selection = {
  trackSelections => $azure_track_property_condition
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|trackSelections | [TrackPropertyCondition](#trackpropertycondition) | false | TrackSelections is a track property condition list which can specify track(s) |
        
## TrackPropertyCondition

Class to specify one track property condition

```puppet
$azure_track_property_condition = {
  operation => "operation",
  property => "property",
  value => "value (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|operation | String | true | Track property condition operation |
|property | String | true | Track property type |
|value | String | false | Track property value |
        
## StreamingPolicyContentKeys

Class to specify properties of all content keys in Streaming Policy

```puppet
$azure_streaming_policy_content_keys = {
  defaultKey => $azure_default_key
  keyToTrackMappings => $azure_streaming_policy_content_key
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|defaultKey | [DefaultKey](#defaultkey) | false | Default content key for an encryption scheme |
|keyToTrackMappings | [StreamingPolicyContentKey](#streamingpolicycontentkey) | false | Representing tracks needs separate content key |
        
## DefaultKey

Class to specify properties of default content key for each encryption scheme

```puppet
$azure_default_key = {
  label => "label (optional)",
  policyName => "policyName (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|label | String | false | Label can be used to specify Content Key when creating a Streaming Locator |
|policyName | String | false | Policy used by Default Key |
        
## StreamingPolicyContentKey

Class to specify properties of content key

```puppet
$azure_streaming_policy_content_key = {
  label => "label (optional)",
  policyName => "policyName (optional)",
  tracks => $azure_track_selection
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|label | String | false | Label can be used to specify Content Key when creating a Streaming Locator |
|policyName | String | false | Policy used by Content Key |
|tracks | [TrackSelection](#trackselection) | false | Tracks which use this content key |
        
        
## CbcsDrmConfiguration

Class to specify DRM configurations of CommonEncryptionCbcs scheme in Streaming Policy

```puppet
$azure_cbcs_drm_configuration = {
  fairPlay => $azure_streaming_policy_fair_play_configuration
  playReady => $azure_streaming_policy_play_ready_configuration
  widevine => $azure_streaming_policy_widevine_configuration
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|fairPlay | [StreamingPolicyFairPlayConfiguration](#streamingpolicyfairplayconfiguration) | false | FairPlay configurations |
|playReady | [StreamingPolicyPlayReadyConfiguration](#streamingpolicyplayreadyconfiguration) | false | PlayReady configurations |
|widevine | [StreamingPolicyWidevineConfiguration](#streamingpolicywidevineconfiguration) | false | Widevine configurations |
        
## StreamingPolicyFairPlayConfiguration

Class to specify configurations of FairPlay in Streaming Policy

```puppet
$azure_streaming_policy_fair_play_configuration = {
  allowPersistentLicense => "allowPersistentLicense",
  customLicenseAcquisitionUrlTemplate => "customLicenseAcquisitionUrlTemplate (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|allowPersistentLicense | Boolean | true | All license to be persistent or not |
|customLicenseAcquisitionUrlTemplate | String | false | The template for a customer service to deliver keys to end users.  Not needed when using Azure Media Services for issuing keys. |
        
## StreamingPolicyPlayReadyConfiguration

Class to specify configurations of PlayReady in Streaming Policy

```puppet
$azure_streaming_policy_play_ready_configuration = {
  customLicenseAcquisitionUrlTemplate => "customLicenseAcquisitionUrlTemplate (optional)",
  playReadyCustomAttributes => "playReadyCustomAttributes (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|customLicenseAcquisitionUrlTemplate | String | false | The template for a customer service to deliver keys to end users.  Not needed when using Azure Media Services for issuing keys. |
|playReadyCustomAttributes | String | false | Custom attributes for PlayReady |
        
## StreamingPolicyWidevineConfiguration

Class to specify configurations of Widevine in Streaming Policy

```puppet
$azure_streaming_policy_widevine_configuration = {
  customLicenseAcquisitionUrlTemplate => "customLicenseAcquisitionUrlTemplate (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|customLicenseAcquisitionUrlTemplate | String | false | The template for a customer service to deliver keys to end users.  Not needed when using Azure Media Services for issuing keys. |
        
## EnabledProtocols

Class to specify which protocols are enabled

```puppet
$azure_enabled_protocols = {
  dash => "dash",
  download => "download",
  hls => "hls",
  smoothStreaming => "smoothStreaming",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dash | Boolean | true | Enable DASH protocol or not |
|download | Boolean | true | Enable Download protocol or not |
|hls | Boolean | true | Enable HLS protocol or not |
|smoothStreaming | Boolean | true | Enable SmoothStreaming protocol or not |
        
## CommonEncryptionCenc

Class for envelope encryption scheme

```puppet
$azure_common_encryption_cenc = {
  clearTracks => $azure_track_selection
  contentKeys => $azure_streaming_policy_content_keys
  drm => $azure_cenc_drm_configuration
  enabledProtocols => $azure_enabled_protocols
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|clearTracks | [TrackSelection](#trackselection) | false | Representing which tracks should not be encrypted |
|contentKeys | [StreamingPolicyContentKeys](#streamingpolicycontentkeys) | false | Representing default content key for each encryption scheme and separate content keys for specific tracks |
|drm | [CencDrmConfiguration](#cencdrmconfiguration) | false | Configuration of DRMs for CommonEncryptionCenc encryption scheme |
|enabledProtocols | [EnabledProtocols](#enabledprotocols) | false | Representing supported protocols |
        
        
        
## CencDrmConfiguration

Class to specify DRM configurations of CommonEncryptionCenc scheme in Streaming Policy

```puppet
$azure_cenc_drm_configuration = {
  playReady => $azure_streaming_policy_play_ready_configuration
  widevine => $azure_streaming_policy_widevine_configuration
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|playReady | [StreamingPolicyPlayReadyConfiguration](#streamingpolicyplayreadyconfiguration) | false | PlayReady configurations |
|widevine | [StreamingPolicyWidevineConfiguration](#streamingpolicywidevineconfiguration) | false | Widevine configurations |
        
        
        
        
## EnvelopeEncryption

Class for EnvelopeEncryption encryption scheme

```puppet
$azure_envelope_encryption = {
  clearTracks => $azure_track_selection
  contentKeys => $azure_streaming_policy_content_keys
  customKeyAcquisitionUrlTemplate => "customKeyAcquisitionUrlTemplate (optional)",
  enabledProtocols => $azure_enabled_protocols
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|clearTracks | [TrackSelection](#trackselection) | false | Representing which tracks should not be encrypted |
|contentKeys | [StreamingPolicyContentKeys](#streamingpolicycontentkeys) | false | Representing default content key for each encryption scheme and separate content keys for specific tracks |
|customKeyAcquisitionUrlTemplate | String | false | KeyAcquisitionUrlTemplate is used to point to user specified service to delivery content keys |
|enabledProtocols | [EnabledProtocols](#enabledprotocols) | false | Representing supported protocols |
        
        
        
        
## NoEncryption

Class for NoEncryption scheme

```puppet
$azure_no_encryption = {
  enabledProtocols => $azure_enabled_protocols
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|enabledProtocols | [EnabledProtocols](#enabledprotocols) | false | Representing supported protocols |
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the StreamingPolicy

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/streamingPolicies/%{streaming_policy_name}`|Put|Create a Streaming Policy in the Media Services account|StreamingPolicies_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/streamingPolicies/%{streaming_policy_name}`|Get|Get the details of a Streaming Policy in the Media Services account|StreamingPolicies_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/streamingPolicies`|Get|Lists the Streaming Policies in the account|StreamingPolicies_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/streamingPolicies/%{streaming_policy_name}`|Put|Create a Streaming Policy in the Media Services account|StreamingPolicies_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/streamingPolicies/%{streaming_policy_name}`|Delete|Deletes a Streaming Policy in the Media Services account|StreamingPolicies_Delete|
