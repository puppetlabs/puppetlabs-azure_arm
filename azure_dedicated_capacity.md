Document: "powerbidedicated"
Path: "/root/specs/specification/powerbidedicated/resource-manager/Microsoft.PowerBIdedicated/stable/2017-10-01/powerbidedicated.json")

## DedicatedCapacity

```puppet
azure_dedicated_capacity {
  api_version => "api_version",
  capacity_parameters => "capacityParameters",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_dedicated_capacity_properties
  resource_group_name => "resource_group_name",
  sku => "sku (optional)",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The client API version. |
|capacity_parameters | Hash | true | Contains the information used to provision the Dedicated capacity. |
|id | String | false | An identifier that represents the PowerBI Dedicated resource. |
|location | String | false | Location of the PowerBI Dedicated resource. |
|name | String | false | The name of the PowerBI Dedicated resource. |
|properties | [DedicatedCapacityProperties](#dedicatedcapacityproperties) | false | Properties of the provision operation request. |
|resource_group_name | String | true | The name of the Azure Resource group of which a given PowerBIDedicated capacity is part. This name must be at least 1 character in length, and no more than 90. |
|sku | String | false | The SKU of the PowerBI Dedicated resource. |
|subscription_id | String | true | A unique identifier for a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Key-value pairs of additional resource provisioning properties. |
|type | String | false | The type of the PowerBI Dedicated resource. |
        
## DedicatedCapacityProperties

```puppet
$azure_dedicated_capacity_properties = {
  administration => "administration (optional)",
  provisioningState => "provisioningState (optional)",
  state => "state (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|administration | String | false | A collection of Dedicated capacity administrators |
|provisioningState | String | false | The current deployment state of PowerBI Dedicatedresource. The provisioningState is to indicate states for resource provisioning. |
|state | String | false | The current state of PowerBI Dedicated resource. The state is to indicate more states outside of resource provisioning. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DedicatedCapacity

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.PowerBIDedicated/capacities/%{dedicated_capacity_name}`|Put|Provisions the specified Dedicated capacity based on the configuration specified in the request.|Capacities_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.PowerBIDedicated/capacities`|Get|Lists all the Dedicated capacities for the given subscription.|Capacities_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.PowerBIDedicated/capacities/%{dedicated_capacity_name}`|Get|Gets details about the specified dedicated capacity.|Capacities_GetDetails|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.PowerBIDedicated/capacities`|Get|Gets all the Dedicated capacities for the given resource group.|Capacities_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.PowerBIDedicated/capacities/%{dedicated_capacity_name}`|Put|Provisions the specified Dedicated capacity based on the configuration specified in the request.|Capacities_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.PowerBIDedicated/capacities/%{dedicated_capacity_name}`|Delete|Deletes the specified Dedicated capacity.|Capacities_Delete|