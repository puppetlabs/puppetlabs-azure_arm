Document: "compute"
Path: "/root/specs/specification/compute/resource-manager/Microsoft.Compute/stable/2017-12-01/compute.json")

## AvailabilitySet

```puppet
azure_availability_set {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_availability_set_properties
  resource_group_name => "resource_group_name",
  sku => $azure_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|id | String | false | Resource Id |
|location | String | false | Resource location |
|name | String | false | Resource name |
|parameters | Hash | true | Parameters supplied to the Create Availability Set operation. |
|properties | [AvailabilitySetProperties](#availabilitysetproperties) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|sku | [Sku](#sku) | false | Sku of the availability set |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
|type | String | false | Resource type |
        
## AvailabilitySetProperties

```puppet
$azure_availability_set_properties = {
  platformFaultDomainCount => "1234 (optional)",
  platformUpdateDomainCount => "1234 (optional)",
  statuses => $azure_instance_view_status
  virtualMachines => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|platformFaultDomainCount | Integer | false | Fault Domain count. |
|platformUpdateDomainCount | Integer | false | Update Domain count. |
|statuses | [InstanceViewStatus](#instanceviewstatus) | false | The resource status information. |
|virtualMachines | [SubResource](#subresource) | false | A list of references to all virtual machines in the availability set. |
        
## InstanceViewStatus

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
        
## SubResource

```puppet
$azure_sub_resource = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource Id |
        
## Sku

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

Here is a list of endpoints that we use to create, read, update and delete the AvailabilitySet

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/availabilitySets/%{availability_set_name}`|Put|Create or update an availability set.|AvailabilitySets_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/availabilitySets/%{availability_set_name}`|Get|Retrieves information about an availability set.|AvailabilitySets_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/availabilitySets`|Get|Lists all availability sets in a resource group.|AvailabilitySets_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/availabilitySets/%{availability_set_name}`|Put|Create or update an availability set.|AvailabilitySets_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/availabilitySets/%{availability_set_name}`|Delete|Delete an availability set.|AvailabilitySets_Delete|