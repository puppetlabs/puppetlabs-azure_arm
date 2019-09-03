Document: "vmwarecloudsimple"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/vmwarecloudsimple/resource-manager/Microsoft.VMwareCloudSimple/stable/2019-04-01/vmwarecloudsimple.json")

## VirtualMachine

Virtual machine model

```puppet
azure_vmwarecloudsimple_virtual_machine {
  api_version => "api_version",
  location => "location",
  properties => $azure_virtual_machine_properties
  referer => "referer",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => $azure_tags
  virtual_machine_request => "virtualMachineRequest",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|location | String | true | Azure region |
|properties | [VirtualMachineProperties](#virtualmachineproperties) | false | Virtual machine properties |
|referer | String | true | referer url |
|resource_group_name | String | true | The name of the resource group |
|subscription_id | String | true | The subscription ID. |
|tags | [Tags](#tags) | false | The list of tags |
|virtual_machine_request | Hash | true | Create or Update Virtual Machine request |
        
## VirtualMachineProperties

Properties of virtual machine

```puppet
$azure_virtual_machine_properties = {
  amountOfRam => "1234",
  controllers => $azure_virtual_disk_controller
  disks => $azure_virtual_disk
  exposeToGuestVM => "exposeToGuestVM (optional)",
  guestOS => "guestOS",
  guestOSType => "guestOSType",
  nics => $azure_virtual_nic
  numberOfCores => "1234",
  password => "password (optional)",
  privateCloudId => "privateCloudId",
  resourcePool => $azure_resource_pool
  templateId => "templateId (optional)",
  username => "username (optional)",
  vSphereNetworks => "vSphereNetworks (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|amountOfRam | Integer | true | The amount of memory |
|controllers | [VirtualDiskController](#virtualdiskcontroller) | false | The list of Virtual Disks' Controllers |
|disks | [VirtualDisk](#virtualdisk) | false | The list of Virtual Disks |
|exposeToGuestVM | Boolean | false | Expose Guest OS or not |
|guestOS | String | true | The name of Guest OS |
|guestOSType | String | true | The Guest OS type |
|nics | [VirtualNic](#virtualnic) | false | The list of Virtual NICs |
|numberOfCores | Integer | true | The number of CPU cores |
|password | String | false | Password for login |
|privateCloudId | String | true | Private Cloud Id |
|resourcePool | [ResourcePool](#resourcepool) | false | Virtual Machines Resource Pool |
|templateId | String | false | Virtual Machine Template Id |
|username | String | false | Username for login |
|vSphereNetworks | Array | false | The list of Virtual VSphere Networks |
        
## VirtualDiskController

Virtual disk controller model

```puppet
$azure_virtual_disk_controller = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## VirtualDisk

Virtual disk model

```puppet
$azure_virtual_disk = {
  controllerId => "controllerId",
  independenceMode => "independenceMode",
  totalSize => "1234",
  virtualDiskId => "virtualDiskId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|controllerId | String | true | Disk's Controller id |
|independenceMode | String | true | Disk's independence mode type |
|totalSize | Integer | true | Disk's total size |
|virtualDiskId | String | false | Disk's id |
        
## VirtualNic

Virtual NIC model

```puppet
$azure_virtual_nic = {
  ipAddresses => "ipAddresses (optional)",
  macAddress => "macAddress (optional)",
  network => $azure_virtual_network
  nicType => "nicType",
  powerOnBoot => "powerOnBoot (optional)",
  virtualNicId => "virtualNicId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|ipAddresses | Array | false | NIC ip address |
|macAddress | String | false | NIC MAC address |
|network | [VirtualNetwork](#virtualnetwork) | false | The list of Virtual Networks |
|nicType | String | true | NIC type |
|powerOnBoot | Boolean | false | Is NIC powered on/off on boot |
|virtualNicId | String | false | NIC id |
        
## VirtualNetwork

Virtual network model

```puppet
$azure_virtual_network = {
  id => "id",
  location => "location (optional)",
  properties => $azure_virtual_network_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | true | virtual network id (privateCloudId:vsphereId) |
|location | String | false | Azure region |
|properties | [VirtualNetworkProperties](#virtualnetworkproperties) | false | Virtual Network properties |
        
## VirtualNetworkProperties

Properties of virtual network

```puppet
$azure_virtual_network_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ResourcePool

Resource pool model

```puppet
$azure_resource_pool = {
  id => "id",
  location => "location (optional)",
  properties => $azure_resource_pool_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | true | resource pool id (privateCloudId:vsphereId) |
|location | String | false | Azure region |
|properties | [ResourcePoolProperties](#resourcepoolproperties) | false | Resource pool properties |
        
## ResourcePoolProperties

Properties of resource pool

```puppet
$azure_resource_pool_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## Tags

Tags model

```puppet
$azure_tags = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the VirtualMachine

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.VMwareCloudSimple/virtualMachines/%{virtual_machine_name}`|Put|Create Or Update Virtual Machine|virtualMachine_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.VMwareCloudSimple/virtualMachines`|Get|Returns list virtual machine within subscription|virtualMachine_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.VMwareCloudSimple/virtualMachines/%{virtual_machine_name}`|Get|Get virtual machine|virtualMachine_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.VMwareCloudSimple/virtualMachines`|Get|Returns list virtual machine within subscription|virtualMachine_ListBySubscription|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.VMwareCloudSimple/virtualMachines/%{virtual_machine_name}`|Put|Create Or Update Virtual Machine|virtualMachine_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.VMwareCloudSimple/virtualMachines/%{virtual_machine_name}`|Delete|Delete virtual machine|virtualMachine_Delete|
