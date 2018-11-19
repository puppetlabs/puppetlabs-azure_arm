Document: "maps-management"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/maps/resource-manager/Microsoft.Maps/stable/2018-05-01/maps-management.json")

## MapsAccount

An Azure resource which represents access to a suite of Maps REST APIs.

```puppet
azure_maps_account {
  account_name => "account_name",
  api_version => "api_version",
  maps_account_create_parameters => "MapsAccountCreateParameters",
  resource_group_name => "resource_group_name",
  sku => $azure_sku
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The name of the Maps Account. |
|api_version | String | true | Client Api Version. |
|maps_account_create_parameters | Hash | true | The new or updated parameters for the Maps Account. |
|resource_group_name | String | true | The name of the Azure Resource Group. |
|sku | [Sku](#sku) | false | The SKU of this account. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## Sku

The SKU of the Maps Account.

```puppet
$azure_sku = {
  name => "name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | The name of the SKU, in standard format (such as S0). |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the MapsAccount

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Maps/accounts/%{account_name}`|Put|Create or update a Maps Account. A Maps Account holds the keys which allow access to the Maps REST APIs.|Accounts_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Maps/accounts`|Get|Get all Maps Accounts in a Subscription|Accounts_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Maps/accounts/%{account_name}`|Get|Get a Maps Account.|Accounts_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Maps/accounts`|Get|Get all Maps Accounts in a Resource Group|Accounts_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Maps/accounts/%{account_name}`|Put|Create or update a Maps Account. A Maps Account holds the keys which allow access to the Maps REST APIs.|Accounts_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Maps/accounts/%{account_name}`|Delete|Delete a Maps Account.|Accounts_Delete|
