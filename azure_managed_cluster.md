Document: "managedClusters"
Path: "/root/specs/specification/containerservices/resource-manager/Microsoft.ContainerService/stable/2017-08-31/managedClusters.json")

## ManagedCluster

```puppet
azure_managed_cluster {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  parameters => "parameters",
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
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
|parameters | Hash | true | Parameters supplied to the Create or Update a Managed Cluster operation. |
|resource_group_name | String | true | The name of the resource group. |
|resource_name | String | true | The name of the managed cluster resource. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
|type | String | false | Resource type |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ManagedCluster

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/managedClusters/%{resource_name}`|Put|Creates or updates a managed cluster with the specified configuration for agents and Kubernetes version.|ManagedClusters_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.ContainerService/managedClusters`|Get|Gets a list of managed clusters in the specified subscription. The operation returns properties of each managed cluster.|ManagedClusters_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/managedClusters/%{resource_name}`|Get|Gets the details of the managed cluster with a specified resource group and name.|ManagedClusters_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.ContainerService/managedClusters`|Get|Gets a list of managed clusters in the specified subscription. The operation returns properties of each managed cluster.|ManagedClusters_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/managedClusters/%{resource_name}`|Put|Creates or updates a managed cluster with the specified configuration for agents and Kubernetes version.|ManagedClusters_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/managedClusters/%{resource_name}`|Delete|Deletes the managed cluster with a specified resource group and name.|ManagedClusters_Delete|