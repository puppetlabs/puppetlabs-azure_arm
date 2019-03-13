Document: "account"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/datalake-store/resource-manager/Microsoft.DataLakeStore/stable/2016-11-01/account.json")

## VirtualNetworkRule

Data Lake Store virtual network rule information.

```puppet
azure_virtual_network_rule {
  account_name => "account_name",
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_virtual_network_rule_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The name of the Data Lake Store account. |
|api_version | String | true | Client Api Version. |
|parameters | Hash | true | Parameters supplied to create or update the virtual network rule. |
|properties | [VirtualNetworkRuleProperties](#virtualnetworkruleproperties) | false | The virtual network rule properties. |
|resource_group_name | String | true | The name of the Azure resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## VirtualNetworkRuleProperties

The virtual network rule properties.

```puppet
$azure_virtual_network_rule_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the VirtualNetworkRule

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeStore/accounts/%{account_name}/virtualNetworkRules/%{virtual_network_rule_name}`|Put|Creates or updates the specified virtual network rule. During update, the virtual network rule with the specified name will be replaced with this new virtual network rule.|VirtualNetworkRules_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeStore/accounts/%{account_name}/virtualNetworkRules/%{virtual_network_rule_name}`|Get|Gets the specified Data Lake Store virtual network rule.|VirtualNetworkRules_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeStore/accounts/%{account_name}/virtualNetworkRules`|Get|Lists the Data Lake Store virtual network rules within the specified Data Lake Store account.|VirtualNetworkRules_ListByAccount|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeStore/accounts/%{account_name}/virtualNetworkRules/%{virtual_network_rule_name}`|Put|Creates or updates the specified virtual network rule. During update, the virtual network rule with the specified name will be replaced with this new virtual network rule.|VirtualNetworkRules_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeStore/accounts/%{account_name}/virtualNetworkRules/%{virtual_network_rule_name}`|Delete|Deletes the specified virtual network rule from the specified Data Lake Store account.|VirtualNetworkRules_Delete|
