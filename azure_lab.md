Document: "ML"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/labservices/resource-manager/Microsoft.LabServices/stable/2018-10-15/ML.json")

## Lab

Represents a lab.

```puppet
azure_lab {
  api_version => "api_version",
  lab => "lab",
  lab_account_name => "lab_account_name",
  location => "location (optional)",
  properties => $azure_lab_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|lab | Hash | true | Represents a lab. |
|lab_account_name | String | true | The name of the lab Account. |
|location | String | false | The location of the resource. |
|properties | [LabProperties](#labproperties) | false | The properties of the resource. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription ID. |
|tags | Hash | false | The tags of the resource. |
        
## LabProperties

Properties of a Lab.

```puppet
$azure_lab_properties = {
  latestOperationResult => $azure_latest_operation_result
  maxUsersInLab => "1234 (optional)",
  provisioningState => "provisioningState (optional)",
  uniqueIdentifier => "uniqueIdentifier (optional)",
  usageQuota => "usageQuota (optional)",
  userAccessMode => "userAccessMode (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|latestOperationResult | [LatestOperationResult](#latestoperationresult) | false | The details of the latest operation. ex: status, error |
|maxUsersInLab | Integer | false | Maximum number of users allowed in the lab. |
|provisioningState | String | false | The provisioning status of the resource. |
|uniqueIdentifier | String | false | The unique immutable identifier of a resource (Guid). |
|usageQuota | String | false | Maximum duration a user can use an environment for in the lab. |
|userAccessMode | String | false | Lab user access mode (open to all vs. restricted to those listed on the lab). |
        
## LatestOperationResult

Details of the status of an operation.

```puppet
$azure_latest_operation_result = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Lab

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}/labs/%{lab_name}`|Put|Create or replace an existing Lab.|Labs_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}/labs/%{lab_name}`|Get|Get lab|Labs_Get|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}/labs/%{lab_name}`|Put|Create or replace an existing Lab.|Labs_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}/labs/%{lab_name}`|Delete|Delete lab. This operation can take a while to complete|Labs_Delete|
