Document: "account"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/datalake-analytics/resource-manager/Microsoft.DataLakeAnalytics/stable/2016-11-01/account.json")

## ComputePolicy

Data Lake Analytics compute policy information.

```puppet
azure_compute_policy {
  account_name => "account_name",
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_compute_policy_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The name of the Data Lake Analytics account. |
|api_version | String | true | Client Api Version. |
|parameters | Hash | true | Parameters supplied to create or update the compute policy. The max degree of parallelism per job property, min priority per job property, or both must be present. |
|properties | [ComputePolicyProperties](#computepolicyproperties) | false | The compute policy properties. |
|resource_group_name | String | true | The name of the Azure resource group. |
|subscription_id | String | true | Get subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## ComputePolicyProperties

The compute policy properties.

```puppet
$azure_compute_policy_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ComputePolicy

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeAnalytics/accounts/%{account_name}/computePolicies/%{compute_policy_name}`|Put|Creates or updates the specified compute policy. During update, the compute policy with the specified name will be replaced with this new compute policy. An account supports, at most, 50 policies|ComputePolicies_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeAnalytics/accounts/%{account_name}/computePolicies/%{compute_policy_name}`|Get|Gets the specified Data Lake Analytics compute policy.|ComputePolicies_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeAnalytics/accounts/%{account_name}/computePolicies`|Get|Lists the Data Lake Analytics compute policies within the specified Data Lake Analytics account. An account supports, at most, 50 policies|ComputePolicies_ListByAccount|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeAnalytics/accounts/%{account_name}/computePolicies/%{compute_policy_name}`|Put|Creates or updates the specified compute policy. During update, the compute policy with the specified name will be replaced with this new compute policy. An account supports, at most, 50 policies|ComputePolicies_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataLakeAnalytics/accounts/%{account_name}/computePolicies/%{compute_policy_name}`|Delete|Deletes the specified compute policy from the specified Data Lake Analytics account|ComputePolicies_Delete|
