Document: "compute"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/compute/resource-manager/Microsoft.Compute/stable/2019-03-01/compute.json")

## VirtualMachineScaleSetVM

Describes a virtual machine scale set virtual machine.

```puppet
azure_virtual_machine_scale_set_vm {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  plan => $azure_plan
  properties => $azure_virtual_machine_scale_set_vm_properties
  resource_group_name => "resource_group_name",
  resources => $azure_virtual_machine_extension
  sku => $azure_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  vm_scale_set_name => "vm_scale_set_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|location | String | false | Resource location |
|parameters | Hash | true | Parameters supplied to the Update Virtual Machine Scale Sets VM operation. |
|plan | [Plan](#plan) | false | Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started ->**. Enter any required information and then click **Save**. |
|properties | [VirtualMachineScaleSetVMProperties](#virtualmachinescalesetvmproperties) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|resources | [VirtualMachineExtension](#virtualmachineextension) | false | The virtual machine child extension resources. |
|sku | [Sku](#sku) | false | The virtual machine SKU. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
|vm_scale_set_name | String | true | The name of the VM scale set where the extension should be create or updated. |
        
## Plan

Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started ->**. Enter any required information and then click **Save**.

```puppet
$azure_plan = {
  name => "name (optional)",
  product => "product (optional)",
  promotionCode => "promotionCode (optional)",
  publisher => "publisher (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | The plan ID. |
|product | String | false | Specifies the product of the image from the marketplace. This is the same value as Offer under the imageReference element. |
|promotionCode | String | false | The promotion code. |
|publisher | String | false | The publisher ID. |
        
## VirtualMachineScaleSetVMProperties

Describes the properties of a virtual machine scale set virtual machine.

```puppet
$azure_virtual_machine_scale_set_vm_properties = {
  additionalCapabilities => $azure_additional_capabilities
  availabilitySet => $azure_sub_resource
  diagnosticsProfile => $azure_diagnostics_profile
  hardwareProfile => $azure_hardware_profile
  instanceView => $azure_virtual_machine_scale_set_vm_instance_view
  licenseType => "licenseType (optional)",
  networkProfile => $azure_network_profile
  networkProfileConfiguration => $azure_virtual_machine_scale_set_vm_network_profile_configuration
  osProfile => $azure_os_profile
  protectionPolicy => $azure_virtual_machine_scale_set_vm_protection_policy
  storageProfile => $azure_storage_profile
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|additionalCapabilities | [AdditionalCapabilities](#additionalcapabilities) | false | Specifies additional capabilities enabled or disabled on the virtual machine in the scale set. For instance: whether the virtual machine has the capability to support attaching managed data disks with UltraSSD_LRS storage account type. |
|availabilitySet | [SubResource](#subresource) | false | Specifies information about the availability set that the virtual machine should be assigned to. Virtual machines specified in the same availability set are allocated to different nodes to maximize availability. For more information about availability sets, see [Manage the availability of virtual machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-manage-availability?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json). <br><br> For more information on Azure planned maintenance, see [Planned maintenance for virtual machines in Azure](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-planned-maintenance?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json) <br><br> Currently, a VM can only be added to availability set at creation time. An existing VM cannot be added to an availability set. |
|diagnosticsProfile | [DiagnosticsProfile](#diagnosticsprofile) | false | Specifies the boot diagnostic settings state. <br><br>Minimum api-version: 2015-06-15. |
|hardwareProfile | [HardwareProfile](#hardwareprofile) | false | Specifies the hardware settings for the virtual machine. |
|instanceView | [VirtualMachineScaleSetVMInstanceView](#virtualmachinescalesetvminstanceview) | false | The virtual machine instance view. |
|licenseType | String | false | Specifies that the image or disk that is being used was licensed on-premises. This element is only used for images that contain the Windows Server operating system. <br><br> Possible values are: <br><br> Windows_Client <br><br> Windows_Server <br><br> If this element is included in a request for an update, the value must match the initial value. This value cannot be updated. <br><br> For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-hybrid-use-benefit-licensing?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json) <br><br> Minimum api-version: 2015-06-15 |
|networkProfile | [NetworkProfile](#networkprofile) | false | Specifies the network interfaces of the virtual machine. |
|networkProfileConfiguration | [VirtualMachineScaleSetVMNetworkProfileConfiguration](#virtualmachinescalesetvmnetworkprofileconfiguration) | false | Specifies the network profile configuration of the virtual machine. |
|osProfile | [OSProfile](#osprofile) | false | Specifies the operating system settings for the virtual machine. |
|protectionPolicy | [VirtualMachineScaleSetVMProtectionPolicy](#virtualmachinescalesetvmprotectionpolicy) | false | Specifies the protection policy of the virtual machine. |
|storageProfile | [StorageProfile](#storageprofile) | false | Specifies the storage settings for the virtual machine disks. |
        
## AdditionalCapabilities

Enables or disables a capability on the virtual machine or virtual machine scale set.

```puppet
$azure_additional_capabilities = {
  ultraSSDEnabled => "ultraSSDEnabled (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|ultraSSDEnabled | Boolean | false | The flag that enables or disables a capability to have one or more managed data disks with UltraSSD_LRS storage account type on the VM or VMSS. Managed disks with storage account type UltraSSD_LRS can be added to a virtual machine or virtual machine scale set only if this property is enabled. |
        
## SubResource



```puppet
$azure_sub_resource = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource Id |
        
## DiagnosticsProfile

Specifies the boot diagnostic settings state. <br><br>Minimum api-version: 2015-06-15.

```puppet
$azure_diagnostics_profile = {
  bootDiagnostics => $azure_boot_diagnostics
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|bootDiagnostics | [BootDiagnostics](#bootdiagnostics) | false | Boot Diagnostics is a debugging feature which allows you to view Console Output and Screenshot to diagnose VM status. <br><br> You can easily view the output of your console log. <br><br> Azure also enables you to see a screenshot of the VM from the hypervisor. |
        
## BootDiagnostics

Boot Diagnostics is a debugging feature which allows you to view Console Output and Screenshot to diagnose VM status. <br><br> You can easily view the output of your console log. <br><br> Azure also enables you to see a screenshot of the VM from the hypervisor.

```puppet
$azure_boot_diagnostics = {
  enabled => "enabled (optional)",
  storageUri => "storageUri (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|enabled | Boolean | false | Whether boot diagnostics should be enabled on the Virtual Machine. |
|storageUri | String | false | Uri of the storage account to use for placing the console output and screenshot. |
        
## HardwareProfile

Specifies the hardware settings for the virtual machine.

```puppet
$azure_hardware_profile = {
  vmSize => "vmSize (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|vmSize | String | false | Specifies the size of the virtual machine. For more information about virtual machine sizes, see [Sizes for virtual machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-sizes?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json). <br><br> The available VM sizes depend on region and availability set. For a list of available sizes use these APIs:  <br><br> [List all available virtual machine sizes in an availability set](https://docs.microsoft.com/rest/api/compute/availabilitysets/listavailablesizes) <br><br> [List all available virtual machine sizes in a region](https://docs.microsoft.com/rest/api/compute/virtualmachinesizes/list) <br><br> [List all available virtual machine sizes for resizing](https://docs.microsoft.com/rest/api/compute/virtualmachines/listavailablesizes) |
        
## VirtualMachineScaleSetVMInstanceView

The instance view of a virtual machine scale set VM.

```puppet
$azure_virtual_machine_scale_set_vm_instance_view = {
  bootDiagnostics => $azure_boot_diagnostics_instance_view
  disks => $azure_disk_instance_view
  extensions => $azure_virtual_machine_extension_instance_view
  maintenanceRedeployStatus => $azure_maintenance_redeploy_status
  placementGroupId => "placementGroupId (optional)",
  platformFaultDomain => "1234 (optional)",
  platformUpdateDomain => "1234 (optional)",
  rdpThumbPrint => "rdpThumbPrint (optional)",
  statuses => $azure_instance_view_status
  vmAgent => $azure_virtual_machine_agent_instance_view
  vmHealth => $azure_virtual_machine_health_status
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|bootDiagnostics | [BootDiagnosticsInstanceView](#bootdiagnosticsinstanceview) | false | Boot Diagnostics is a debugging feature which allows you to view Console Output and Screenshot to diagnose VM status. <br><br> You can easily view the output of your console log. <br><br> Azure also enables you to see a screenshot of the VM from the hypervisor. |
|disks | [DiskInstanceView](#diskinstanceview) | false | The disks information. |
|extensions | [VirtualMachineExtensionInstanceView](#virtualmachineextensioninstanceview) | false | The extensions information. |
|maintenanceRedeployStatus | [MaintenanceRedeployStatus](#maintenanceredeploystatus) | false | The Maintenance Operation status on the virtual machine. |
|placementGroupId | String | false | The placement group in which the VM is running. If the VM is deallocated it will not have a placementGroupId. |
|platformFaultDomain | Integer | false | The Fault Domain count. |
|platformUpdateDomain | Integer | false | The Update Domain count. |
|rdpThumbPrint | String | false | The Remote desktop certificate thumbprint. |
|statuses | [InstanceViewStatus](#instanceviewstatus) | false | The resource status information. |
|vmAgent | [VirtualMachineAgentInstanceView](#virtualmachineagentinstanceview) | false | The VM Agent running on the virtual machine. |
|vmHealth | [VirtualMachineHealthStatus](#virtualmachinehealthstatus) | false | The health status for the VM. |
        
## BootDiagnosticsInstanceView

The instance view of a virtual machine boot diagnostics.

```puppet
$azure_boot_diagnostics_instance_view = {
  status => $azure_instance_view_status
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|status | [InstanceViewStatus](#instanceviewstatus) | false | The boot diagnostics status information for the VM. <br><br> NOTE: It will be set only if there are errors encountered in enabling boot diagnostics. |
        
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
        
## DiskInstanceView

The instance view of the disk.

```puppet
$azure_disk_instance_view = {
  encryptionSettings => $azure_disk_encryption_settings
  name => "name (optional)",
  statuses => $azure_instance_view_status
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|encryptionSettings | [DiskEncryptionSettings](#diskencryptionsettings) | false | Specifies the encryption settings for the OS Disk. <br><br> Minimum api-version: 2015-06-15 |
|name | String | false | The disk name. |
|statuses | [InstanceViewStatus](#instanceviewstatus) | false | The resource status information. |
        
## DiskEncryptionSettings

Describes a Encryption Settings for a Disk

```puppet
$azure_disk_encryption_settings = {
  diskEncryptionKey => $azure_key_vault_secret_reference
  enabled => "enabled (optional)",
  keyEncryptionKey => $azure_key_vault_key_reference
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|diskEncryptionKey | [KeyVaultSecretReference](#keyvaultsecretreference) | false | Specifies the location of the disk encryption key, which is a Key Vault Secret. |
|enabled | Boolean | false | Specifies whether disk encryption should be enabled on the virtual machine. |
|keyEncryptionKey | [KeyVaultKeyReference](#keyvaultkeyreference) | false | Specifies the location of the key encryption key in Key Vault. |
        
## KeyVaultSecretReference

Describes a reference to Key Vault Secret

```puppet
$azure_key_vault_secret_reference = {
  secretUrl => "secretUrl",
  sourceVault => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|secretUrl | String | true | The URL referencing a secret in a Key Vault. |
|sourceVault | [SubResource](#subresource) | true | The relative URL of the Key Vault containing the secret. |
        
        
## KeyVaultKeyReference

Describes a reference to Key Vault Key

```puppet
$azure_key_vault_key_reference = {
  keyUrl => "keyUrl",
  sourceVault => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|keyUrl | String | true | The URL referencing a key encryption key in Key Vault. |
|sourceVault | [SubResource](#subresource) | true | The relative URL of the Key Vault containing the key. |
        
        
        
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
        
        
        
## MaintenanceRedeployStatus

Maintenance Operation Status.

```puppet
$azure_maintenance_redeploy_status = {
  isCustomerInitiatedMaintenanceAllowed => "isCustomerInitiatedMaintenanceAllowed (optional)",
  lastOperationMessage => "lastOperationMessage (optional)",
  lastOperationResultCode => "lastOperationResultCode (optional)",
  maintenanceWindowEndTime => "maintenanceWindowEndTime (optional)",
  maintenanceWindowStartTime => "maintenanceWindowStartTime (optional)",
  preMaintenanceWindowEndTime => "preMaintenanceWindowEndTime (optional)",
  preMaintenanceWindowStartTime => "preMaintenanceWindowStartTime (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|isCustomerInitiatedMaintenanceAllowed | Boolean | false | True, if customer is allowed to perform Maintenance. |
|lastOperationMessage | String | false | Message returned for the last Maintenance Operation. |
|lastOperationResultCode | String | false | The Last Maintenance Operation Result Code. |
|maintenanceWindowEndTime | String | false | End Time for the Maintenance Window. |
|maintenanceWindowStartTime | String | false | Start Time for the Maintenance Window. |
|preMaintenanceWindowEndTime | String | false | End Time for the Pre Maintenance Window. |
|preMaintenanceWindowStartTime | String | false | Start Time for the Pre Maintenance Window. |
        
        
## VirtualMachineAgentInstanceView

The instance view of the VM Agent running on the virtual machine.

```puppet
$azure_virtual_machine_agent_instance_view = {
  extensionHandlers => $azure_virtual_machine_extension_handler_instance_view
  statuses => $azure_instance_view_status
  vmAgentVersion => "vmAgentVersion (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|extensionHandlers | [VirtualMachineExtensionHandlerInstanceView](#virtualmachineextensionhandlerinstanceview) | false | The virtual machine extension handler instance view. |
|statuses | [InstanceViewStatus](#instanceviewstatus) | false | The resource status information. |
|vmAgentVersion | String | false | The VM Agent full version. |
        
## VirtualMachineExtensionHandlerInstanceView

The instance view of a virtual machine extension handler.

```puppet
$azure_virtual_machine_extension_handler_instance_view = {
  status => $azure_instance_view_status
  type => "type (optional)",
  typeHandlerVersion => "typeHandlerVersion (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|status | [InstanceViewStatus](#instanceviewstatus) | false | The extension handler status. |
|type | String | false | Specifies the type of the extension; an example is 'CustomScriptExtension'. |
|typeHandlerVersion | String | false | Specifies the version of the script handler. |
        
        
        
## VirtualMachineHealthStatus

The health status of the VM.

```puppet
$azure_virtual_machine_health_status = {
  status => $azure_instance_view_status
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|status | [InstanceViewStatus](#instanceviewstatus) | false | The health status information for the VM. |
        
        
## NetworkProfile

Specifies the network interfaces of the virtual machine.

```puppet
$azure_network_profile = {
  networkInterfaces => $azure_network_interface_reference
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|networkInterfaces | [NetworkInterfaceReference](#networkinterfacereference) | false | Specifies the list of resource Ids for the network interfaces associated with the virtual machine. |
        
## NetworkInterfaceReference

Describes a network interface reference.

```puppet
$azure_network_interface_reference = {
  id => "id (optional)",
  properties => $azure_network_interface_reference_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource Id |
|properties | [NetworkInterfaceReferenceProperties](#networkinterfacereferenceproperties) | false |  |
        
## NetworkInterfaceReferenceProperties

Describes a network interface reference properties.

```puppet
$azure_network_interface_reference_properties = {
  primary => "primary (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|primary | Boolean | false | Specifies the primary network interface in case the virtual machine has more than 1 network interface. |
        
## VirtualMachineScaleSetVMNetworkProfileConfiguration

Describes a virtual machine scale set VM network profile.

```puppet
$azure_virtual_machine_scale_set_vm_network_profile_configuration = {
  networkInterfaceConfigurations => $azure_virtual_machine_scale_set_network_configuration
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|networkInterfaceConfigurations | [VirtualMachineScaleSetNetworkConfiguration](#virtualmachinescalesetnetworkconfiguration) | false | The list of network configurations. |
        
## VirtualMachineScaleSetNetworkConfiguration

Describes a virtual machine scale set network profile's network configurations.

```puppet
$azure_virtual_machine_scale_set_network_configuration = {
  id => "id (optional)",
  name => "name",
  properties => $azure_virtual_machine_scale_set_network_configuration_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource Id |
|name | String | true | The network configuration name. |
|properties | [VirtualMachineScaleSetNetworkConfigurationProperties](#virtualmachinescalesetnetworkconfigurationproperties) | false |  |
        
## VirtualMachineScaleSetNetworkConfigurationProperties

Describes a virtual machine scale set network profile's IP configuration.

```puppet
$azure_virtual_machine_scale_set_network_configuration_properties = {
  dnsSettings => $azure_virtual_machine_scale_set_network_configuration_dns_settings
  enableAcceleratedNetworking => "enableAcceleratedNetworking (optional)",
  enableIPForwarding => "enableIPForwarding (optional)",
  ipConfigurations => $azure_virtual_machine_scale_set_ip_configuration
  networkSecurityGroup => $azure_sub_resource
  primary => "primary (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dnsSettings | [VirtualMachineScaleSetNetworkConfigurationDnsSettings](#virtualmachinescalesetnetworkconfigurationdnssettings) | false | The dns settings to be applied on the network interfaces. |
|enableAcceleratedNetworking | Boolean | false | Specifies whether the network interface is accelerated networking-enabled. |
|enableIPForwarding | Boolean | false | Whether IP forwarding enabled on this NIC. |
|ipConfigurations | [VirtualMachineScaleSetIPConfiguration](#virtualmachinescalesetipconfiguration) | true | Specifies the IP configurations of the network interface. |
|networkSecurityGroup | [SubResource](#subresource) | false | The network security group. |
|primary | Boolean | false | Specifies the primary network interface in case the virtual machine has more than 1 network interface. |
        
## VirtualMachineScaleSetNetworkConfigurationDnsSettings

Describes a virtual machines scale sets network configuration's DNS settings.

```puppet
$azure_virtual_machine_scale_set_network_configuration_dns_settings = {
  dnsServers => "dnsServers (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dnsServers | Array | false | List of DNS servers IP addresses |
        
## VirtualMachineScaleSetIPConfiguration

Describes a virtual machine scale set network profile's IP configuration.

```puppet
$azure_virtual_machine_scale_set_ip_configuration = {
  id => "id (optional)",
  name => "name",
  properties => $azure_virtual_machine_scale_set_ip_configuration_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource Id |
|name | String | true | The IP configuration name. |
|properties | [VirtualMachineScaleSetIPConfigurationProperties](#virtualmachinescalesetipconfigurationproperties) | false |  |
        
## VirtualMachineScaleSetIPConfigurationProperties

Describes a virtual machine scale set network profile's IP configuration properties.

```puppet
$azure_virtual_machine_scale_set_ip_configuration_properties = {
  applicationGatewayBackendAddressPools => $azure_sub_resource
  applicationSecurityGroups => $azure_sub_resource
  loadBalancerBackendAddressPools => $azure_sub_resource
  loadBalancerInboundNatPools => $azure_sub_resource
  primary => "primary (optional)",
  privateIPAddressVersion => "privateIPAddressVersion (optional)",
  publicIPAddressConfiguration => $azure_virtual_machine_scale_set_public_ip_address_configuration
  subnet => $azure_api_entity_reference
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|applicationGatewayBackendAddressPools | [SubResource](#subresource) | false | Specifies an array of references to backend address pools of application gateways. A scale set can reference backend address pools of multiple application gateways. Multiple scale sets cannot use the same application gateway. |
|applicationSecurityGroups | [SubResource](#subresource) | false | Specifies an array of references to application security group. |
|loadBalancerBackendAddressPools | [SubResource](#subresource) | false | Specifies an array of references to backend address pools of load balancers. A scale set can reference backend address pools of one public and one internal load balancer. Multiple scale sets cannot use the same load balancer. |
|loadBalancerInboundNatPools | [SubResource](#subresource) | false | Specifies an array of references to inbound Nat pools of the load balancers. A scale set can reference inbound nat pools of one public and one internal load balancer. Multiple scale sets cannot use the same load balancer |
|primary | Boolean | false | Specifies the primary network interface in case the virtual machine has more than 1 network interface. |
|privateIPAddressVersion | String | false | Available from Api-Version 2017-03-30 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.  Possible values are: 'IPv4' and 'IPv6'. |
|publicIPAddressConfiguration | [VirtualMachineScaleSetPublicIPAddressConfiguration](#virtualmachinescalesetpublicipaddressconfiguration) | false | The publicIPAddressConfiguration. |
|subnet | [ApiEntityReference](#apientityreference) | false | Specifies the identifier of the subnet. |
        
        
        
        
        
## VirtualMachineScaleSetPublicIPAddressConfiguration

Describes a virtual machines scale set IP Configuration's PublicIPAddress configuration

```puppet
$azure_virtual_machine_scale_set_public_ip_address_configuration = {
  name => "name",
  properties => $azure_virtual_machine_scale_set_public_ip_address_configuration_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | The publicIP address configuration name. |
|properties | [VirtualMachineScaleSetPublicIPAddressConfigurationProperties](#virtualmachinescalesetpublicipaddressconfigurationproperties) | false |  |
        
## VirtualMachineScaleSetPublicIPAddressConfigurationProperties

Describes a virtual machines scale set IP Configuration's PublicIPAddress configuration

```puppet
$azure_virtual_machine_scale_set_public_ip_address_configuration_properties = {
  dnsSettings => $azure_virtual_machine_scale_set_public_ip_address_configuration_dns_settings
  idleTimeoutInMinutes => "1234 (optional)",
  ipTags => $azure_virtual_machine_scale_set_ip_tag
  publicIPPrefix => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dnsSettings | [VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings](#virtualmachinescalesetpublicipaddressconfigurationdnssettings) | false | The dns settings to be applied on the publicIP addresses . |
|idleTimeoutInMinutes | Integer | false | The idle timeout of the public IP address. |
|ipTags | [VirtualMachineScaleSetIpTag](#virtualmachinescalesetiptag) | false | The list of IP tags associated with the public IP address. |
|publicIPPrefix | [SubResource](#subresource) | false | The PublicIPPrefix from which to allocate publicIP addresses. |
        
## VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings

Describes a virtual machines scale sets network configuration's DNS settings.

```puppet
$azure_virtual_machine_scale_set_public_ip_address_configuration_dns_settings = {
  domainNameLabel => "domainNameLabel",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|domainNameLabel | String | true | The Domain name label.The concatenation of the domain name label and vm index will be the domain name labels of the PublicIPAddress resources that will be created |
        
## VirtualMachineScaleSetIpTag

Contains the IP tag associated with the public IP address.

```puppet
$azure_virtual_machine_scale_set_ip_tag = {
  ipTagType => "ipTagType (optional)",
  tag => "tag (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|ipTagType | String | false | IP tag type. Example: FirstPartyUsage. |
|tag | String | false | IP tag associated with the public IP. Example: SQL, Storage etc. |
        
        
## ApiEntityReference

The API entity reference.

```puppet
$azure_api_entity_reference = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | The ARM resource id in the form of /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/... |
        
        
## OSProfile

Specifies the operating system settings for the virtual machine.

```puppet
$azure_os_profile = {
  adminPassword => "adminPassword (optional)",
  adminUsername => "adminUsername (optional)",
  allowExtensionOperations => "allowExtensionOperations (optional)",
  computerName => "computerName (optional)",
  customData => "customData (optional)",
  linuxConfiguration => $azure_linux_configuration
  secrets => $azure_vault_secret_group
  windowsConfiguration => $azure_windows_configuration
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|adminPassword | String | false | Specifies the password of the administrator account. <br><br> **Minimum-length (Windows):** 8 characters <br><br> **Minimum-length (Linux):** 6 characters <br><br> **Max-length (Windows):** 123 characters <br><br> **Max-length (Linux):** 72 characters <br><br> **Complexity requirements:** 3 out of 4 conditions below need to be fulfilled <br> Has lower characters <br>Has upper characters <br> Has a digit <br> Has a special character (Regex match [\W_]) <br><br> **Disallowed values:** 'abc@123', 'P@$$w0rd', 'P@ssw0rd', 'P@ssword123', 'Pa$$word', 'pass@word1', 'Password!', 'Password1', 'Password22', 'iloveyou!' <br><br> For resetting the password, see [How to reset the Remote Desktop service or its login password in a Windows VM](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-reset-rdp?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json) <br><br> For resetting root password, see [Manage users, SSH, and check or repair disks on Azure Linux VMs using the VMAccess Extension](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-using-vmaccess-extension?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json#reset-root-password) |
|adminUsername | String | false | Specifies the name of the administrator account. <br><br> **Windows-only restriction:** Cannot end in '.' <br><br> **Disallowed values:** 'administrator', 'admin', 'user', 'user1', 'test', 'user2', 'test1', 'user3', 'admin1', '1', '123', 'a', 'actuser', 'adm', 'admin2', 'aspnet', 'backup', 'console', 'david', 'guest', 'john', 'owner', 'root', 'server', 'sql', 'support', 'support_388945a0', 'sys', 'test2', 'test3', 'user4', 'user5'. <br><br> **Minimum-length (Linux):** 1  character <br><br> **Max-length (Linux):** 64 characters <br><br> **Max-length (Windows):** 20 characters  <br><br><li> For root access to the Linux VM, see [Using root privileges on Linux virtual machines in Azure](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-use-root-privileges?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json)<br><li> For a list of built-in system users on Linux that should not be used in this field, see [Selecting User Names for Linux on Azure](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-usernames?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json) |
|allowExtensionOperations | Boolean | false | Specifies whether extension operations should be allowed on the virtual machine. <br><br>This may only be set to False when no extensions are present on the virtual machine. |
|computerName | String | false | Specifies the host OS name of the virtual machine. <br><br> This name cannot be updated after the VM is created. <br><br> **Max-length (Windows):** 15 characters <br><br> **Max-length (Linux):** 64 characters. <br><br> For naming conventions and restrictions see [Azure infrastructure services implementation guidelines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-infrastructure-subscription-accounts-guidelines?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json#1-naming-conventions). |
|customData | String | false | Specifies a base-64 encoded string of custom data. The base-64 encoded string is decoded to a binary array that is saved as a file on the Virtual Machine. The maximum length of the binary array is 65535 bytes. <br><br> For using cloud-init for your VM, see [Using cloud-init to customize a Linux VM during creation](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-using-cloud-init?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json) |
|linuxConfiguration | [LinuxConfiguration](#linuxconfiguration) | false | Specifies the Linux operating system settings on the virtual machine. <br><br>For a list of supported Linux distributions, see [Linux on Azure-Endorsed Distributions](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-endorsed-distros?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json) <br><br> For running non-endorsed distributions, see [Information for Non-Endorsed Distributions](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-create-upload-generic?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json). |
|secrets | [VaultSecretGroup](#vaultsecretgroup) | false | Specifies set of certificates that should be installed onto the virtual machine. |
|windowsConfiguration | [WindowsConfiguration](#windowsconfiguration) | false | Specifies Windows operating system settings on the virtual machine. |
        
## LinuxConfiguration

Specifies the Linux operating system settings on the virtual machine. <br><br>For a list of supported Linux distributions, see [Linux on Azure-Endorsed Distributions](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-endorsed-distros?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json) <br><br> For running non-endorsed distributions, see [Information for Non-Endorsed Distributions](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-create-upload-generic?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json).

```puppet
$azure_linux_configuration = {
  disablePasswordAuthentication => "disablePasswordAuthentication (optional)",
  provisionVMAgent => "provisionVMAgent (optional)",
  ssh => $azure_ssh_configuration
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|disablePasswordAuthentication | Boolean | false | Specifies whether password authentication should be disabled. |
|provisionVMAgent | Boolean | false | Indicates whether virtual machine agent should be provisioned on the virtual machine. <br><br> When this property is not specified in the request body, default behavior is to set it to true.  This will ensure that VM Agent is installed on the VM so that extensions can be added to the VM later. |
|ssh | [SshConfiguration](#sshconfiguration) | false | Specifies the ssh key configuration for a Linux OS. |
        
## SshConfiguration

SSH configuration for Linux based VMs running on Azure

```puppet
$azure_ssh_configuration = {
  publicKeys => $azure_ssh_public_key
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|publicKeys | [SshPublicKey](#sshpublickey) | false | The list of SSH public keys used to authenticate with linux based VMs. |
        
## SshPublicKey

Contains information about SSH certificate public key and the path on the Linux VM where the public key is placed.

```puppet
$azure_ssh_public_key = {
  keyData => "keyData (optional)",
  path => "path (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|keyData | String | false | SSH public key certificate used to authenticate with the VM through ssh. The key needs to be at least 2048-bit and in ssh-rsa format. <br><br> For creating ssh keys, see [Create SSH keys on Linux and Mac for Linux VMs in Azure](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-mac-create-ssh-keys?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json). |
|path | String | false | Specifies the full path on the created VM where ssh public key is stored. If the file already exists, the specified key is appended to the file. Example: /home/user/.ssh/authorized_keys |
        
## VaultSecretGroup

Describes a set of certificates which are all in the same Key Vault.

```puppet
$azure_vault_secret_group = {
  sourceVault => $azure_sub_resource
  vaultCertificates => $azure_vault_certificate
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|sourceVault | [SubResource](#subresource) | false | The relative URL of the Key Vault containing all of the certificates in VaultCertificates. |
|vaultCertificates | [VaultCertificate](#vaultcertificate) | false | The list of key vault references in SourceVault which contain certificates. |
        
        
## VaultCertificate

Describes a single certificate reference in a Key Vault, and where the certificate should reside on the VM.

```puppet
$azure_vault_certificate = {
  certificateStore => "certificateStore (optional)",
  certificateUrl => "certificateUrl (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|certificateStore | String | false | For Windows VMs, specifies the certificate store on the Virtual Machine to which the certificate should be added. The specified certificate store is implicitly in the LocalMachine account. <br><br>For Linux VMs, the certificate file is placed under the /var/lib/waagent directory, with the file name &lt;UppercaseThumbprint&gt;.crt for the X509 certificate file and &lt;UppercaseThumbprint&gt;.prv for private key. Both of these files are .pem formatted. |
|certificateUrl | String | false | This is the URL of a certificate that has been uploaded to Key Vault as a secret. For adding a secret to the Key Vault, see [Add a key or secret to the key vault](https://docs.microsoft.com/azure/key-vault/key-vault-get-started/#add). In this case, your certificate needs to be It is the Base64 encoding of the following JSON Object which is encoded in UTF-8: <br><br> {<br>  'data':'<Base64-encoded-certificate>',<br>  'dataType':'pfx',<br>  'password':'<pfx-file-password>'<br>} |
        
## WindowsConfiguration

Specifies Windows operating system settings on the virtual machine.

```puppet
$azure_windows_configuration = {
  additionalUnattendContent => $azure_additional_unattend_content
  enableAutomaticUpdates => "enableAutomaticUpdates (optional)",
  provisionVMAgent => "provisionVMAgent (optional)",
  timeZone => "timeZone (optional)",
  winRM => $azure_win_rm_configuration
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|additionalUnattendContent | [AdditionalUnattendContent](#additionalunattendcontent) | false | Specifies additional base-64 encoded XML formatted information that can be included in the Unattend.xml file, which is used by Windows Setup. |
|enableAutomaticUpdates | Boolean | false | Indicates whether Automatic Updates is enabled for the Windows virtual machine. Default value is true. <br><br> For virtual machine scale sets, this property can be updated and updates will take effect on OS reprovisioning. |
|provisionVMAgent | Boolean | false | Indicates whether virtual machine agent should be provisioned on the virtual machine. <br><br> When this property is not specified in the request body, default behavior is to set it to true.  This will ensure that VM Agent is installed on the VM so that extensions can be added to the VM later. |
|timeZone | String | false | Specifies the time zone of the virtual machine. e.g. 'Pacific Standard Time' |
|winRM | [WinRMConfiguration](#winrmconfiguration) | false | Specifies the Windows Remote Management listeners. This enables remote Windows PowerShell. |
        
## AdditionalUnattendContent

Specifies additional XML formatted information that can be included in the Unattend.xml file, which is used by Windows Setup. Contents are defined by setting name, component name, and the pass in which the content is applied.

```puppet
$azure_additional_unattend_content = {
  componentName => "componentName (optional)",
  content => "content (optional)",
  passName => "passName (optional)",
  settingName => "settingName (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|componentName | String | false | The component name. Currently, the only allowable value is Microsoft-Windows-Shell-Setup. |
|content | String | false | Specifies the XML formatted content that is added to the unattend.xml file for the specified path and component. The XML must be less than 4KB and must include the root element for the setting or feature that is being inserted. |
|passName | String | false | The pass name. Currently, the only allowable value is OobeSystem. |
|settingName | String | false | Specifies the name of the setting to which the content applies. Possible values are: FirstLogonCommands and AutoLogon. |
        
## WinRMConfiguration

Describes Windows Remote Management configuration of the VM

```puppet
$azure_win_rm_configuration = {
  listeners => $azure_win_rm_listener
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|listeners | [WinRMListener](#winrmlistener) | false | The list of Windows Remote Management listeners |
        
## WinRMListener

Describes Protocol and thumbprint of Windows Remote Management listener

```puppet
$azure_win_rm_listener = {
  certificateUrl => "certificateUrl (optional)",
  protocol => "protocol (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|certificateUrl | String | false | This is the URL of a certificate that has been uploaded to Key Vault as a secret. For adding a secret to the Key Vault, see [Add a key or secret to the key vault](https://docs.microsoft.com/azure/key-vault/key-vault-get-started/#add). In this case, your certificate needs to be It is the Base64 encoding of the following JSON Object which is encoded in UTF-8: <br><br> {<br>  'data':'<Base64-encoded-certificate>',<br>  'dataType':'pfx',<br>  'password':'<pfx-file-password>'<br>} |
|protocol | String | false | Specifies the protocol of listener. <br><br> Possible values are: <br>**http** <br><br> **https** |
        
## VirtualMachineScaleSetVMProtectionPolicy

The protection policy of a virtual machine scale set VM.

```puppet
$azure_virtual_machine_scale_set_vm_protection_policy = {
  protectFromScaleIn => "protectFromScaleIn (optional)",
  protectFromScaleSetActions => "protectFromScaleSetActions (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|protectFromScaleIn | Boolean | false | Indicates that the virtual machine scale set VM shouldn't be considered for deletion during a scale-in operation. |
|protectFromScaleSetActions | Boolean | false | Indicates that model updates or actions (including scale-in) initiated on the virtual machine scale set should not be applied to the virtual machine scale set VM. |
        
## StorageProfile

Specifies the storage settings for the virtual machine disks.

```puppet
$azure_storage_profile = {
  dataDisks => $azure_data_disk
  imageReference => $azure_image_reference
  osDisk => $azure_os_disk
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dataDisks | [DataDisk](#datadisk) | false | Specifies the parameters that are used to add a data disk to a virtual machine. <br><br> For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-about-disks-vhds?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json). |
|imageReference | [ImageReference](#imagereference) | false | Specifies information about the image to use. You can specify information about platform images, marketplace images, or virtual machine images. This element is required when you want to use a platform image, marketplace image, or virtual machine image, but is not used in other creation operations. |
|osDisk | [OSDisk](#osdisk) | false | Specifies information about the operating system disk used by the virtual machine. <br><br> For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-about-disks-vhds?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json). |
        
## DataDisk

Describes a data disk.

```puppet
$azure_data_disk = {
  caching => $azure_caching
  createOption => $azure_create_option
  diskSizeGB => "1234 (optional)",
  image => $azure_virtual_hard_disk
  lun => "1234",
  managedDisk => $azure_managed_disk_parameters
  name => "name (optional)",
  toBeDetached => "toBeDetached (optional)",
  vhd => $azure_virtual_hard_disk
  writeAcceleratorEnabled => "writeAcceleratorEnabled (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|caching | [Caching](#caching) | false | Specifies the caching requirements. <br><br> Possible values are: <br><br> **None** <br><br> **ReadOnly** <br><br> **ReadWrite** <br><br> Default: **None for Standard storage. ReadOnly for Premium storage** |
|createOption | [CreateOption](#createoption) | true | Specifies how the virtual machine should be created.<br><br> Possible values are:<br><br> **Attach** \u2013 This value is used when you are using a specialized disk to create the virtual machine.<br><br> **FromImage** \u2013 This value is used when you are using an image to create the virtual machine. If you are using a platform image, you also use the imageReference element described above. If you are using a marketplace image, you  also use the plan element previously described. |
|diskSizeGB | Integer | false | Specifies the size of an empty data disk in gigabytes. This element can be used to overwrite the size of the disk in a virtual machine image. <br><br> This value cannot be larger than 1023 GB |
|image | [VirtualHardDisk](#virtualharddisk) | false | The source user image virtual hard disk. The virtual hard disk will be copied before being attached to the virtual machine. If SourceImage is provided, the destination virtual hard drive must not exist. |
|lun | Integer | true | Specifies the logical unit number of the data disk. This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM. |
|managedDisk | [ManagedDiskParameters](#manageddiskparameters) | false | The managed disk parameters. |
|name | String | false | The disk name. |
|toBeDetached | Boolean | false | Specifies whether the data disk is in process of detachment from the VirtualMachine/VirtualMachineScaleset |
|vhd | [VirtualHardDisk](#virtualharddisk) | false | The virtual hard disk. |
|writeAcceleratorEnabled | Boolean | false | Specifies whether writeAccelerator should be enabled or disabled on the disk. |
        
## Caching

Specifies the caching requirements. <br><br> Possible values are: <br><br> **None** <br><br> **ReadOnly** <br><br> **ReadWrite** <br><br> Default: **None for Standard storage. ReadOnly for Premium storage**

```puppet
$azure_caching = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## CreateOption

Specifies how the virtual machine should be created.<br><br> Possible values are:<br><br> **Attach** \u2013 This value is used when you are using a specialized disk to create the virtual machine.<br><br> **FromImage** \u2013 This value is used when you are using an image to create the virtual machine. If you are using a platform image, you also use the imageReference element described above. If you are using a marketplace image, you  also use the plan element previously described.

```puppet
$azure_create_option = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## VirtualHardDisk

Describes the uri of a disk.

```puppet
$azure_virtual_hard_disk = {
  uri => "uri (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|uri | String | false | Specifies the virtual hard disk's uri. |
        
## ManagedDiskParameters

The parameters of a managed disk.

```puppet
$azure_managed_disk_parameters = {
  id => "id (optional)",
  storageAccountType => $azure_storage_account_type
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource Id |
|storageAccountType | [StorageAccountType](#storageaccounttype) | false | Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can only be used with data disks, it cannot be used with OS Disk. |
        
## StorageAccountType

Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can only be used with data disks, it cannot be used with OS Disk.

```puppet
$azure_storage_account_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
## ImageReference

Specifies information about the image to use. You can specify information about platform images, marketplace images, or virtual machine images. This element is required when you want to use a platform image, marketplace image, or virtual machine image, but is not used in other creation operations.

```puppet
$azure_image_reference = {
  id => "id (optional)",
  offer => "offer (optional)",
  publisher => "publisher (optional)",
  sku => "sku (optional)",
  version => "version (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource Id |
|offer | String | false | Specifies the offer of the platform image or marketplace image used to create the virtual machine. |
|publisher | String | false | The image publisher. |
|sku | String | false | The image SKU. |
|version | String | false | Specifies the version of the platform image or marketplace image used to create the virtual machine. The allowed formats are Major.Minor.Build or 'latest'. Major, Minor, and Build are decimal numbers. Specify 'latest' to use the latest version of an image available at deploy time. Even if you use 'latest', the VM image will not automatically update after deploy time even if a new version becomes available. |
        
## OSDisk

Specifies information about the operating system disk used by the virtual machine. <br><br> For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-about-disks-vhds?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json).

```puppet
$azure_os_disk = {
  caching => $azure_caching
  createOption => $azure_create_option
  diffDiskSettings => $azure_diff_disk_settings
  diskSizeGB => "1234 (optional)",
  encryptionSettings => $azure_disk_encryption_settings
  image => $azure_virtual_hard_disk
  managedDisk => $azure_managed_disk_parameters
  name => "name (optional)",
  osType => "osType (optional)",
  vhd => $azure_virtual_hard_disk
  writeAcceleratorEnabled => "writeAcceleratorEnabled (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|caching | [Caching](#caching) | false | Specifies the caching requirements. <br><br> Possible values are: <br><br> **None** <br><br> **ReadOnly** <br><br> **ReadWrite** <br><br> Default: **None for Standard storage. ReadOnly for Premium storage** |
|createOption | [CreateOption](#createoption) | true | Specifies how the virtual machine should be created.<br><br> Possible values are:<br><br> **Attach** \u2013 This value is used when you are using a specialized disk to create the virtual machine.<br><br> **FromImage** \u2013 This value is used when you are using an image to create the virtual machine. If you are using a platform image, you also use the imageReference element described above. If you are using a marketplace image, you  also use the plan element previously described. |
|diffDiskSettings | [DiffDiskSettings](#diffdisksettings) | false | Specifies the ephemeral Disk Settings for the operating system disk used by the virtual machine. |
|diskSizeGB | Integer | false | Specifies the size of an empty data disk in gigabytes. This element can be used to overwrite the size of the disk in a virtual machine image. <br><br> This value cannot be larger than 1023 GB |
|encryptionSettings | [DiskEncryptionSettings](#diskencryptionsettings) | false | Specifies the encryption settings for the OS Disk. <br><br> Minimum api-version: 2015-06-15 |
|image | [VirtualHardDisk](#virtualharddisk) | false | The source user image virtual hard disk. The virtual hard disk will be copied before being attached to the virtual machine. If SourceImage is provided, the destination virtual hard drive must not exist. |
|managedDisk | [ManagedDiskParameters](#manageddiskparameters) | false | The managed disk parameters. |
|name | String | false | The disk name. |
|osType | String | false | This property allows you to specify the type of the OS that is included in the disk if creating a VM from user-image or a specialized VHD. <br><br> Possible values are: <br><br> **Windows** <br><br> **Linux** |
|vhd | [VirtualHardDisk](#virtualharddisk) | false | The virtual hard disk. |
|writeAcceleratorEnabled | Boolean | false | Specifies whether writeAccelerator should be enabled or disabled on the disk. |
        
        
        
## DiffDiskSettings

Describes the parameters of ephemeral disk settings that can be specified for operating system disk. <br><br> NOTE: The ephemeral disk settings can only be specified for managed disk.

```puppet
$azure_diff_disk_settings = {
  option => $azure_diff_disk_option
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|option | [DiffDiskOption](#diffdiskoption) | false | Specifies the ephemeral disk settings for operating system disk. |
        
## DiffDiskOption

Specifies the ephemeral disk option for operating system disk.

```puppet
$azure_diff_disk_option = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
        
        
        
## VirtualMachineExtension

Describes a Virtual Machine Extension.

```puppet
$azure_virtual_machine_extension = {
  location => "location (optional)",
  properties => $azure_virtual_machine_extension_properties
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|location | String | false | Resource location |
|properties | [VirtualMachineExtensionProperties](#virtualmachineextensionproperties) | false |  |
|tags | Hash | false | Resource tags |
        
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
        
        
## Sku

Describes a virtual machine scale set sku.

```puppet
$azure_sku = {
  capacity => "1234 (optional)",
  name => "name (optional)",
  tier => "tier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|capacity | Integer | false | Specifies the number of virtual machines in the scale set. |
|name | String | false | The sku name. |
|tier | String | false | Specifies the tier of virtual machines in a scale set.<br /><br /> Possible Values:<br /><br /> **Standard**<br /><br /> **Basic** |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the VirtualMachineScaleSetVM

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachineScaleSets/%{vm_scale_set_name}/virtualmachines/%{instance_id}`|Put|Updates a virtual machine of a VM scale set.|VirtualMachineScaleSetVMs_Update|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachineScaleSets/%{vm_scale_set_name}/virtualmachines/%{instance_id}`|Get|Gets a virtual machine from a VM scale set.|VirtualMachineScaleSetVMs_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachineScaleSets/%{virtual_machine_scale_set_name}/virtualMachines`|Get|Gets a list of all virtual machines in a VM scale sets.|VirtualMachineScaleSetVMs_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachineScaleSets/%{vm_scale_set_name}/virtualmachines/%{instance_id}`|Put|Updates a virtual machine of a VM scale set.|VirtualMachineScaleSetVMs_Update|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachineScaleSets/%{vm_scale_set_name}/virtualmachines/%{instance_id}`|Delete|Deletes a virtual machine from a VM scale set.|VirtualMachineScaleSetVMs_Delete|
