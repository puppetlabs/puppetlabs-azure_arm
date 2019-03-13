Document: "guestconfiguration"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/guestconfiguration/resource-manager/Microsoft.GuestConfiguration/stable/2018-11-20/guestconfiguration.json")

## GuestConfigurationAssignment

Guest configuration assignment is an association between a VM and guest configuration.

```puppet
azure_guest_configuration_assignment {
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_guest_configuration_assignment_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  vm_name => "vm_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|parameters | Hash | true | Parameters supplied to the create or update guest configuration assignment. |
|properties | [GuestConfigurationAssignmentProperties](#guestconfigurationassignmentproperties) | false | Properties of the Guest configuration assignment. |
|resource_group_name | String | true | The resource group name. |
|subscription_id | String | true | Subscription ID which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|vm_name | String | true | The name of the virtual machine. |
        
## GuestConfigurationAssignmentProperties

Guest configuration assignment properties.

```puppet
$azure_guest_configuration_assignment_properties = {
  context => "context (optional)",
  guestConfiguration => $azure_guest_configuration_navigation
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|context | String | false | The source which initiated the guest configuration assignment. Ex: Azure Policy |
|guestConfiguration | [GuestConfigurationNavigation](#guestconfigurationnavigation) | false | The guest configuration to assign. |
        
## GuestConfigurationNavigation

Guest configuration is an artifact that encapsulates DSC configuration and its dependencies. The artifact is a zip file containing DSC configuration (as MOF) and dependent resources and other dependencies like modules.

```puppet
$azure_guest_configuration_navigation = {
  configurationParameter => $azure_configuration_parameter
  configurationSetting => $azure_configuration_setting
  kind => "kind (optional)",
  name => "name (optional)",
  version => "version (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|configurationParameter | [ConfigurationParameter](#configurationparameter) | false | The configuration parameters for the guest configuration. |
|configurationSetting | [ConfigurationSetting](#configurationsetting) | false | The configuration setting for the guest configuration. |
|kind | String | false | Kind of the guest configuration. For example:DSC |
|name | String | false | Name of the guest configuration. |
|version | String | false | Version of the guest configuration. |
        
## ConfigurationParameter

Represents a configuration parameter.

```puppet
$azure_configuration_parameter = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ConfigurationSetting

Configuration setting of LCM (Local Configuration Manager).

```puppet
$azure_configuration_setting = {
  allowModuleOverwrite => "allowModuleOverwrite (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|allowModuleOverwrite | String | false | If true - new configurations downloaded from the pull service are allowed to overwrite the old ones on the target node. Otherwise, false |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the GuestConfigurationAssignment

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachines/%{vm_name}/providers/Microsoft.GuestConfiguration/guestConfigurationAssignments/%{guest_configuration_assignment_name}`|Put|Creates an association between a VM and guest configuration|GuestConfigurationAssignments_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachines/%{vm_name}/providers/Microsoft.GuestConfiguration/guestConfigurationAssignments/%{guest_configuration_assignment_name}`|Get|Get information about a guest configuration assignment|GuestConfigurationAssignments_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachines/%{vm_name}/providers/Microsoft.GuestConfiguration/guestConfigurationAssignments`|Get|List all guest configuration assignments for a virtual machine.|GuestConfigurationAssignments_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachines/%{vm_name}/providers/Microsoft.GuestConfiguration/guestConfigurationAssignments/%{guest_configuration_assignment_name}`|Put|Creates an association between a VM and guest configuration|GuestConfigurationAssignments_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachines/%{vm_name}/providers/Microsoft.GuestConfiguration/guestConfigurationAssignments/%{guest_configuration_assignment_name}`|Delete|Delete a guest configuration assignment|GuestConfigurationAssignments_Delete|
