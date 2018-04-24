Document: "logic"
Path: "/root/specs/specification/logic/resource-manager/Microsoft.Logic/stable/2016-06-01/logic.json")

## IntegrationAccountMap

```puppet
azure_integration_account_map {
  api_version => "api_version",
  id => "id (optional)",
  integration_account_name => "integration_account_name",
  location => "location (optional)",
  map => "map",
  map_name => "map_name",
  name => "name (optional)",
  properties => $azure_integration_account_map_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|id | String | false | The resource id. |
|integration_account_name | String | true | The integration account name. |
|location | String | false | The resource location. |
|map | Hash | true | The integration account map. |
|map_name | String | true | The integration account map name. |
|name | String | false | Gets the resource name. |
|properties | [IntegrationAccountMapProperties](#integrationaccountmapproperties) | true | The integration account map properties. |
|resource_group_name | String | true | The resource group name. |
|subscription_id | String | true | The subscription id. |
|tags | Hash | false | The resource tags. |
|type | String | false | Gets the resource type. |
        
## IntegrationAccountMapProperties

```puppet
$azure_integration_account_map_properties = {
  changedTime => "changedTime (optional)",
  content => "content (optional)",
  contentLink => $azure_content_link
  contentType => "contentType (optional)",
  createdTime => "createdTime (optional)",
  mapType => $azure_map_type
  metadata => "metadata (optional)",
  parametersSchema => "parametersSchema (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|changedTime | String | false | The changed time. |
|content | String | false | The content. |
|contentLink | [ContentLink](#contentlink) | false | The content link. |
|contentType | String | false | The content type. |
|createdTime | String | false | The created time. |
|mapType | [MapType](#maptype) | true | The map type. |
|metadata | Hash | false | The metadata. |
|parametersSchema | Hash | false | The parameters schema of integration account map. |
        
## ContentLink

```puppet
$azure_content_link = {
  contentHash => $azure_content_hash
  contentSize => "1234 (optional)",
  contentVersion => "contentVersion (optional)",
  metadata => $azure_object
  uri => "uri (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|contentHash | [ContentHash](#contenthash) | false | The content hash. |
|contentSize | Integer | false | The content size. |
|contentVersion | String | false | The content version. |
|metadata | [Object](#object) | false | The metadata. |
|uri | String | false | The content link URI. |
        
## ContentHash

```puppet
$azure_content_hash = {
  algorithm => "algorithm (optional)",
  value => "value (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|algorithm | String | false | The algorithm of the content hash. |
|value | String | false | The value of the content hash. |
        
## Object

```puppet
$azure_object = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## MapType

```puppet
$azure_map_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the IntegrationAccountMap

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/maps/%{map_name}`|Put|Creates or updates an integration account map.|Maps_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/maps/%{map_name}`|Get|Gets an integration account map.|Maps_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/maps`|Get|Gets a list of integration account maps.|Maps_ListByIntegrationAccounts|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/maps/%{map_name}`|Put|Creates or updates an integration account map.|Maps_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/maps/%{map_name}`|Delete|Deletes an integration account map.|Maps_Delete|