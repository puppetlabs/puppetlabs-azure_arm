Document: "account"
Path: "/root/specs/specification/datalake-analytics/resource-manager/Microsoft.DataLakeAnalytics/stable/2016-11-01/account.json")

## ComputePolicy

```puppet
azure_compute_policy {
  account_name => "account_name",
  api_version => "api_version",
  id => "id (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_compute_policy_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The name of the Data Lake Analytics account. |
|api_version | String | true | Client Api Version. |
|id | String | false | The resource identifier. |
|name | String | false | The resource name. |
|parameters | Hash | true | Parameters supplied to create or update the compute policy. The max degree of parallelism per job property, min priority per job property, or both must be present. |
|properties | [ComputePolicyProperties](#computepolicyproperties) | false | The compute policy properties. |
|resource_group_name | String | true | The name of the Azure resource group. |
|subscription_id | String | true | Get subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
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