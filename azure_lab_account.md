Document: "ML"


Path: "/tmp/azure-rest-api-specs/specification/labservices/resource-manager/Microsoft.LabServices/stable/2018-10-15/ML.json")

## LabAccount

Represents a lab account.

```puppet
azure_lab_account {
  api_version => "api_version",
  lab_account => "labAccount",
  location => "location (optional)",
  properties => $azure_lab_account_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|lab_account | Hash | true | Represents a lab account. |
|location | String | false | The location of the resource. |
|properties | [LabAccountProperties](#labaccountproperties) | false | The properties of the resource. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription ID. |
|tags | Hash | false | The tags of the resource. |
        
## LabAccountProperties

Properties of a Lab Account.

```puppet
$azure_lab_account_properties = {
  enabledRegionSelection => "enabledRegionSelection (optional)",
  latestOperationResult => $azure_latest_operation_result
  provisioningState => "provisioningState (optional)",
  sizeConfiguration => $azure_size_configuration_properties
  uniqueIdentifier => "uniqueIdentifier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|enabledRegionSelection | Boolean | false | Represents if region selection is enabled |
|latestOperationResult | [LatestOperationResult](#latestoperationresult) | false | The details of the latest operation. ex: status, error |
|provisioningState | String | false | The provisioning status of the resource. |
|sizeConfiguration | [SizeConfigurationProperties](#sizeconfigurationproperties) | false | Represents the size configuration under the lab account |
|uniqueIdentifier | String | false | The unique immutable identifier of a resource (Guid). |
        
## LatestOperationResult

Details of the status of an operation.

```puppet
$azure_latest_operation_result = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## SizeConfigurationProperties

Represents the size configuration under the lab account

```puppet
$azure_size_configuration_properties = {
  environmentSizes => $azure_environment_size
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|environmentSizes | [EnvironmentSize](#environmentsize) | false | Represents a list of size categories supported by this Lab Account (Small, Medium, Large) |
        
## EnvironmentSize

Represents a size category supported by this Lab Account (small, medium or large)

```puppet
$azure_environment_size = {
  name => "name (optional)",
  vmSizes => $azure_size_info
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | The size category |
|vmSizes | [SizeInfo](#sizeinfo) | false | Represents a set of compute sizes that can serve this given size type |
        
## SizeInfo

Contains detailed information about a size

```puppet
$azure_size_info = {
  computeSize => "computeSize (optional)",
  memory => "memory (optional)",
  numberOfCores => "1234 (optional)",
  price => "price (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|computeSize | String | false | Represents the actual compute size, e.g. Standard_A2_v2. |
|memory | Numeric | false | The amount of memory available (in GB). |
|numberOfCores | Integer | false | The number of cores a VM of this size has. |
|price | Numeric | false | The pay-as-you-go price per hour this size will cost. It does not include discounts and may not reflect the actual price the size will cost. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the LabAccount

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}`|Put|Create or replace an existing Lab Account.|LabAccounts_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}`|Get|Get lab account|LabAccounts_Get|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}`|Put|Create or replace an existing Lab Account.|LabAccounts_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}`|Delete|Delete lab account. This operation can take a while to complete|LabAccounts_Delete|
