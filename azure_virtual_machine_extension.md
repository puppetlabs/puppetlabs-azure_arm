Document: "compute"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/compute/resource-manager/Microsoft.Compute/stable/2019-03-01/compute.json")

## VirtualMachineExtension

Describes a Virtual Machine Extension.

```puppet
azure_virtual_machine_extension {
  api_version => "api_version",
  extension_parameters => "extensionParameters",
  location => "location (optional)",
  properties => $azure_virtual_machine_extension_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  vm_extension_name => "vm_extension_name",
  vm_name => "vm_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|extension_parameters | Hash | true | Parameters supplied to the Create Virtual Machine Extension operation. |
|location | String | false | Resource location |
|properties | [VirtualMachineExtensionProperties](#virtualmachineextensionproperties) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
|vm_extension_name | String | true | The name of the virtual machine extension. |
|vm_name | String | true | The name of the virtual machine where the extension should be created or updated. |
        
## VirtualMachineExtensionProperties

Describes the properties of a Virtual Machine Extension.

```puppet
$azure_virtual_machine_extension_properties = {
  autoUpgradeMinorVersion => "autoUpgradeMinorVersion (optional)",
  forceUpdateTag => "forceUpdateTag (optional)",
  instanceView => $azure_virtual_machine_extension_instance_view
  protectedSettings => "protectedSettings (optional)",
  publisher => "publisher (optional)",
  settings => "settings (optional)",
  type => "type (optional)",
  typeHandlerVersion => "typeHandlerVersion (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|autoUpgradeMinorVersion | Boolean | false | Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true. |
|forceUpdateTag | String | false | How the extension handler should be forced to update even if the extension configuration has not changed. |
|instanceView | [VirtualMachineExtensionInstanceView](#virtualmachineextensioninstanceview) | false | The virtual machine extension instance view. |
|protectedSettings | Hash | false | The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all. |
|publisher | String | false | The name of the extension handler publisher. |
|settings | Hash | false | Json formatted public settings for the extension. |
|type | String | false | Specifies the type of the extension; an example is 'CustomScriptExtension'. |
|typeHandlerVersion | String | false | Specifies the version of the script handler. |
        
## VirtualMachineExtensionInstanceView

The instance view of a virtual machine extension.

```puppet
$azure_virtual_machine_extension_instance_view = {
  name => "name (optional)",
  statuses => $azure_instance_view_status
  substatuses => $azure_instance_view_status
  type => "type (optional)",
  typeHandlerVersion => "typeHandlerVersion (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | The virtual machine extension name. |
|statuses | [InstanceViewStatus](#instanceviewstatus) | false | The resource status information. |
|substatuses | [InstanceViewStatus](#instanceviewstatus) | false | The resource status information. |
|type | String | false | Specifies the type of the extension; an example is 'CustomScriptExtension'. |
|typeHandlerVersion | String | false | Specifies the version of the script handler. |
        
## InstanceViewStatus

Instance view status.

```puppet
$azure_instance_view_status = {
  code => "code (optional)",
  displayStatus => "displayStatus (optional)",
  level => "level (optional)",
  message => "message (optional)",
  time => "time (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|code | String | false | The status code. |
|displayStatus | String | false | The short localizable label for the status. |
|level | String | false | The level code. |
|message | String | false | The detailed status message, including for alerts and error messages. |
|time | String | false | The time of the status. |
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the VirtualMachineExtension

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachines/%{vm_name}/extensions/%{vm_extension_name}`|Put|The operation to create or update the extension.|VirtualMachineExtensions_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachines/%{vm_name}/extensions/%{vm_extension_name}`|Get|The operation to get the extension.|VirtualMachineExtensions_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachines/%{vm_name}/extensions`|Get|The operation to get all extensions of a Virtual Machine.|VirtualMachineExtensions_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachines/%{vm_name}/extensions/%{vm_extension_name}`|Put|The operation to create or update the extension.|VirtualMachineExtensions_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachines/%{vm_name}/extensions/%{vm_extension_name}`|Delete|The operation to delete the extension.|VirtualMachineExtensions_Delete|
