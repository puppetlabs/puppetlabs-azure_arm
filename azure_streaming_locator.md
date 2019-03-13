Document: "StreamingPoliciesAndStreamingLocators"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/mediaservices/resource-manager/Microsoft.Media/stable/2018-07-01/StreamingPoliciesAndStreamingLocators.json")

## StreamingLocator

A Streaming Locator resource

```puppet
azure_streaming_locator {
  account_name => "account_name",
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_streaming_locator_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The Media Services account name. |
|api_version | String | true | The Version of the API to be used with the client request. |
|parameters | Hash | true | The request parameters |
|properties | [StreamingLocatorProperties](#streaminglocatorproperties) | false |  |
|resource_group_name | String | true | The name of the resource group within the Azure subscription. |
|subscription_id | String | true | The unique identifier for a Microsoft Azure subscription. |
        
## StreamingLocatorProperties

Properties of the Streaming Locator.

```puppet
$azure_streaming_locator_properties = {
  alternativeMediaId => "alternativeMediaId (optional)",
  assetName => "assetName",
  contentKeys => $azure_streaming_locator_content_key
  defaultContentKeyPolicyName => "defaultContentKeyPolicyName (optional)",
  endTime => "endTime (optional)",
  startTime => "startTime (optional)",
  streamingLocatorId => "streamingLocatorId (optional)",
  streamingPolicyName => "streamingPolicyName",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|alternativeMediaId | String | false | Alternative Media ID of this Streaming Locator |
|assetName | String | true | Asset Name |
|contentKeys | [StreamingLocatorContentKey](#streaminglocatorcontentkey) | false | The ContentKeys used by this Streaming Locator. |
|defaultContentKeyPolicyName | String | false | Name of the default ContentKeyPolicy used by this Streaming Locator. |
|endTime | String | false | The end time of the Streaming Locator. |
|startTime | String | false | The start time of the Streaming Locator. |
|streamingLocatorId | String | false | The StreamingLocatorId of the Streaming Locator. |
|streamingPolicyName | String | true | Name of the Streaming Policy used by this Streaming Locator. Either specify the name of Streaming Policy you created or use one of the predefined Streaming Policies. The predefined Streaming Policies available are: 'Predefined_DownloadOnly', 'Predefined_ClearStreamingOnly', 'Predefined_DownloadAndClearStreaming', 'Predefined_ClearKey', 'Predefined_MultiDrmCencStreaming' and 'Predefined_MultiDrmStreaming' |
        
## StreamingLocatorContentKey

Class for content key in Streaming Locator

```puppet
$azure_streaming_locator_content_key = {
  id => "id",
  labelReferenceInStreamingPolicy => "labelReferenceInStreamingPolicy (optional)",
  tracks => $azure_track_selection
  value => "value (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | true | ID of Content Key |
|labelReferenceInStreamingPolicy | String | false | Label of Content Key as specified in the Streaming Policy |
|tracks | [TrackSelection](#trackselection) | false | Tracks which use this Content Key |
|value | String | false | Value of Content Key |
        
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



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the StreamingLocator

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/streamingLocators/%{streaming_locator_name}`|Put|Create a Streaming Locator in the Media Services account|StreamingLocators_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/streamingLocators/%{streaming_locator_name}`|Get|Get the details of a Streaming Locator in the Media Services account|StreamingLocators_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/streamingLocators`|Get|Lists the Streaming Locators in the account|StreamingLocators_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/streamingLocators/%{streaming_locator_name}`|Put|Create a Streaming Locator in the Media Services account|StreamingLocators_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/streamingLocators/%{streaming_locator_name}`|Delete|Deletes a Streaming Locator in the Media Services account|StreamingLocators_Delete|
