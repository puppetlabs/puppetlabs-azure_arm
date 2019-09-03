Document: "managedClusters"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/containerservice/resource-manager/Microsoft.ContainerService/stable/2019-08-01/managedClusters.json")

## AgentPool

Agent Pool.

```puppet
azure_agent_pool {
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_managed_cluster_agent_pool_profile_properties
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|parameters | Hash | true | Parameters supplied to the Create or Update an agent pool operation. |
|properties | [ManagedClusterAgentPoolProfileProperties](#managedclusteragentpoolprofileproperties) | false | Properties of an agent pool. |
|resource_group_name | String | true | The name of the resource group. |
|resource_name | String | true | The name of the managed cluster resource. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## ManagedClusterAgentPoolProfileProperties

Properties for the container service agent pool profile.

```puppet
$azure_managed_cluster_agent_pool_profile_properties = {
  availabilityZones => "availabilityZones (optional)",
  count => "1234",
  enableAutoScaling => "enableAutoScaling (optional)",
  enableNodePublicIP => "enableNodePublicIP (optional)",
  maxCount => "1234 (optional)",
  maxPods => "1234 (optional)",
  minCount => "1234 (optional)",
  nodeTaints => "nodeTaints (optional)",
  orchestratorVersion => "orchestratorVersion (optional)",
  osDiskSizeGB => $azure_container_service_os_disk
  osType => $azure_os_type
  scaleSetEvictionPolicy => $azure_scale_set_eviction_policy
  scaleSetPriority => $azure_scale_set_priority
  type => $azure_agent_pool_type
  vmSize => $azure_container_service_vm_size
  vnetSubnetID => $azure_container_service_vnet_subnet_id
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|availabilityZones | Array | false | (PREVIEW) Availability zones for nodes. Must use VirtualMachineScaleSets AgentPoolType. |
|count | Integer | true | Number of agents (VMs) to host docker containers. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 1.  |
|enableAutoScaling | Boolean | false | Whether to enable auto-scaler |
|enableNodePublicIP | Boolean | false | Enable public IP for nodes |
|maxCount | Integer | false | Maximum number of nodes for auto-scaling |
|maxPods | Integer | false | Maximum number of pods that can run on a node. |
|minCount | Integer | false | Minimum number of nodes for auto-scaling |
|nodeTaints | Array | false | Taints added to new nodes during node pool create and scale. For example, key=value:NoSchedule. |
|orchestratorVersion | String | false | Version of orchestrator specified when creating the managed cluster. |
|osDiskSizeGB | [ContainerServiceOSDisk](#containerserviceosdisk) | false | OS Disk Size in GB to be used to specify the disk size for every machine in this master/agent pool. If you specify 0, it will apply the default osDisk size according to the vmSize specified. |
|osType | [OSType](#ostype) | false | OsType to be used to specify os type. Choose from Linux and Windows. Default to Linux. |
|scaleSetEvictionPolicy | [ScaleSetEvictionPolicy](#scalesetevictionpolicy) | false | ScaleSetEvictionPolicy to be used to specify eviction policy for low priority virtual machine scale set. Default to Delete. |
|scaleSetPriority | [ScaleSetPriority](#scalesetpriority) | false | ScaleSetPriority to be used to specify virtual machine scale set priority. Default to regular. |
|type | [AgentPoolType](#agentpooltype) | false | AgentPoolType represents types of an agent pool |
|vmSize | [ContainerServiceVMSize](#containerservicevmsize) | true | Size of agent VMs. |
|vnetSubnetID | [ContainerServiceVnetSubnetID](#containerservicevnetsubnetid) | false | VNet SubnetID specifies the VNet's subnet identifier. |
        
## ContainerServiceOSDisk

OS Disk Size in GB to be used to specify the disk size for every machine in this master/agent pool. If you specify 0, it will apply the default osDisk size according to the vmSize specified.

```puppet
$azure_container_service_os_disk = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## OSType

OsType to be used to specify os type. Choose from Linux and Windows. Default to Linux.

```puppet
$azure_os_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ScaleSetEvictionPolicy

ScaleSetEvictionPolicy to be used to specify eviction policy for low priority virtual machine scale set. Default to Delete.

```puppet
$azure_scale_set_eviction_policy = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ScaleSetPriority

ScaleSetPriority to be used to specify virtual machine scale set priority. Default to regular.

```puppet
$azure_scale_set_priority = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## AgentPoolType

AgentPoolType represents types of an agent pool. VirtualMachineScaleSets type is still in PREVIEW.

```puppet
$azure_agent_pool_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ContainerServiceVMSize

Size of agent VMs.

```puppet
$azure_container_service_vm_size = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ContainerServiceVnetSubnetID

VNet SubnetID specifies the VNet's subnet identifier.

```puppet
$azure_container_service_vnet_subnet_id = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the AgentPool

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/managedClusters/%{resource_name}/agentPools/%{agent_pool_name}`|Put|Creates or updates an agent pool in the specified managed cluster.|AgentPools_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/managedClusters/%{resource_name}/agentPools/%{agent_pool_name}`|Get|Gets the details of the agent pool by managed cluster and resource group.|AgentPools_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/managedClusters/%{resource_name}/agentPools`|Get|Gets a list of agent pools in the specified managed cluster. The operation returns properties of each agent pool.|AgentPools_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/managedClusters/%{resource_name}/agentPools/%{agent_pool_name}`|Put|Creates or updates an agent pool in the specified managed cluster.|AgentPools_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/managedClusters/%{resource_name}/agentPools/%{agent_pool_name}`|Delete|Deletes the agent pool in the specified managed cluster.|AgentPools_Delete|
