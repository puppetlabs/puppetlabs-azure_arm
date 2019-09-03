Document: "AssetsAndAssetFilters"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/mediaservices/resource-manager/Microsoft.Media/stable/2018-07-01/AssetsAndAssetFilters.json")

## AssetFilter

An Asset Filter.

```puppet
azure_asset_filter {
  account_name => "account_name",
  api_version => "api_version",
  asset_name => "asset_name",
  filter_name => "filter_name",
  parameters => "parameters",
  properties => $azure_media_filter_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The Media Services account name. |
|api_version | String | true | The Version of the API to be used with the client request. |
|asset_name | String | true | The Asset name. |
|filter_name | String | true | The Asset Filter name |
|parameters | Hash | true | The request parameters |
|properties | [MediaFilterProperties](#mediafilterproperties) | false |  |
|resource_group_name | String | true | The name of the resource group within the Azure subscription. |
|subscription_id | String | true | The unique identifier for a Microsoft Azure subscription. |
        
## MediaFilterProperties

The Media Filter properties.

```puppet
$azure_media_filter_properties = {
  firstQuality => $azure_first_quality
  presentationTimeRange => $azure_presentation_time_range
  tracks => $azure_filter_track_selection
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|firstQuality | [FirstQuality](#firstquality) | false | The first quality. |
|presentationTimeRange | [PresentationTimeRange](#presentationtimerange) | false | The presentation time range. |
|tracks | [FilterTrackSelection](#filtertrackselection) | false | The tracks selection conditions. |
        
## FirstQuality

Filter First Quality

```puppet
$azure_first_quality = {
  bitrate => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|bitrate | Integer | true | The first quality bitrate. |
        
## PresentationTimeRange

The presentation time range, this is asset related and not recommended for Account Filter.

```puppet
$azure_presentation_time_range = {
  endTimestamp => "1234 (optional)",
  forceEndTimestamp => "forceEndTimestamp (optional)",
  liveBackoffDuration => "1234 (optional)",
  presentationWindowDuration => "1234 (optional)",
  startTimestamp => "1234 (optional)",
  timescale => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endTimestamp | Integer | false | The absolute end time boundary. |
|forceEndTimestamp | Boolean | false | The indicator of forcing existing of end time stamp. |
|liveBackoffDuration | Integer | false | The relative to end right edge. |
|presentationWindowDuration | Integer | false | The relative to end sliding window. |
|startTimestamp | Integer | false | The absolute start time boundary. |
|timescale | Integer | false | The time scale of time stamps. |
        
## FilterTrackSelection

Representing a list of FilterTrackPropertyConditions to select a track.  The filters are combined using a logical AND operation.

```puppet
$azure_filter_track_selection = {
  trackSelections => $azure_filter_track_property_condition
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|trackSelections | [FilterTrackPropertyCondition](#filtertrackpropertycondition) | true | The track selections. |
        
## FilterTrackPropertyCondition

The class to specify one track property condition.

```puppet
$azure_filter_track_property_condition = {
  operation => "operation",
  property => "property",
  value => "value",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|operation | String | true | The track property condition operation. |
|property | String | true | The track property type. |
|value | String | true | The track property value. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the AssetFilter

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/assets/%{asset_name}/assetFilters/%{filter_name}`|Put|Creates or updates an Asset Filter associated with the specified Asset.|AssetFilters_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/assets/%{asset_name}/assetFilters/%{filter_name}`|Get|Get the details of an Asset Filter associated with the specified Asset.|AssetFilters_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/assets/%{asset_name}/assetFilters`|Get|List Asset Filters associated with the specified Asset.|AssetFilters_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/assets/%{asset_name}/assetFilters/%{filter_name}`|Put|Creates or updates an Asset Filter associated with the specified Asset.|AssetFilters_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/assets/%{asset_name}/assetFilters/%{filter_name}`|Delete|Deletes an Asset Filter associated with the specified Asset.|AssetFilters_Delete|
