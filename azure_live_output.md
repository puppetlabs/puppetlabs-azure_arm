Document: "streamingservice"


Path: "/tmp/azure-rest-api-specs/specification/mediaservices/resource-manager/Microsoft.Media/stable/2018-07-01/streamingservice.json")

## LiveOutput

The Live Output.

```puppet
azure_live_output {
  account_name => "account_name",
  api_version => "api_version",
  live_event_name => "live_event_name",
  parameters => "parameters",
  properties => $azure_live_output_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The Media Services account name. |
|api_version | String | true | The Version of the API to be used with the client request. |
|live_event_name | String | true | The name of the Live Event. |
|parameters | Hash | true | Live Output properties needed for creation. |
|properties | [LiveOutputProperties](#liveoutputproperties) | false | The Live Output properties. |
|resource_group_name | String | true | The name of the resource group within the Azure subscription. |
|subscription_id | String | true | The unique identifier for a Microsoft Azure subscription. |
        
## LiveOutputProperties

The JSON object that contains the properties required to create a Live Output.

```puppet
$azure_live_output_properties = {
  archiveWindowLength => "archiveWindowLength",
  assetName => "assetName",
  description => "description (optional)",
  hls => $azure_hls
  manifestName => "manifestName (optional)",
  outputSnapTime => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|archiveWindowLength | String | true | ISO 8601 timespan duration of the archive window length. This is duration that customer want to retain the recorded content. |
|assetName | String | true | The asset name. |
|description | String | false | The description of the Live Output. |
|hls | [Hls](#hls) | false | The HLS configuration. |
|manifestName | String | false | The manifest file name.  If not provided, the service will generate one automatically. |
|outputSnapTime | Integer | false | The output snapshot time. |
        
## Hls

The HLS configuration.

```puppet
$azure_hls = {
  fragmentsPerTsSegment => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|fragmentsPerTsSegment | Integer | false | The amount of fragments per HTTP Live Streaming (HLS) segment. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the LiveOutput

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{account_name}/liveEvents/%{live_event_name}/liveOutputs/%{live_output_name}`|Put|Creates a Live Output.|LiveOutputs_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{account_name}/liveEvents/%{live_event_name}/liveOutputs/%{live_output_name}`|Get|Gets a Live Output.|LiveOutputs_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{account_name}/liveEvents/%{live_event_name}/liveOutputs`|Get|Lists the Live Outputs in the Live Event.|LiveOutputs_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{account_name}/liveEvents/%{live_event_name}/liveOutputs/%{live_output_name}`|Put|Creates a Live Output.|LiveOutputs_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaservices/%{account_name}/liveEvents/%{live_event_name}/liveOutputs/%{live_output_name}`|Delete|Deletes a Live Output.|LiveOutputs_Delete|
