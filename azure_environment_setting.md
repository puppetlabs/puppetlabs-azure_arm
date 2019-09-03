Document: "ML"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/labservices/resource-manager/Microsoft.LabServices/stable/2018-10-15/ML.json")

## EnvironmentSetting

Represents settings of an environment, from which environment instances would be created

```puppet
azure_environment_setting {
  api_version => "api_version",
  environment_setting => "environmentSetting",
  lab_account_name => "lab_account_name",
  lab_name => "lab_name",
  location => "location (optional)",
  properties => $azure_environment_setting_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|environment_setting | Hash | true | Represents settings of an environment, from which environment instances would be created |
|lab_account_name | String | true | The name of the lab Account. |
|lab_name | String | true | The name of the lab. |
|location | String | false | The location of the resource. |
|properties | [EnvironmentSettingProperties](#environmentsettingproperties) | false | The properties of the Environment Setting resource |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription ID. |
|tags | Hash | false | The tags of the resource. |
        
## EnvironmentSettingProperties

Properties of an environment setting

```puppet
$azure_environment_setting_properties = {
  configurationState => "configurationState (optional)",
  description => "description (optional)",
  latestOperationResult => $azure_latest_operation_result
  provisioningState => "provisioningState (optional)",
  resourceSettings => $azure_resource_settings
  title => "title (optional)",
  uniqueIdentifier => "uniqueIdentifier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|configurationState | String | false | Describes the user's progress in configuring their environment setting |
|description | String | false | Describes the environment and its resource settings |
|latestOperationResult | [LatestOperationResult](#latestoperationresult) | false | The details of the latest operation. ex: status, error |
|provisioningState | String | false | The provisioning status of the resource. |
|resourceSettings | [ResourceSettings](#resourcesettings) | true | The resource specific settings |
|title | String | false | Brief title describing the environment and its resource settings |
|uniqueIdentifier | String | false | The unique immutable identifier of a resource (Guid). |
        
## LatestOperationResult

Details of the status of an operation.

```puppet
$azure_latest_operation_result = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ResourceSettings

Represents resource specific settings

```puppet
$azure_resource_settings = {
  galleryImageResourceId => "galleryImageResourceId (optional)",
  referenceVm => $azure_reference_vm
  size => "size (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|galleryImageResourceId | String | false | The resource id of the gallery image used for creating the virtual machine |
|referenceVm | [ReferenceVm](#referencevm) | true | Details specific to Reference Vm |
|size | String | false | The size of the virtual machine |
        
## ReferenceVm

Details of a Reference Vm

```puppet
$azure_reference_vm = {
  password => "password (optional)",
  userName => "userName",
  vmStateDetails => $azure_vm_state_details
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|password | String | false | The password of the virtual machine. This will be set to null in GET resource API |
|userName | String | true | The username of the virtual machine |
|vmStateDetails | [VmStateDetails](#vmstatedetails) | false | The state details for the reference virtual machine. |
        
## VmStateDetails

Details about the state of the reference virtual machine.

```puppet
$azure_vm_state_details = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the EnvironmentSetting

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}/labs/%{lab_name}/environmentsettings/%{environment_setting_name}`|Put|Create or replace an existing Environment Setting. This operation can take a while to complete|EnvironmentSettings_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}/labs/%{lab_name}/environmentsettings/%{environment_setting_name}`|Get|Get environment setting|EnvironmentSettings_Get|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}/labs/%{lab_name}/environmentsettings/%{environment_setting_name}`|Put|Create or replace an existing Environment Setting. This operation can take a while to complete|EnvironmentSettings_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.LabServices/labaccounts/%{lab_account_name}/labs/%{lab_name}/environmentsettings/%{environment_setting_name}`|Delete|Delete environment setting. This operation can take a while to complete|EnvironmentSettings_Delete|
