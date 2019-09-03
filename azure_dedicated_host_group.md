Document: "compute"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/compute/resource-manager/Microsoft.Compute/stable/2019-03-01/compute.json")

## DedicatedHostGroup

Specifies information about the dedicated host group that the dedicated hosts should be assigned to. <br><br> Currently, a dedicated host can only be added to a dedicated host group at creation time. An existing dedicated host cannot be added to another dedicated host group.

```puppet
azure_dedicated_host_group {
  api_version => "api_version",
  host_group_name => "host_group_name",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_dedicated_host_group_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  zones => "zones (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|host_group_name | String | true | The name of the dedicated host group. |
|location | String | false | Resource location |
|parameters | Hash | true | Parameters supplied to the Create Dedicated Host Group. |
|properties | [DedicatedHostGroupProperties](#dedicatedhostgroupproperties) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
|zones | Array | false | Availability Zone to use for this host group. Only single zone is supported. The zone can be assigned only during creation. If not provided, the group supports all zones in the region. If provided, enforces each host in the group to be in the same zone. |
        
## DedicatedHostGroupProperties

Dedicated Host Group Properties.

```puppet
$azure_dedicated_host_group_properties = {
  hosts => $azure_sub_resource_read_only
  platformFaultDomainCount => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|hosts | [SubResourceReadOnly](#subresourcereadonly) | false | A list of references to all dedicated hosts in the dedicated host group. |
|platformFaultDomainCount | Integer | true | Number of fault domains that the host group can span. |
        
## SubResourceReadOnly



```puppet
$azure_sub_resource_read_only = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DedicatedHostGroup

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/hostGroups/%{host_group_name}`|Put|Create or update a dedicated host group. For details of Dedicated Host and Dedicated Host Groups please see [Dedicated Host Documentation] (https://go.microsoft.com/fwlink/?linkid=2082596)|DedicatedHostGroups_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Compute/hostGroups`|Get|Lists all of the dedicated host groups in the subscription. Use the nextLink property in the response to get the next page of dedicated host groups.|DedicatedHostGroups_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/hostGroups/%{host_group_name}`|Get|Retrieves information about a dedicated host group.|DedicatedHostGroups_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Compute/hostGroups`|Get|Lists all of the dedicated host groups in the subscription. Use the nextLink property in the response to get the next page of dedicated host groups.|DedicatedHostGroups_ListBySubscription|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/hostGroups/%{host_group_name}`|Put|Create or update a dedicated host group. For details of Dedicated Host and Dedicated Host Groups please see [Dedicated Host Documentation] (https://go.microsoft.com/fwlink/?linkid=2082596)|DedicatedHostGroups_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Compute/hostGroups/%{host_group_name}`|Delete|Delete a dedicated host group.|DedicatedHostGroups_Delete|
