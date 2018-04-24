Document: "account"
Path: "/root/specs/specification/datalake-store/resource-manager/Microsoft.DataLakeStore/stable/2016-11-01/account.json")

## TrustedIdProvider

```puppet
azure_trusted_id_provider {
  account_name => "account_name",
  api_version => "api_version",
  id => "id (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_trusted_id_provider_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The name of the Data Lake Store account. |
|api_version | String | true | Client Api Version. |
|id | String | false | The resource identifier. |
|name | String | false | The resource name. |
|parameters | Hash | true | Parameters supplied to create or replace the trusted identity provider. |
|properties | [TrustedIdProviderProperties](#trustedidproviderproperties) | false | The trusted identity provider properties. |
|resource_group_name | String | true | The name of the Azure resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | The resource type. |
        
## TrustedIdProviderProperties

```puppet
$azure_trusted_id_provider_properties = {
  idProvider => "idProvider (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|idProvider | String | false | The URL of this trusted identity provider. |



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