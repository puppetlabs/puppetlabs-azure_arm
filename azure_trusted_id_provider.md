Document: "account"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/datalake-store/resource-manager/Microsoft.DataLakeStore/stable/2016-11-01/account.json")

## TrustedIdProvider

Data Lake Store trusted identity provider information.

```puppet
azure_trusted_id_provider {
  account_name => "account_name",
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_trusted_id_provider_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The name of the Data Lake Store account. |
|api_version | String | true | Client Api Version. |
|parameters | Hash | true | Parameters supplied to create or replace the trusted identity provider. |
|properties | [TrustedIdProviderProperties](#trustedidproviderproperties) | false | The trusted identity provider properties. |
|resource_group_name | String | true | The name of the Azure resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## TrustedIdProviderProperties

The trusted identity provider properties.

```puppet
$azure_trusted_id_provider_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the TrustedIdProvider

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeStore/accounts/%{account_name}/trustedIdProviders/%{trusted_id_provider_name}`|Put|Creates or updates the specified trusted identity provider. During update, the trusted identity provider with the specified name will be replaced with this new provider|TrustedIdProviders_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeStore/accounts/%{account_name}/trustedIdProviders/%{trusted_id_provider_name}`|Get|Gets the specified Data Lake Store trusted identity provider.|TrustedIdProviders_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeStore/accounts/%{account_name}/trustedIdProviders`|Get|Lists the Data Lake Store trusted identity providers within the specified Data Lake Store account.|TrustedIdProviders_ListByAccount|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeStore/accounts/%{account_name}/trustedIdProviders/%{trusted_id_provider_name}`|Put|Creates or updates the specified trusted identity provider. During update, the trusted identity provider with the specified name will be replaced with this new provider|TrustedIdProviders_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeStore/accounts/%{account_name}/trustedIdProviders/%{trusted_id_provider_name}`|Delete|Deletes the specified trusted identity provider from the specified Data Lake Store account|TrustedIdProviders_Delete|
