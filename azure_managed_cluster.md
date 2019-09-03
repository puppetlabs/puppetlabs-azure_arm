Document: "managedClusters"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/containerservice/resource-manager/Microsoft.ContainerService/stable/2019-08-01/managedClusters.json")

## ManagedCluster

Managed cluster.

```puppet
azure_managed_cluster {
  api_version => "api_version",
  identity => $azure_managed_cluster_identity
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_managed_cluster_properties
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|identity | [ManagedClusterIdentity](#managedclusteridentity) | false | The identity of the managed cluster, if configured. |
|location | String | false | Resource location |
|parameters | Hash | true | Parameters supplied to the Create or Update a Managed Cluster operation. |
|properties | [ManagedClusterProperties](#managedclusterproperties) | false | Properties of a managed cluster. |
|resource_group_name | String | true | The name of the resource group. |
|resource_name | String | true | The name of the managed cluster resource. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
        
## ManagedClusterIdentity

Identity for the managed cluster.

```puppet
$azure_managed_cluster_identity = {
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|type | String | false | The type of identity used for the managed cluster. Type 'SystemAssigned' will use an implicitly created identity in master components and an auto-created user assigned identity in MC_ resource group in agent nodes. Type 'None' will not use MSI for the managed cluster, service principal will be used instead. |
        
## ManagedClusterProperties

Properties of the managed cluster.

```puppet
$azure_managed_cluster_properties = {
  aadProfile => $azure_managed_cluster_aad_profile
  addonProfiles => "addonProfiles (optional)",
  agentPoolProfiles => $azure_managed_cluster_agent_pool_profile
  apiServerAccessProfile => $azure_managed_cluster_api_server_access_profile
  dnsPrefix => "dnsPrefix (optional)",
  enablePodSecurityPolicy => "enablePodSecurityPolicy (optional)",
  enableRBAC => "enableRBAC (optional)",
  kubernetesVersion => "kubernetesVersion (optional)",
  linuxProfile => $azure_container_service_linux_profile
  networkProfile => $azure_container_service_network_profile
  nodeResourceGroup => "nodeResourceGroup (optional)",
  servicePrincipalProfile => $azure_managed_cluster_service_principal_profile
  windowsProfile => $azure_managed_cluster_windows_profile
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|aadProfile | [ManagedClusterAADProfile](#managedclusteraadprofile) | false | Profile of Azure Active Directory configuration. |
|addonProfiles | String | false | Profile of managed cluster add-on. |
|agentPoolProfiles | [ManagedClusterAgentPoolProfile](#managedclusteragentpoolprofile) | false | Properties of the agent pool. |
|apiServerAccessProfile | [ManagedClusterAPIServerAccessProfile](#managedclusterapiserveraccessprofile) | false | Access profile for managed cluster API server. |
|dnsPrefix | String | false | DNS prefix specified when creating the managed cluster. |
|enablePodSecurityPolicy | Boolean | false | (PREVIEW) Whether to enable Kubernetes Pod security policy. |
|enableRBAC | Boolean | false | Whether to enable Kubernetes Role-Based Access Control. |
|kubernetesVersion | String | false | Version of Kubernetes specified when creating the managed cluster. |
|linuxProfile | [ContainerServiceLinuxProfile](#containerservicelinuxprofile) | false | Profile for Linux VMs in the container service cluster. |
|networkProfile | [ContainerServiceNetworkProfile](#containerservicenetworkprofile) | false | Profile of network configuration. |
|nodeResourceGroup | String | false | Name of the resource group containing agent pool nodes. |
|servicePrincipalProfile | [ManagedClusterServicePrincipalProfile](#managedclusterserviceprincipalprofile) | false | Information about a service principal identity for the cluster to use for manipulating Azure APIs. |
|windowsProfile | [ManagedClusterWindowsProfile](#managedclusterwindowsprofile) | false | Profile for Windows VMs in the container service cluster. |
        
## ManagedClusterAADProfile

AADProfile specifies attributes for Azure Active Directory integration.

```puppet
$azure_managed_cluster_aad_profile = {
  clientAppID => "clientAppID",
  serverAppID => "serverAppID",
  serverAppSecret => "serverAppSecret (optional)",
  tenantID => "tenantID (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|clientAppID | String | true | The client AAD application ID. |
|serverAppID | String | true | The server AAD application ID. |
|serverAppSecret | String | false | The server AAD application secret. |
|tenantID | String | false | The AAD tenant ID to use for authentication. If not specified, will use the tenant of the deployment subscription. |
        
## ManagedClusterAgentPoolProfile

Profile for the container service agent pool.

```puppet
$azure_managed_cluster_agent_pool_profile = {
  availabilityZones => "availabilityZones (optional)",
  count => "1234 (optional)",
  enableAutoScaling => "enableAutoScaling (optional)",
  enableNodePublicIP => "enableNodePublicIP (optional)",
  maxCount => "1234 (optional)",
  maxPods => "1234 (optional)",
  minCount => "1234 (optional)",
  name => "name (optional)",
  nodeTaints => "nodeTaints (optional)",
  orchestratorVersion => "orchestratorVersion (optional)",
  osDiskSizeGB => "osDiskSizeGB (optional)",
  osType => "osType (optional)",
  scaleSetEvictionPolicy => "scaleSetEvictionPolicy (optional)",
  scaleSetPriority => "scaleSetPriority (optional)",
  type => "type (optional)",
  vmSize => "vmSize (optional)",
  vnetSubnetID => "vnetSubnetID (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|availabilityZones | Array | false | (PREVIEW) Availability zones for nodes. Must use VirtualMachineScaleSets AgentPoolType. |
|count | Integer | false | Number of agents (VMs) to host docker containers. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 1.  |
|enableAutoScaling | Boolean | false | Whether to enable auto-scaler |
|enableNodePublicIP | Boolean | false | Enable public IP for nodes |
|maxCount | Integer | false | Maximum number of nodes for auto-scaling |
|maxPods | Integer | false | Maximum number of pods that can run on a node. |
|minCount | Integer | false | Minimum number of nodes for auto-scaling |
|name | String | false | Unique name of the agent pool profile in the context of the subscription and resource group. |
|nodeTaints | Array | false | Taints added to new nodes during node pool create and scale. For example, key=value:NoSchedule. |
|orchestratorVersion | String | false | Version of orchestrator specified when creating the managed cluster. |
|osDiskSizeGB | String | false | OS Disk Size in GB to be used to specify the disk size for every machine in this master/agent pool. If you specify 0, it will apply the default osDisk size according to the vmSize specified. |
|osType | String | false | OsType to be used to specify os type. Choose from Linux and Windows. Default to Linux. |
|scaleSetEvictionPolicy | String | false | ScaleSetEvictionPolicy to be used to specify eviction policy for low priority virtual machine scale set. Default to Delete. |
|scaleSetPriority | String | false | ScaleSetPriority to be used to specify virtual machine scale set priority. Default to regular. |
|type | String | false | AgentPoolType represents types of an agent pool |
|vmSize | String | false | Size of agent VMs. |
|vnetSubnetID | String | false | VNet SubnetID specifies the VNet's subnet identifier. |
        
## ManagedClusterAPIServerAccessProfile

Access profile for managed cluster API server.

```puppet
$azure_managed_cluster_api_server_access_profile = {
  authorizedIPRanges => "authorizedIPRanges (optional)",
  enablePrivateCluster => "enablePrivateCluster (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|authorizedIPRanges | Array | false | Authorized IP Ranges to kubernetes API server. |
|enablePrivateCluster | Boolean | false | Whether to create the cluster as a private cluster or not. |
        
## ContainerServiceLinuxProfile

Profile for Linux VMs in the container service cluster.

```puppet
$azure_container_service_linux_profile = {
  adminUsername => "adminUsername",
  ssh => $azure_container_service_ssh_configuration
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|adminUsername | String | true | The administrator username to use for Linux VMs. |
|ssh | [ContainerServiceSshConfiguration](#containerservicesshconfiguration) | true | SSH configuration for Linux-based VMs running on Azure. |
        
## ContainerServiceSshConfiguration

SSH configuration for Linux-based VMs running on Azure.

```puppet
$azure_container_service_ssh_configuration = {
  publicKeys => $azure_container_service_ssh_public_key
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|publicKeys | [ContainerServiceSshPublicKey](#containerservicesshpublickey) | true | The list of SSH public keys used to authenticate with Linux-based VMs. Only expect one key specified. |
        
## ContainerServiceSshPublicKey

Contains information about SSH certificate public key data.

```puppet
$azure_container_service_ssh_public_key = {
  keyData => "keyData",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|keyData | String | true | Certificate public key used to authenticate with VMs through SSH. The certificate must be in PEM format with or without headers. |
        
## ContainerServiceNetworkProfile

Profile of network configuration.

```puppet
$azure_container_service_network_profile = {
  dnsServiceIP => "dnsServiceIP (optional)",
  dockerBridgeCidr => "dockerBridgeCidr (optional)",
  loadBalancerProfile => $azure_managed_cluster_load_balancer_profile
  loadBalancerSku => "loadBalancerSku (optional)",
  networkPlugin => "networkPlugin (optional)",
  networkPolicy => "networkPolicy (optional)",
  podCidr => "podCidr (optional)",
  serviceCidr => "serviceCidr (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dnsServiceIP | String | false | An IP address assigned to the Kubernetes DNS service. It must be within the Kubernetes service address range specified in serviceCidr. |
|dockerBridgeCidr | String | false | A CIDR notation IP range assigned to the Docker bridge network. It must not overlap with any Subnet IP ranges or the Kubernetes service address range. |
|loadBalancerProfile | [ManagedClusterLoadBalancerProfile](#managedclusterloadbalancerprofile) | false | Profile of the cluster load balancer. |
|loadBalancerSku | String | false | The load balancer sku for the managed cluster. |
|networkPlugin | String | false | Network plugin used for building Kubernetes network. |
|networkPolicy | String | false | Network policy used for building Kubernetes network. |
|podCidr | String | false | A CIDR notation IP range from which to assign pod IPs when kubenet is used. |
|serviceCidr | String | false | A CIDR notation IP range from which to assign service cluster IPs. It must not overlap with any Subnet IP ranges. |
        
## ManagedClusterLoadBalancerProfile

Profile of the managed cluster load balancer

```puppet
$azure_managed_cluster_load_balancer_profile = {
  effectiveOutboundIPs => $azure_resource_reference
  managedOutboundIPs => "managedOutboundIPs (optional)",
  outboundIPPrefixes => "outboundIPPrefixes (optional)",
  outboundIPs => "outboundIPs (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|effectiveOutboundIPs | [ResourceReference](#resourcereference) | false | The effective outbound IP resources of the cluster load balancer. |
|managedOutboundIPs | String | false | Desired managed outbound IPs for the cluster load balancer. |
|outboundIPPrefixes | String | false | Desired outbound IP Prefix resources for the cluster load balancer. |
|outboundIPs | String | false | Desired outbound IP resources for the cluster load balancer. |
        
## ResourceReference

A reference to an Azure resource.

```puppet
$azure_resource_reference = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | The fully qualified Azure resource id. |
        
## ManagedClusterServicePrincipalProfile

Information about a service principal identity for the cluster to use for manipulating Azure APIs.

```puppet
$azure_managed_cluster_service_principal_profile = {
  clientId => "clientId",
  secret => "secret (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|clientId | String | true | The ID for the service principal. |
|secret | String | false | The secret password associated with the service principal in plain text. |
        
## ManagedClusterWindowsProfile

Profile for Windows VMs in the container service cluster.

```puppet
$azure_managed_cluster_windows_profile = {
  adminPassword => "adminPassword (optional)",
  adminUsername => "adminUsername",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|adminPassword | String | false | The administrator password to use for Windows VMs. |
|adminUsername | String | true | The administrator username to use for Windows VMs. |



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
