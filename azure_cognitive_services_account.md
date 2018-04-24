Document: "cognitiveservices"
Path: "/root/specs/specification/cognitiveservices/resource-manager/Microsoft.CognitiveServices/stable/2017-04-18/cognitiveservices.json")

## CognitiveServicesAccount

```puppet
azure_cognitive_services_account {
  account_name => "account_name",
  api_version => "api_version",
  etag => "etag (optional)",
  id => "id (optional)",
  kind => "kind (optional)",
  location => "location (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_cognitive_services_account_properties
  resource_group_name => "resource_group_name",
  sku => $azure_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The name of Cognitive Services account. |
|api_version | String | true | Version of the API to be used with the client request. Current version is 2017-04-18 |
|etag | String | false | Entity Tag |
|id | String | false | The id of the created account |
|kind | String | false | Type of cognitive service account. |
|location | String | false | The location of the resource |
|name | String | false | The name of the created account |
|parameters | Hash | true | The parameters to provide for the created account. |
|properties | [CognitiveServicesAccountProperties](#cognitiveservicesaccountproperties) | false | Properties of Cognitive Services account. |
|resource_group_name | String | true | The name of the resource group within the user's subscription. |
|sku | [Sku](#sku) | false | The SKU of Cognitive Services account. |
|subscription_id | String | true | Azure Subscription ID. |
|tags | Hash | false | Gets or sets a list of key value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. |
|type | String | false | Resource type |
        
## CognitiveServicesAccountProperties

```puppet
$azure_cognitive_services_account_properties = {
  endpoint => "endpoint (optional)",
  internalId => "internalId (optional)",
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endpoint | String | false | Endpoint of the created account. |
|internalId | String | false | The internal identifier. |
|provisioningState | String | false | Gets the status of the cognitive services account at the time the operation was called. |
        
## Sku

```puppet
$azure_sku = {
  name => $azure_sku_name
  tier => "tier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | [SkuName](#skuname) | true | Gets or sets the sku name. Required for account creation, optional for update. |
|tier | String | false | Gets the sku tier. This is based on the SKU name. |
        
## SkuName

```puppet
$azure_sku_name = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the CognitiveServicesAccount

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CognitiveServices/accounts/%{account_name}`|Put|Create Cognitive Services Account. Accounts is a resource group wide resource type. It holds the keys for developer to access intelligent APIs. It's also the resource type for billing.|Accounts_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.CognitiveServices/accounts`|Get|Returns all the resources of a particular type belonging to a subscription.|Accounts_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CognitiveServices/accounts/%{account_name}`|Get|Returns a Cognitive Services account specified by the parameters.|Accounts_GetProperties|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CognitiveServices/accounts`|Get|Returns all the resources of a particular type belonging to a resource group|Accounts_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CognitiveServices/accounts/%{account_name}`|Put|Create Cognitive Services Account. Accounts is a resource group wide resource type. It holds the keys for developer to access intelligent APIs. It's also the resource type for billing.|Accounts_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CognitiveServices/accounts/%{account_name}`|Delete|Deletes a Cognitive Services account from the resource group. |Accounts_Delete|