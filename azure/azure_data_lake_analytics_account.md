Document: "account"
Path: "/root/specs/specification/datalake-analytics/resource-manager/Microsoft.DataLakeAnalytics/stable/2016-11-01/account.json")

## DataLakeAnalyticsAccount

```puppet
azure_data_lake_analytics_account {
  account_name => "account_name",
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_data_lake_analytics_account_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The name of the Data Lake Analytics account. |
|api_version | String | true | Client Api Version. |
|id | String | false | The resource identifer. |
|location | String | false | The resource location. |
|name | String | false | The resource name. |
|parameters | Hash | true | Parameters supplied to create a new Data Lake Analytics account. |
|properties | [DataLakeAnalyticsAccountProperties](#datalakeanalyticsaccountproperties) | false | The properties defined by Data Lake Analytics all properties are specific to each resource provider. |
|resource_group_name | String | true | The name of the Azure resource group. |
|subscription_id | String | true | Get subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | The resource tags. |
|type | String | false | The resource type. |
        
## DataLakeAnalyticsAccountProperties

```puppet
$azure_data_lake_analytics_account_properties = {
  accountId => "accountId (optional)",
  computePolicies => $azure_compute_policy
  creationTime => "creationTime (optional)",
  currentTier => "currentTier (optional)",
  dataLakeStoreAccounts => $azure_data_lake_store_account_information
  defaultDataLakeStoreAccount => "defaultDataLakeStoreAccount (optional)",
  endpoint => "endpoint (optional)",
  firewallAllowAzureIps => "firewallAllowAzureIps (optional)",
  firewallRules => $azure_firewall_rule
  firewallState => "firewallState (optional)",
  lastModifiedTime => "lastModifiedTime (optional)",
  maxDegreeOfParallelism => "1234 (optional)",
  maxDegreeOfParallelismPerJob => "1234 (optional)",
  maxJobCount => "1234 (optional)",
  minPriorityPerJob => "1234 (optional)",
  newTier => "newTier (optional)",
  provisioningState => "provisioningState (optional)",
  queryStoreRetention => "1234 (optional)",
  state => "state (optional)",
  storageAccounts => $azure_storage_account_information
  systemMaxDegreeOfParallelism => "1234 (optional)",
  systemMaxJobCount => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accountId | String | false | The unique identifier associated with this Data Lake Analytics account. |
|computePolicies | [ComputePolicy](#computepolicy) | false | The list of compute policies associated with this account. |
|creationTime | String | false | The account creation time. |
|currentTier | String | false | The commitment tier in use for the current month. |
|dataLakeStoreAccounts | [DataLakeStoreAccountInformation](#datalakestoreaccountinformation) | false | The list of Data Lake Store accounts associated with this account. |
|defaultDataLakeStoreAccount | String | false | The default Data Lake Store account associated with this account. |
|endpoint | String | false | The full CName endpoint for this account. |
|firewallAllowAzureIps | String | false | The current state of allowing or disallowing IPs originating within Azure through the firewall. If the firewall is disabled, this is not enforced. |
|firewallRules | [FirewallRule](#firewallrule) | false | The list of firewall rules associated with this account. |
|firewallState | String | false | The current state of the IP address firewall for this account. |
|lastModifiedTime | String | false | The account last modified time. |
|maxDegreeOfParallelism | Integer | false | The maximum supported degree of parallelism for this account. |
|maxDegreeOfParallelismPerJob | Integer | false | The maximum supported degree of parallelism per job for this account. |
|maxJobCount | Integer | false | The maximum supported jobs running under the account at the same time. |
|minPriorityPerJob | Integer | false | The minimum supported priority per job for this account. |
|newTier | String | false | The commitment tier for the next month. |
|provisioningState | String | false | The provisioning status of the Data Lake Analytics account. |
|queryStoreRetention | Integer | false | The number of days that job metadata is retained. |
|state | String | false | The state of the Data Lake Analytics account. |
|storageAccounts | [StorageAccountInformation](#storageaccountinformation) | false | The list of Azure Blob Storage accounts associated with this account. |
|systemMaxDegreeOfParallelism | Integer | false | The system defined maximum supported degree of parallelism for this account, which restricts the maximum value of parallelism the user can set for the account. |
|systemMaxJobCount | Integer | false | The system defined maximum supported jobs running under the account at the same time, which restricts the maximum number of running jobs the user can set for the account. |
        
## ComputePolicy

```puppet
$azure_compute_policy = {
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_compute_policy_properties
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | The resource identifier. |
|name | String | false | The resource name. |
|properties | [ComputePolicyProperties](#computepolicyproperties) | false | The compute policy properties. |
|type | String | false | The resource type. |
        
## ComputePolicyProperties

```puppet
$azure_compute_policy_properties = {
  maxDegreeOfParallelismPerJob => "1234 (optional)",
  minPriorityPerJob => "1234 (optional)",
  objectId => "objectId (optional)",
  objectType => "objectType (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|maxDegreeOfParallelismPerJob | Integer | false | The maximum degree of parallelism per job this user can use to submit jobs. |
|minPriorityPerJob | Integer | false | The minimum priority per job this user can use to submit jobs. |
|objectId | String | false | The AAD object identifier for the entity to create a policy for. |
|objectType | String | false | The type of AAD object the object identifier refers to. |
        
## DataLakeStoreAccountInformation

```puppet
$azure_data_lake_store_account_information = {
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_data_lake_store_account_information_properties
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | The resource identifier. |
|name | String | false | The resource name. |
|properties | [DataLakeStoreAccountInformationProperties](#datalakestoreaccountinformationproperties) | false | The Data Lake Store account properties. |
|type | String | false | The resource type. |
        
## DataLakeStoreAccountInformationProperties

```puppet
$azure_data_lake_store_account_information_properties = {
  suffix => "suffix (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|suffix | String | false | The optional suffix for the Data Lake Store account. |
        
## FirewallRule

```puppet
$azure_firewall_rule = {
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_firewall_rule_properties
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | The resource identifier. |
|name | String | false | The resource name. |
|properties | [FirewallRuleProperties](#firewallruleproperties) | false | The firewall rule properties. |
|type | String | false | The resource type. |
        
## FirewallRuleProperties

```puppet
$azure_firewall_rule_properties = {
  endIpAddress => "endIpAddress (optional)",
  startIpAddress => "startIpAddress (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endIpAddress | String | false | The end IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol. |
|startIpAddress | String | false | The start IP address for the firewall rule. This can be either ipv4 or ipv6. Start and End should be in the same protocol. |
        
## StorageAccountInformation

```puppet
$azure_storage_account_information = {
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_storage_account_information_properties
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | The resource identifier. |
|name | String | false | The resource name. |
|properties | [StorageAccountInformationProperties](#storageaccountinformationproperties) | false | The Azure Storage account properties. |
|type | String | false | The resource type. |
        
## StorageAccountInformationProperties

```puppet
$azure_storage_account_information_properties = {
  suffix => "suffix (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|suffix | String | false | The optional suffix for the storage account. |



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