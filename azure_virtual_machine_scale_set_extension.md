Document: "compute"


Path: "/tmp/azure-rest-api-specs/specification/compute/resource-manager/Microsoft.Compute/stable/2018-10-01/compute.json")

## VirtualMachineScaleSetExtension

Describes a Virtual Machine Scale Set Extension.

```puppet
azure_virtual_machine_scale_set_extension {
  api_version => "api_version",
  extension_parameters => "extensionParameters",
  name => "name (optional)",
  properties => $azure_virtual_machine_scale_set_extension_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  vm_scale_set_name => "vm_scale_set_name",
  vmss_extension_name => "vmss_extension_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|extension_parameters | Hash | true | Parameters supplied to the Create VM scale set Extension operation. |
|name | String | false | The name of the extension. |
|properties | [VirtualMachineScaleSetExtensionProperties](#virtualmachinescalesetextensionproperties) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|vm_scale_set_name | String | true | The name of the VM scale set where the extension should be create or updated. |
|vmss_extension_name | String | true | The name of the VM scale set extension. |
        
## VirtualMachineScaleSetExtensionProperties

Describes the properties of a Virtual Machine Scale Set Extension.

```puppet
$azure_virtual_machine_scale_set_extension_properties = {
  autoUpgradeMinorVersion => "autoUpgradeMinorVersion (optional)",
  forceUpdateTag => "forceUpdateTag (optional)",
  protectedSettings => "protectedSettings (optional)",
  provisionAfterExtensions => "provisionAfterExtensions (optional)",
  publisher => "publisher (optional)",
  settings => "settings (optional)",
  type => "type (optional)",
  typeHandlerVersion => "typeHandlerVersion (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|autoUpgradeMinorVersion | Boolean | false | Indicates whether the extension should use a newer minor version if one is available at deployment time. Once deployed, however, the extension will not upgrade minor versions unless redeployed, even with this property set to true. |
|forceUpdateTag | String | false | If a value is provided and is different from the previous value, the extension handler will be forced to update even if the extension configuration has not changed. |
|protectedSettings | Hash | false | The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all. |
|provisionAfterExtensions | Array | false | Collection of extension names after which this extension needs to be provisioned. |
|publisher | String | false | The name of the extension handler publisher. |
|settings | Hash | false | Json formatted public settings for the extension. |
|type | String | false | Specifies the type of the extension; an example is 'CustomScriptExtension'. |
|typeHandlerVersion | String | false | Specifies the version of the script handler. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the VirtualMachineScaleSetExtension

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachineScaleSets/%{vm_scale_set_name}/extensions/%{vmss_extension_name}`|Put|The operation to create or update an extension.|VirtualMachineScaleSetExtensions_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachineScaleSets/%{vm_scale_set_name}/extensions/%{vmss_extension_name}`|Get|The operation to get the extension.|VirtualMachineScaleSetExtensions_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachineScaleSets/%{vm_scale_set_name}/extensions`|Get|Gets a list of all extensions in a VM scale set.|VirtualMachineScaleSetExtensions_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachineScaleSets/%{vm_scale_set_name}/extensions/%{vmss_extension_name}`|Put|The operation to create or update an extension.|VirtualMachineScaleSetExtensions_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachineScaleSets/%{vm_scale_set_name}/extensions/%{vmss_extension_name}`|Delete|The operation to delete the extension.|VirtualMachineScaleSetExtensions_Delete|
