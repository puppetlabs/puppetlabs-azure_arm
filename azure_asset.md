Document: "AssetsAndAssetFilters"


Path: "/tmp/azure-rest-api-specs/specification/mediaservices/resource-manager/Microsoft.Media/stable/2018-07-01/AssetsAndAssetFilters.json")

## Asset

An Asset.

```puppet
azure_asset {
  account_name => "account_name",
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_asset_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The Media Services account name. |
|api_version | String | true | The Version of the API to be used with the client request. |
|parameters | Hash | true | The request parameters |
|properties | [AssetProperties](#assetproperties) | false | The resource properties. |
|resource_group_name | String | true | The name of the resource group within the Azure subscription. |
|subscription_id | String | true | The unique identifier for a Microsoft Azure subscription. |
        
## AssetProperties

The Asset properties.

```puppet
$azure_asset_properties = {
  alternateId => "alternateId (optional)",
  container => "container (optional)",
  description => "description (optional)",
  storageAccountName => "storageAccountName (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|alternateId | String | false | The alternate ID of the Asset. |
|container | String | false | The name of the asset blob container. |
|description | String | false | The Asset description. |
|storageAccountName | String | false | The name of the storage account. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Asset

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/assets/%{asset_name}`|Put|Creates or updates an Asset in the Media Services account|Assets_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/assets/%{asset_name}`|Get|Get the details of an Asset in the Media Services account|Assets_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/assets`|Get|List Assets in the Media Services account with optional filtering and ordering|Assets_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/assets/%{asset_name}`|Put|Creates or updates an Asset in the Media Services account|Assets_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Media/mediaServices/%{account_name}/assets/%{asset_name}`|Delete|Deletes an Asset in the Media Services account|Assets_Delete|
