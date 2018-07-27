Document: "account"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/datalake-analytics/resource-manager/Microsoft.DataLakeAnalytics/stable/2016-11-01/account.json")

## DataLakeAnalyticsAccount

A Data Lake Analytics account object, containing all information associated with the named Data Lake Analytics account.

```puppet
azure_data_lake_analytics_account {
  account_name => "account_name",
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_data_lake_analytics_account_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The name of the Data Lake Analytics account. |
|api_version | String | true | Client Api Version. |
|parameters | Hash | true | Parameters supplied to create a new Data Lake Analytics account. |
|properties | [DataLakeAnalyticsAccountProperties](#datalakeanalyticsaccountproperties) | false | The properties defined by Data Lake Analytics all properties are specific to each resource provider. |
|resource_group_name | String | true | The name of the Azure resource group. |
|subscription_id | String | true | Get subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## DataLakeAnalyticsAccountProperties

The account specific properties that are associated with an underlying Data Lake Analytics account. Returned only when retrieving a specific account.

```puppet
$azure_data_lake_analytics_account_properties = {
  computePolicies => $azure_compute_policy
  dataLakeStoreAccounts => $azure_data_lake_store_account_information
  firewallRules => $azure_firewall_rule
  storageAccounts => $azure_storage_account_information
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|computePolicies | [ComputePolicy](#computepolicy) | false | The list of compute policies associated with this account. |
|dataLakeStoreAccounts | [DataLakeStoreAccountInformation](#datalakestoreaccountinformation) | false | The list of Data Lake Store accounts associated with this account. |
|firewallRules | [FirewallRule](#firewallrule) | false | The list of firewall rules associated with this account. |
|storageAccounts | [StorageAccountInformation](#storageaccountinformation) | false | The list of Azure Blob Storage accounts associated with this account. |
        
## ComputePolicy

Data Lake Analytics compute policy information.

```puppet
$azure_compute_policy = {
  accountName => "accountName",
  api-version => "api-version",
  parameters => "parameters",
  properties => $azure_compute_policy_properties
  resourceGroupName => "resourceGroupName",
  subscriptionId => "subscriptionId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accountName | String | true | The name of the Data Lake Analytics account. |
|api-version | String | true | Client Api Version. |
|parameters | Hash | true | Parameters supplied to create or update the compute policy. The max degree of parallelism per job property, min priority per job property, or both must be present. |
|properties | [ComputePolicyProperties](#computepolicyproperties) | false | The compute policy properties. |
|resourceGroupName | String | true | The name of the Azure resource group. |
|subscriptionId | String | true | Get subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## ComputePolicyProperties

The compute policy properties.

```puppet
$azure_compute_policy_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## DataLakeStoreAccountInformation

Data Lake Store account information.

```puppet
$azure_data_lake_store_account_information = {
  properties => $azure_data_lake_store_account_information_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|properties | [DataLakeStoreAccountInformationProperties](#datalakestoreaccountinformationproperties) | false | The Data Lake Store account properties. |
        
## DataLakeStoreAccountInformationProperties

The Data Lake Store account properties.

```puppet
$azure_data_lake_store_account_information_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## FirewallRule

Data Lake Analytics firewall rule information.

```puppet
$azure_firewall_rule = {
  accountName => "accountName",
  api-version => "api-version",
  parameters => "parameters",
  properties => $azure_firewall_rule_properties
  resourceGroupName => "resourceGroupName",
  subscriptionId => "subscriptionId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accountName | String | true | The name of the Data Lake Analytics account. |
|api-version | String | true | Client Api Version. |
|parameters | Hash | true | Parameters supplied to create or update the firewall rule. |
|properties | [FirewallRuleProperties](#firewallruleproperties) | false | The firewall rule properties. |
|resourceGroupName | String | true | The name of the Azure resource group. |
|subscriptionId | String | true | Get subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## FirewallRuleProperties

The firewall rule properties.

```puppet
$azure_firewall_rule_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## StorageAccountInformation

Azure Storage account information.

```puppet
$azure_storage_account_information = {
  properties => $azure_storage_account_information_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|properties | [StorageAccountInformationProperties](#storageaccountinformationproperties) | false | The Azure Storage account properties. |
        
## StorageAccountInformationProperties

The Azure Storage account properties.

```puppet
$azure_storage_account_information_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DataLakeAnalyticsAccount

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeAnalytics/accounts/%{account_name}`|Put|Creates the specified Data Lake Analytics account. This supplies the user with computation services for Data Lake Analytics workloads.|Accounts_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeAnalytics/accounts/%{account_name}`|Get|Gets details of the specified Data Lake Analytics account.|Accounts_Get|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeAnalytics/accounts/%{account_name}`|Put|Creates the specified Data Lake Analytics account. This supplies the user with computation services for Data Lake Analytics workloads.|Accounts_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeAnalytics/accounts/%{account_name}`|Delete|Begins the delete process for the Data Lake Analytics account object specified by the account name.|Accounts_Delete|
