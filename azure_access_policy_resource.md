Document: "timeseriesinsights"
Path: "/root/specs/specification/timeseriesinsights/resource-manager/Microsoft.TimeSeriesInsights/stable/2017-11-15/timeseriesinsights.json")

## AccessPolicyResource

```puppet
azure_access_policy_resource {
  access_policy_name => "access_policy_name",
  api_version => "api_version",
  environment_name => "environment_name",
  id => "id (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_access_policy_resource_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|access_policy_name | String | true | Name of the access policy. |
|api_version | String | true | Version of the API to be used with the client request. |
|environment_name | String | true | The name of the Time Series Insights environment associated with the specified resource group. |
|id | String | false | Resource Id |
|name | String | false | Resource name |
|parameters | Hash | true | Parameters for creating an access policy. |
|properties | [AccessPolicyResourceProperties](#accesspolicyresourceproperties) | false |  |
|resource_group_name | String | true | Name of an Azure Resource group. |
|subscription_id | String | true | Azure Subscription ID. |
|type | String | false | Resource type |
        
## AccessPolicyResourceProperties

```puppet
$azure_access_policy_resource_properties = {
  description => "description (optional)",
  principalObjectId => "principalObjectId (optional)",
  roles => "roles (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | An description of the access policy. |
|principalObjectId | String | false | The objectId of the principal in Azure Active Directory. |
|roles | Array | false | The list of roles the principal is assigned on the environment. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the AccessPolicyResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.TimeSeriesInsights/environments/%{environment_name}/accessPolicies/%{access_policy_name}`|Put|Create or update an access policy in the specified environment.|AccessPolicies_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.TimeSeriesInsights/environments/%{environment_name}/accessPolicies/%{access_policy_name}`|Get|Gets the access policy with the specified name in the specified environment.|AccessPolicies_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.TimeSeriesInsights/environments/%{environment_name}/accessPolicies`|Get|Lists all the available access policies associated with the environment.|AccessPolicies_ListByEnvironment|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.TimeSeriesInsights/environments/%{environment_name}/accessPolicies/%{access_policy_name}`|Put|Create or update an access policy in the specified environment.|AccessPolicies_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.TimeSeriesInsights/environments/%{environment_name}/accessPolicies/%{access_policy_name}`|Delete|Deletes the access policy with the specified name in the specified subscription, resource group, and environment|AccessPolicies_Delete|