Document: "compute"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/compute/resource-manager/Microsoft.Compute/stable/2019-03-01/compute.json")

## ProximityPlacementGroup

Specifies information about the proximity placement group.

```puppet
azure_proximity_placement_group {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_proximity_placement_group_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|location | String | false | Resource location |
|parameters | Hash | true | Parameters supplied to the Create Proximity Placement Group operation. |
|properties | [ProximityPlacementGroupProperties](#proximityplacementgroupproperties) | false | Describes the properties of a Proximity Placement Group. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
        
## ProximityPlacementGroupProperties

Describes the properties of a Proximity Placement Group.

```puppet
$azure_proximity_placement_group_properties = {
  availabilitySets => $azure_sub_resource
  proximityPlacementGroupType => "proximityPlacementGroupType (optional)",
  virtualMachines => $azure_sub_resource
  virtualMachineScaleSets => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|availabilitySets | [SubResource](#subresource) | false | A list of references to all availability sets in the proximity placement group. |
|proximityPlacementGroupType | String | false | Specifies the type of the proximity placement group. <br><br> Possible values are: <br><br> **Standard** : Co-locate resources within an Azure region or Availability Zone. <br><br> **Ultra** : For future use. |
|virtualMachines | [SubResource](#subresource) | false | A list of references to all virtual machines in the proximity placement group. |
|virtualMachineScaleSets | [SubResource](#subresource) | false | A list of references to all virtual machine scale sets in the proximity placement group. |
        
## SubResource



```puppet
$azure_sub_resource = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource Id |
        
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ProximityPlacementGroup

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/proximityPlacementGroups/%{proximity_placement_group_name}`|Put|Create or update a proximity placement group.|ProximityPlacementGroups_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Compute/proximityPlacementGroups`|Get|Lists all proximity placement groups in a subscription.|ProximityPlacementGroups_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/proximityPlacementGroups/%{proximity_placement_group_name}`|Get|Retrieves information about a proximity placement group .|ProximityPlacementGroups_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Compute/proximityPlacementGroups`|Get|Lists all proximity placement groups in a subscription.|ProximityPlacementGroups_ListBySubscription|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/proximityPlacementGroups/%{proximity_placement_group_name}`|Put|Create or update a proximity placement group.|ProximityPlacementGroups_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/proximityPlacementGroups/%{proximity_placement_group_name}`|Delete|Delete a proximity placement group.|ProximityPlacementGroups_Delete|
