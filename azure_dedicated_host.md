Document: "compute"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/compute/resource-manager/Microsoft.Compute/stable/2019-03-01/compute.json")

## DedicatedHost

Specifies information about the Dedicated host.

```puppet
azure_dedicated_host {
  api_version => "api_version",
  host_group_name => "host_group_name",
  host_name => "host_name",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_dedicated_host_properties
  resource_group_name => "resource_group_name",
  sku => $azure_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|host_group_name | String | true | The name of the dedicated host group. |
|host_name | String | true | The name of the dedicated host . |
|location | String | false | Resource location |
|parameters | Hash | true | Parameters supplied to the Create Dedicated Host. |
|properties | [DedicatedHostProperties](#dedicatedhostproperties) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|sku | [Sku](#sku) | true | SKU of the dedicated host for Hardware Generation and VM family. Only name is required to be set. List Microsoft.Compute SKUs for a list of possible values. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
        
## DedicatedHostProperties

Properties of the dedicated host.

```puppet
$azure_dedicated_host_properties = {
  autoReplaceOnFailure => "autoReplaceOnFailure (optional)",
  instanceView => $azure_dedicated_host_instance_view
  licenseType => $azure_dedicated_host_license_type
  platformFaultDomain => "1234 (optional)",
  virtualMachines => $azure_sub_resource_read_only
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|autoReplaceOnFailure | Boolean | false | Specifies whether the dedicated host should be replaced automatically in case of a failure. The value is defaulted to 'true' when not provided. |
|instanceView | [DedicatedHostInstanceView](#dedicatedhostinstanceview) | false | The dedicated host instance view. |
|licenseType | [DedicatedHostLicenseType](#dedicatedhostlicensetype) | false | Specifies the software license type that will be applied to the VMs deployed on the dedicated host. <br><br> Possible values are: <br><br> **None** <br><br> **Windows_Server_Hybrid** <br><br> **Windows_Server_Perpetual** <br><br> Default: **None** |
|platformFaultDomain | Integer | false | Fault domain of the dedicated host within a dedicated host group. |
|virtualMachines | [SubResourceReadOnly](#subresourcereadonly) | false | A list of references to all virtual machines in the Dedicated Host. |
        
## DedicatedHostInstanceView

The instance view of a dedicated host.

```puppet
$azure_dedicated_host_instance_view = {
  availableCapacity => $azure_dedicated_host_available_capacity
  statuses => $azure_instance_view_status
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|availableCapacity | [DedicatedHostAvailableCapacity](#dedicatedhostavailablecapacity) | false | Unutilized capacity of the dedicated host. |
|statuses | [InstanceViewStatus](#instanceviewstatus) | false | The resource status information. |
        
## DedicatedHostAvailableCapacity

Dedicated host unutilized capacity.

```puppet
$azure_dedicated_host_available_capacity = {
  allocatableVMs => $azure_dedicated_host_allocatable_vm
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|allocatableVMs | [DedicatedHostAllocatableVM](#dedicatedhostallocatablevm) | false | The unutilized capacity of the dedicated host represented in terms of each VM size that is allowed to be deployed to the dedicated host. |
        
## DedicatedHostAllocatableVM

Represents the dedicated host unutilized capacity in terms of a specific VM size.

```puppet
$azure_dedicated_host_allocatable_vm = {
  count => "count (optional)",
  vmSize => "vmSize (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|count | Numeric | false | Maximum number of VMs of size vmSize that can fit in the dedicated host's remaining capacity. |
|vmSize | String | false | VM size in terms of which the unutilized capacity is represented. |
        
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
        
## DedicatedHostLicenseType

Specifies the software license type that will be applied to the VMs deployed on the dedicated host. <br><br> Possible values are: <br><br> **None** <br><br> **Windows_Server_Hybrid** <br><br> **Windows_Server_Perpetual** <br><br> Default: **None**

```puppet
$azure_dedicated_host_license_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## SubResourceReadOnly



```puppet
$azure_sub_resource_read_only = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
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

Here is a list of endpoints that we use to create, read, update and delete the DedicatedHost

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/hostGroups/%{host_group_name}/hosts/%{host_name}`|Put|Create or update a dedicated host .|DedicatedHosts_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/hostGroups/%{host_group_name}/hosts/%{host_name}`|Get|Retrieves information about a dedicated host.|DedicatedHosts_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/hostGroups/%{host_group_name}/hosts`|Get|Lists all of the dedicated hosts in the specified dedicated host group. Use the nextLink property in the response to get the next page of dedicated hosts.|DedicatedHosts_ListByHostGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/hostGroups/%{host_group_name}/hosts/%{host_name}`|Put|Create or update a dedicated host .|DedicatedHosts_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/hostGroups/%{host_group_name}/hosts/%{host_name}`|Delete|Delete a dedicated host.|DedicatedHosts_Delete|
