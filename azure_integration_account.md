Document: "logic"


Path: "/tmp/azure-rest-api-specs/specification/logic/resource-manager/Microsoft.Logic/stable/2016-06-01/logic.json")

## IntegrationAccount

The integration account.

```puppet
azure_integration_account {
  api_version => "api_version",
  integration_account => "integrationAccount",
  location => "location (optional)",
  properties => $azure_integration_account_properties
  resource_group_name => "resource_group_name",
  sku => $azure_integration_account_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|integration_account | Hash | true | The integration account. |
|location | String | false | The resource location. |
|properties | [IntegrationAccountProperties](#integrationaccountproperties) | false | The integration account properties. |
|resource_group_name | String | true | The resource group name. |
|sku | [IntegrationAccountSku](#integrationaccountsku) | false | The sku. |
|subscription_id | String | true | The subscription id. |
|tags | Hash | false | The resource tags. |
        
## IntegrationAccountProperties



```puppet
$azure_integration_account_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## IntegrationAccountSku

The integration account sku.

```puppet
$azure_integration_account_sku = {
  name => $azure_integration_account_sku_name
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | [IntegrationAccountSkuName](#integrationaccountskuname) | true | The sku name. |
        
## IntegrationAccountSkuName



```puppet
$azure_integration_account_sku_name = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the IntegrationAccount

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}`|Put|Creates or updates an integration account.|IntegrationAccounts_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Logic/integrationAccounts`|Get|Gets a list of integration accounts by subscription.|IntegrationAccounts_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}`|Get|Gets an integration account.|IntegrationAccounts_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts`|Get|Gets a list of integration accounts by resource group.|IntegrationAccounts_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}`|Put|Creates or updates an integration account.|IntegrationAccounts_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}`|Delete|Deletes an integration account.|IntegrationAccounts_Delete|
