Document: "compute"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/compute/resource-manager/Microsoft.Compute/stable/2018-06-01/compute.json")

## VirtualMachineScaleSet

Describes a Virtual Machine Scale Set.

```puppet
azure_virtual_machine_scale_set {
  api_version => "api_version",
  identity => $azure_virtual_machine_scale_set_identity
  location => "location (optional)",
  parameters => "parameters",
  plan => $azure_plan
  properties => $azure_virtual_machine_scale_set_properties
  resource_group_name => "resource_group_name",
  sku => $azure_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  vm_scale_set_name => "vm_scale_set_name",
  zones => "zones (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|identity | [VirtualMachineScaleSetIdentity](#virtualmachinescalesetidentity) | false | The identity of the virtual machine scale set, if configured. |
|location | String | false | Resource location |
|parameters | Hash | true | The scale set object. |
|plan | [Plan](#plan) | false | Specifies information about the marketplace image used to create the virtual machine. This element is only used for marketplace images. Before you can use a marketplace image from an API, you must enable the image for programmatic use.  In the Azure portal, find the marketplace image that you want to use and then click **Want to deploy programmatically, Get Started ->**. Enter any required information and then click **Save**. |
|properties | [VirtualMachineScaleSetProperties](#virtualmachinescalesetproperties) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|sku | [Sku](#sku) | false | The virtual machine scale set sku. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
|vm_scale_set_name | String | true | The name of the VM scale set to create or update. |
|zones | Array | false | The virtual machine scale set zones. |
        
## VirtualMachineScaleSetIdentity

Identity for the virtual machine scale set.

```puppet
$azure_virtual_machine_scale_set_identity = {
  identityIds => "identityIds (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|identityIds | Array | false | The list of user identities associated with the virtual machine scale set. The user identity references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/identities/{identityName}'. |
|type | String | false | The type of identity used for the virtual machine scale set. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user assigned identities. The type 'None' will remove any identities from the virtual machine scale set. |
        
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
        
## VirtualMachineScaleSetProperties

Describes the properties of a Virtual Machine Scale Set.

```puppet
$azure_virtual_machine_scale_set_properties = {
  overprovision => "overprovision (optional)",
  platformFaultDomainCount => "1234 (optional)",
  singlePlacementGroup => "singlePlacementGroup (optional)",
  upgradePolicy => $azure_upgrade_policy
  virtualMachineProfile => $azure_virtual_machine_scale_set_vm_profile
  zoneBalance => "zoneBalance (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|overprovision | Boolean | false | Specifies whether the Virtual Machine Scale Set should be overprovisioned. |
|platformFaultDomainCount | Integer | false | Fault Domain count for each placement group. |
|singlePlacementGroup | Boolean | false | When true this limits the scale set to a single placement group, of max size 100 virtual machines. |
|upgradePolicy | [UpgradePolicy](#upgradepolicy) | false | The upgrade policy. |
|virtualMachineProfile | [VirtualMachineScaleSetVMProfile](#virtualmachinescalesetvmprofile) | false | The virtual machine profile. |
|zoneBalance | Boolean | false | Whether to force stictly even Virtual Machine distribution cross x-zones in case there is zone outage. |
        
## UpgradePolicy

Describes an upgrade policy - automatic, manual, or rolling.

```puppet
$azure_upgrade_policy = {
  automaticOSUpgrade => "automaticOSUpgrade (optional)",
  autoOSUpgradePolicy => $azure_auto_os_upgrade_policy
  mode => "mode (optional)",
  rollingUpgradePolicy => $azure_rolling_upgrade_policy
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|automaticOSUpgrade | Boolean | false | Whether OS upgrades should automatically be applied to scale set instances in a rolling fashion when a newer version of the image becomes available. |
|autoOSUpgradePolicy | [AutoOSUpgradePolicy](#autoosupgradepolicy) | false | Configuration parameters used for performing automatic OS Upgrade. |
|mode | String | false | Specifies the mode of an upgrade to virtual machines in the scale set.<br /><br /> Possible values are:<br /><br /> **Manual** - You  control the application of updates to virtual machines in the scale set. You do this by using the manualUpgrade action.<br /><br /> **Automatic** - All virtual machines in the scale set are  automatically updated at the same time. |
|rollingUpgradePolicy | [RollingUpgradePolicy](#rollingupgradepolicy) | false | The configuration parameters used while performing a rolling upgrade. |
        
## AutoOSUpgradePolicy

The configuration parameters used for performing automatic OS upgrade.

```puppet
$azure_auto_os_upgrade_policy = {
  disableAutoRollback => "disableAutoRollback (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|disableAutoRollback | Boolean | false | Whether OS image rollback feature should be disabled. Default value is false. |
        
## RollingUpgradePolicy

The configuration parameters used while performing a rolling upgrade.

```puppet
$azure_rolling_upgrade_policy = {
  maxBatchInstancePercent => "1234 (optional)",
  maxUnhealthyInstancePercent => "1234 (optional)",
  maxUnhealthyUpgradedInstancePercent => "1234 (optional)",
  pauseTimeBetweenBatches => "pauseTimeBetweenBatches (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|maxBatchInstancePercent | Integer | false | The maximum percent of total virtual machine instances that will be upgraded simultaneously by the rolling upgrade in one batch. As this is a maximum, unhealthy instances in previous or future batches can cause the percentage of instances in a batch to decrease to ensure higher reliability. The default value for this parameter is 20%. |
|maxUnhealthyInstancePercent | Integer | false | The maximum percentage of the total virtual machine instances in the scale set that can be simultaneously unhealthy, either as a result of being upgraded, or by being found in an unhealthy state by the virtual machine health checks before the rolling upgrade aborts. This constraint will be checked prior to starting any batch. The default value for this parameter is 20%. |
|maxUnhealthyUpgradedInstancePercent | Integer | false | The maximum percentage of upgraded virtual machine instances that can be found to be in an unhealthy state. This check will happen after each batch is upgraded. If this percentage is ever exceeded, the rolling update aborts. The default value for this parameter is 20%. |
|pauseTimeBetweenBatches | String | false | The wait time between completing the update for all virtual machines in one batch and starting the next batch. The time duration should be specified in ISO 8601 format. The default value is 0 seconds (PT0S). |
        
## VirtualMachineScaleSetVMProfile

Describes a virtual machine scale set virtual machine profile.

```puppet
$azure_virtual_machine_scale_set_vm_profile = {
  diagnosticsProfile => $azure_diagnostics_profile
  evictionPolicy => "evictionPolicy (optional)",
  extensionProfile => $azure_virtual_machine_scale_set_extension_profile
  licenseType => "licenseType (optional)",
  networkProfile => $azure_virtual_machine_scale_set_network_profile
  osProfile => $azure_virtual_machine_scale_set_os_profile
  priority => "priority (optional)",
  storageProfile => $azure_virtual_machine_scale_set_storage_profile
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|diagnosticsProfile | [DiagnosticsProfile](#diagnosticsprofile) | false | Specifies the boot diagnostic settings state. <br><br>Minimum api-version: 2015-06-15. |
|evictionPolicy | String | false | Specifies the eviction policy for virtual machines in a low priority scale set. <br><br>Minimum api-version: 2017-10-30-preview |
|extensionProfile | [VirtualMachineScaleSetExtensionProfile](#virtualmachinescalesetextensionprofile) | false | Specifies a collection of settings for extensions installed on virtual machines in the scale set. |
|licenseType | String | false | Specifies that the image or disk that is being used was licensed on-premises. This element is only used for images that contain the Windows Server operating system. <br><br> Possible values are: <br><br> Windows_Client <br><br> Windows_Server <br><br> If this element is included in a request for an update, the value must match the initial value. This value cannot be updated. <br><br> For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-hybrid-use-benefit-licensing?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json) <br><br> Minimum api-version: 2015-06-15 |
|networkProfile | [VirtualMachineScaleSetNetworkProfile](#virtualmachinescalesetnetworkprofile) | false | Specifies properties of the network interfaces of the virtual machines in the scale set. |
|osProfile | [VirtualMachineScaleSetOSProfile](#virtualmachinescalesetosprofile) | false | Specifies the operating system settings for the virtual machines in the scale set. |
|priority | String | false | Specifies the priority for the virtual machines in the scale set. <br><br>Minimum api-version: 2017-10-30-preview |
|storageProfile | [VirtualMachineScaleSetStorageProfile](#virtualmachinescalesetstorageprofile) | false | Specifies the storage settings for the virtual machine disks. |
        
## DiagnosticsProfile

Specifies the boot diagnostic settings state. <br><br>Minimum api-version: 2015-06-15.

```puppet
$azure_diagnostics_profile = {
  bootDiagnostics => $azure_boot_diagnostics
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|bootDiagnostics | [BootDiagnostics](#bootdiagnostics) | false | Boot Diagnostics is a debugging feature which allows you to view Console Output and Screenshot to diagnose VM status. <br><br> For Linux Virtual Machines, you can easily view the output of your console log. <br><br> For both Windows and Linux virtual machines, Azure also enables you to see a screenshot of the VM from the hypervisor. |
        
## BootDiagnostics

Boot Diagnostics is a debugging feature which allows you to view Console Output and Screenshot to diagnose VM status. <br><br> For Linux Virtual Machines, you can easily view the output of your console log. <br><br> For both Windows and Linux virtual machines, Azure also enables you to see a screenshot of the VM from the hypervisor.

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
        
## VirtualMachineScaleSetExtensionProfile

Describes a virtual machine scale set extension profile.

```puppet
$azure_virtual_machine_scale_set_extension_profile = {
  extensions => $azure_virtual_machine_scale_set_extension
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|extensions | [VirtualMachineScaleSetExtension](#virtualmachinescalesetextension) | false | The virtual machine scale set child extension resources. |
        
## VirtualMachineScaleSetExtension

Describes a Virtual Machine Scale Set Extension.

```puppet
$azure_virtual_machine_scale_set_extension = {
  api-version => "api-version",
  extensionParameters => "extensionParameters",
  name => "name (optional)",
  properties => $azure_virtual_machine_scale_set_extension_properties
  resourceGroupName => "resourceGroupName",
  subscriptionId => "subscriptionId",
  vmScaleSetName => "vmScaleSetName",
  vmssExtensionName => "vmssExtensionName",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api-version | String | true | Client Api Version. |
|extensionParameters | Hash | true | Parameters supplied to the Create VM scale set Extension operation. |
|name | String | false | The name of the extension. |
|properties | [VirtualMachineScaleSetExtensionProperties](#virtualmachinescalesetextensionproperties) | false |  |
|resourceGroupName | String | true | The name of the resource group. |
|subscriptionId | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|vmScaleSetName | String | true | The name of the VM scale set where the extension should be create or updated. |
|vmssExtensionName | String | true | The name of the VM scale set extension. |
        
## VirtualMachineScaleSetExtensionProperties

Describes the properties of a Virtual Machine Scale Set Extension.

```puppet
$azure_virtual_machine_scale_set_extension_properties = {
  autoUpgradeMinorVersion => "autoUpgradeMinorVersion (optional)",
  forceUpdateTag => "forceUpdateTag (optional)",
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
|forceUpdateTag | String | false | If a value is provided and is different from the previous value, the extension handler will be forced to update even if the extension configuration has not changed. |
|protectedSettings | Hash | false | The extension can contain either protectedSettings or protectedSettingsFromKeyVault or no protected settings at all. |
|publisher | String | false | The name of the extension handler publisher. |
|settings | Hash | false | Json formatted public settings for the extension. |
|type | String | false | Specifies the type of the extension; an example is 'CustomScriptExtension'. |
|typeHandlerVersion | String | false | Specifies the version of the script handler. |
        
## VirtualMachineScaleSetNetworkProfile

Describes a virtual machine scale set network profile.

```puppet
$azure_virtual_machine_scale_set_network_profile = {
  healthProbe => $azure_api_entity_reference
  networkInterfaceConfigurations => $azure_virtual_machine_scale_set_network_configuration
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|healthProbe | [ApiEntityReference](#apientityreference) | false | A reference to a load balancer probe used to determine the health of an instance in the virtual machine scale set. The reference will be in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/loadBalancers/{loadBalancerName}/probes/{probeName}'. |
|networkInterfaceConfigurations | [VirtualMachineScaleSetNetworkConfiguration](#virtualmachinescalesetnetworkconfiguration) | false | The list of network configurations. |
        
## ApiEntityReference

The API entity reference.

```puppet
$azure_api_entity_reference = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | The ARM resource id in the form of /subscriptions/{SubcriptionId}/resourceGroups/{ResourceGroupName}/... |
        
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
|loadBalancerBackendAddressPools | [SubResource](#subresource) | false | Specifies an array of references to backend address pools of load balancers. A scale set can reference backend address pools of one public and one internal load balancer. Multiple scale sets cannot use the same load balancer. |
|loadBalancerInboundNatPools | [SubResource](#subresource) | false | Specifies an array of references to inbound Nat pools of the load balancers. A scale set can reference inbound nat pools of one public and one internal load balancer. Multiple scale sets cannot use the same load balancer |
|primary | Boolean | false | Specifies the primary network interface in case the virtual machine has more than 1 network interface. |
|privateIPAddressVersion | String | false | Available from Api-Version 2017-03-30 onwards, it represents whether the specific ipconfiguration is IPv4 or IPv6. Default is taken as IPv4.  Possible values are: 'IPv4' and 'IPv6'. |
|publicIPAddressConfiguration | [VirtualMachineScaleSetPublicIPAddressConfiguration](#virtualmachinescalesetpublicipaddressconfiguration) | false | The publicIPAddressConfiguration. |
|subnet | [ApiEntityReference](#apientityreference) | false | Specifies the identifier of the subnet. |
        
## SubResource



```puppet
$azure_sub_resource = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource Id |
        
        
        
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
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dnsSettings | [VirtualMachineScaleSetPublicIPAddressConfigurationDnsSettings](#virtualmachinescalesetpublicipaddressconfigurationdnssettings) | false | The dns settings to be applied on the publicIP addresses . |
|idleTimeoutInMinutes | Integer | false | The idle timeout of the public IP address. |
|ipTags | [VirtualMachineScaleSetIpTag](#virtualmachinescalesetiptag) | false | The list of IP tags associated with the public IP address. |
        
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
        
        
        
## VirtualMachineScaleSetOSProfile

Describes a virtual machine scale set OS profile.

```puppet
$azure_virtual_machine_scale_set_os_profile = {
  adminPassword => "adminPassword (optional)",
  adminUsername => "adminUsername (optional)",
  computerNamePrefix => "computerNamePrefix (optional)",
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
|computerNamePrefix | String | false | Specifies the computer name prefix for all of the virtual machines in the scale set. Computer name prefixes must be 1 to 15 characters long. |
|customData | String | false | Specifies a base-64 encoded string of custom data. The base-64 encoded string is decoded to a binary array that is saved as a file on the Virtual Machine. The maximum length of the binary array is 65535 bytes. <br><br> For using cloud-init for your VM, see [Using cloud-init to customize a Linux VM during creation](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-using-cloud-init?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json) |
|linuxConfiguration | [LinuxConfiguration](#linuxconfiguration) | false | Specifies the Linux operating system settings on the virtual machine. <br><br>For a list of supported Linux distributions, see [Linux on Azure-Endorsed Distributions](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-endorsed-distros?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json) <br><br> For running non-endorsed distributions, see [Information for Non-Endorsed Distributions](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-linux-create-upload-generic?toc=%2fazure%2fvirtual-machines%2flinux%2ftoc.json). |
|secrets | [VaultSecretGroup](#vaultsecretgroup) | false | Specifies set of certificates that should be installed onto the virtual machines in the scale set. |
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
|certificateStore | String | false | For Windows VMs, specifies the certificate store on the Virtual Machine to which the certificate should be added. The specified certificate store is implicitly in the LocalMachine account. <br><br>For Linux VMs, the certificate file is placed under the /var/lib/waagent directory, with the file name <UppercaseThumbprint>.crt for the X509 certificate file and <UppercaseThumbpring>.prv for private key. Both of these files are .pem formatted. |
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
|enableAutomaticUpdates | Boolean | false | Indicates whether virtual machine is enabled for automatic updates. |
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
        
## VirtualMachineScaleSetStorageProfile

Describes a virtual machine scale set storage profile.

```puppet
$azure_virtual_machine_scale_set_storage_profile = {
  dataDisks => $azure_virtual_machine_scale_set_data_disk
  imageReference => $azure_image_reference
  osDisk => $azure_virtual_machine_scale_set_os_disk
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dataDisks | [VirtualMachineScaleSetDataDisk](#virtualmachinescalesetdatadisk) | false | Specifies the parameters that are used to add data disks to the virtual machines in the scale set. <br><br> For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-about-disks-vhds?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json). |
|imageReference | [ImageReference](#imagereference) | false | Specifies information about the image to use. You can specify information about platform images, marketplace images, or virtual machine images. This element is required when you want to use a platform image, marketplace image, or virtual machine image, but is not used in other creation operations. |
|osDisk | [VirtualMachineScaleSetOSDisk](#virtualmachinescalesetosdisk) | false | Specifies information about the operating system disk used by the virtual machines in the scale set. <br><br> For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-about-disks-vhds?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json). |
        
## VirtualMachineScaleSetDataDisk

Describes a virtual machine scale set data disk.

```puppet
$azure_virtual_machine_scale_set_data_disk = {
  caching => $azure_caching
  createOption => $azure_create_option
  diskSizeGB => "1234 (optional)",
  lun => "1234",
  managedDisk => $azure_virtual_machine_scale_set_managed_disk_parameters
  name => "name (optional)",
  writeAcceleratorEnabled => "writeAcceleratorEnabled (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|caching | [Caching](#caching) | false | Specifies the caching requirements. <br><br> Possible values are: <br><br> **None** <br><br> **ReadOnly** <br><br> **ReadWrite** <br><br> Default: **None for Standard storage. ReadOnly for Premium storage** |
|createOption | [CreateOption](#createoption) | true | The create option. |
|diskSizeGB | Integer | false | Specifies the size of an empty data disk in gigabytes. This element can be used to overwrite the name of the disk in a virtual machine image. <br><br> This value cannot be larger than 1023 GB |
|lun | Integer | true | Specifies the logical unit number of the data disk. This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM. |
|managedDisk | [VirtualMachineScaleSetManagedDiskParameters](#virtualmachinescalesetmanageddiskparameters) | false | The managed disk parameters. |
|name | String | false | The disk name. |
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
        
## VirtualMachineScaleSetManagedDiskParameters

Describes the parameters of a ScaleSet managed disk.

```puppet
$azure_virtual_machine_scale_set_managed_disk_parameters = {
  storageAccountType => $azure_storage_account_type
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|storageAccountType | [StorageAccountType](#storageaccounttype) | false | Specifies the storage account type for the managed disk. Possible values are: Standard_LRS or Premium_LRS. |
        
## StorageAccountType

Specifies the storage account type for the managed disk. Possible values are: Standard_LRS or Premium_LRS.

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
        
## VirtualMachineScaleSetOSDisk

Describes a virtual machine scale set operating system disk.

```puppet
$azure_virtual_machine_scale_set_os_disk = {
  caching => $azure_caching
  createOption => $azure_create_option
  image => $azure_virtual_hard_disk
  managedDisk => $azure_virtual_machine_scale_set_managed_disk_parameters
  name => "name (optional)",
  osType => "osType (optional)",
  vhdContainers => "vhdContainers (optional)",
  writeAcceleratorEnabled => "writeAcceleratorEnabled (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|caching | [Caching](#caching) | false | Specifies the caching requirements. <br><br> Possible values are: <br><br> **None** <br><br> **ReadOnly** <br><br> **ReadWrite** <br><br> Default: **None for Standard storage. ReadOnly for Premium storage** |
|createOption | [CreateOption](#createoption) | true | Specifies how the virtual machines in the scale set should be created.<br><br> The only allowed value is: **FromImage** \u2013 This value is used when you are using an image to create the virtual machine. If you are using a platform image, you also use the imageReference element described above. If you are using a marketplace image, you  also use the plan element previously described. |
|image | [VirtualHardDisk](#virtualharddisk) | false | Specifies information about the unmanaged user image to base the scale set on. |
|managedDisk | [VirtualMachineScaleSetManagedDiskParameters](#virtualmachinescalesetmanageddiskparameters) | false | The managed disk parameters. |
|name | String | false | The disk name. |
|osType | String | false | This property allows you to specify the type of the OS that is included in the disk if creating a VM from user-image or a specialized VHD. <br><br> Possible values are: <br><br> **Windows** <br><br> **Linux** |
|vhdContainers | Array | false | Specifies the container urls that are used to store operating system disks for the scale set. |
|writeAcceleratorEnabled | Boolean | false | Specifies whether writeAccelerator should be enabled or disabled on the disk. |
        
        
        
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

Here is a list of endpoints that we use to create, read, update and delete the VirtualMachineScaleSet

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachineScaleSets/%{vm_scale_set_name}`|Put|Create or update a VM scale set.|VirtualMachineScaleSets_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Compute/virtualMachineScaleSets`|Get|Gets a list of all VM Scale Sets in the subscription, regardless of the associated resource group. Use nextLink property in the response to get the next page of VM Scale Sets. Do this till nextLink is null to fetch all the VM Scale Sets.|VirtualMachineScaleSets_ListAll|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachineScaleSets/%{vm_scale_set_name}`|Get|Display information about a virtual machine scale set.|VirtualMachineScaleSets_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachineScaleSets`|Get|Gets a list of all VM scale sets under a resource group.|VirtualMachineScaleSets_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachineScaleSets/%{vm_scale_set_name}`|Put|Create or update a VM scale set.|VirtualMachineScaleSets_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/virtualMachineScaleSets/%{vm_scale_set_name}`|Delete|Deletes a VM scale set.|VirtualMachineScaleSets_Delete|
