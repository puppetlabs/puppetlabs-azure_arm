Document: "ML"


Path: "/tmp/azure-rest-api-specs/specification/labservices/resource-manager/Microsoft.LabServices/stable/2018-10-15/ML.json")

## User

The User registered to a lab

```puppet
azure_labservices_user {
  api_version => "api_version",
  lab_account_name => "lab_account_name",
  lab_name => "lab_name",
  location => "location (optional)",
  properties => $azure_user_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  user => "user",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|lab_account_name | String | true | The name of the lab Account. |
|lab_name | String | true | The name of the lab. |
|location | String | false | The location of the resource. |
|properties | [UserProperties](#userproperties) | false | These are the properties for the user registered under a lab. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription ID. |
|tags | Hash | false | The tags of the resource. |
|user | Hash | true | The User registered to a lab |
        
## UserProperties

Lab User properties

```puppet
$azure_user_properties = {
  latestOperationResult => $azure_latest_operation_result
  provisioningState => "provisioningState (optional)",
  uniqueIdentifier => "uniqueIdentifier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|latestOperationResult | [LatestOperationResult](#latestoperationresult) | false | The details of the latest operation. ex: status, error |
|provisioningState | String | false | The provisioning status of the resource. |
|uniqueIdentifier | String | false | The unique immutable identifier of a resource (Guid). |
        
## LatestOperationResult

Details of the status of an operation.

```puppet
$azure_latest_operation_result = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the User

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}/labs/%{lab_name}/users/%{user_name}`|Put|Create or replace an existing User.|Users_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}/labs/%{lab_name}/users/%{user_name}`|Get|Get user|Users_Get|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}/labs/%{lab_name}/users/%{user_name}`|Put|Create or replace an existing User.|Users_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}/labs/%{lab_name}/users/%{user_name}`|Delete|Delete user. This operation can take a while to complete|Users_Delete|
