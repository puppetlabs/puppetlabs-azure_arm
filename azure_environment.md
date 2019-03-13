Document: "ML"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/labservices/resource-manager/Microsoft.LabServices/stable/2018-10-15/ML.json")

## Environment

Represents an environment instance

```puppet
azure_environment {
  api_version => "api_version",
  environment => "environment",
  environment_setting_name => "environment_setting_name",
  lab_account_name => "lab_account_name",
  lab_name => "lab_name",
  location => "location (optional)",
  properties => $azure_environment_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|environment | Hash | true | Represents an environment instance |
|environment_setting_name | String | true | The name of the environment Setting. |
|lab_account_name | String | true | The name of the lab Account. |
|lab_name | String | true | The name of the lab. |
|location | String | false | The location of the resource. |
|properties | [EnvironmentProperties](#environmentproperties) | false | The properties of the Environment resource |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription ID. |
|tags | Hash | false | The tags of the resource. |
        
## EnvironmentProperties

Properties of an environment

```puppet
$azure_environment_properties = {
  latestOperationResult => $azure_latest_operation_result
  networkInterface => $azure_network_interface
  provisioningState => "provisioningState (optional)",
  resourceSets => $azure_resource_set
  uniqueIdentifier => "uniqueIdentifier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|latestOperationResult | [LatestOperationResult](#latestoperationresult) | false | The details of the latest operation. ex: status, error |
|networkInterface | [NetworkInterface](#networkinterface) | false | Network details of the environment |
|provisioningState | String | false | The provisioning status of the resource. |
|resourceSets | [ResourceSet](#resourceset) | false | The set of a VM and the setting id it was created for |
|uniqueIdentifier | String | false | The unique immutable identifier of a resource (Guid). |
        
## LatestOperationResult

Details of the status of an operation.

```puppet
$azure_latest_operation_result = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## NetworkInterface

Network details of the environment

```puppet
$azure_network_interface = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ResourceSet

Represents a VM and the setting Id it was created for.

```puppet
$azure_resource_set = {
  resourceSettingId => "resourceSettingId (optional)",
  vmResourceId => "vmResourceId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|resourceSettingId | String | false | resourceSettingId for the environment |
|vmResourceId | String | false | VM resource Id for the environment |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Environment

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}/labs/%{lab_name}/environmentsettings/%{environment_setting_name}/environments/%{environment_name}`|Put|Create or replace an existing Environment.|Environments_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}/labs/%{lab_name}/environmentsettings/%{environment_setting_name}/environments/%{environment_name}`|Get|Get environment|Environments_Get|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}/labs/%{lab_name}/environmentsettings/%{environment_setting_name}/environments/%{environment_name}`|Put|Create or replace an existing Environment.|Environments_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}/labs/%{lab_name}/environmentsettings/%{environment_setting_name}/environments/%{environment_name}`|Delete|Delete environment. This operation can take a while to complete|Environments_Delete|
