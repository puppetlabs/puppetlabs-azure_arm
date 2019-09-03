Document: "openShiftManagedClusters"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/containerservice/resource-manager/Microsoft.ContainerService/stable/2019-04-30/openShiftManagedClusters.json")

## OpenShiftManagedCluster

OpenShift Managed cluster.

```puppet
azure_open_shift_managed_cluster {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  plan => $azure_purchase_plan
  properties => $azure_open_shift_managed_cluster_properties
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|location | String | false | Resource location |
|parameters | Hash | true | Parameters supplied to the Create or Update an OpenShift Managed Cluster operation. |
|plan | [PurchasePlan](#purchaseplan) | false | Define the resource plan as required by ARM for billing purposes |
|properties | [OpenShiftManagedClusterProperties](#openshiftmanagedclusterproperties) | false | Properties of a OpenShift managed cluster. |
|resource_group_name | String | true | The name of the resource group. |
|resource_name | String | true | The name of the OpenShift managed cluster resource. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
        
## PurchasePlan

Used for establishing the purchase context of any 3rd Party artifact through MarketPlace.

```puppet
$azure_purchase_plan = {
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
|publisher | String | false | The plan ID. |
        
## OpenShiftManagedClusterProperties

Properties of the OpenShift managed cluster.

```puppet
$azure_open_shift_managed_cluster_properties = {
  agentPoolProfiles => $azure_open_shift_managed_cluster_agent_pool_profile
  authProfile => $azure_open_shift_managed_cluster_auth_profile
  masterPoolProfile => $azure_open_shift_managed_cluster_master_pool_profile
  networkProfile => $azure_network_profile
  openShiftVersion => "openShiftVersion",
  routerProfiles => $azure_open_shift_router_profile
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|agentPoolProfiles | [OpenShiftManagedClusterAgentPoolProfile](#openshiftmanagedclusteragentpoolprofile) | false | Configuration of OpenShift cluster VMs. |
|authProfile | [OpenShiftManagedClusterAuthProfile](#openshiftmanagedclusterauthprofile) | false | Configures OpenShift authentication. |
|masterPoolProfile | [OpenShiftManagedClusterMasterPoolProfile](#openshiftmanagedclustermasterpoolprofile) | false | Configuration for OpenShift master VMs. |
|networkProfile | [NetworkProfile](#networkprofile) | false | Configuration for OpenShift networking. |
|openShiftVersion | String | true | Version of OpenShift specified when creating the cluster. |
|routerProfiles | [OpenShiftRouterProfile](#openshiftrouterprofile) | false | Configuration for OpenShift router(s). |
        
## OpenShiftManagedClusterAgentPoolProfile

Defines the configuration of the OpenShift cluster VMs.

```puppet
$azure_open_shift_managed_cluster_agent_pool_profile = {
  count => "1234",
  name => "name",
  osType => $azure_os_type
  role => $azure_open_shift_agent_pool_profile_role
  subnetCidr => "subnetCidr (optional)",
  vmSize => $azure_open_shift_container_service_vm_size
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|count | Integer | true | Number of agents (VMs) to host docker containers. |
|name | String | true | Unique name of the pool profile in the context of the subscription and resource group. |
|osType | [OSType](#ostype) | false | OsType to be used to specify os type. Choose from Linux and Windows. Default to Linux. |
|role | [OpenShiftAgentPoolProfileRole](#openshiftagentpoolprofilerole) | false | Define the role of the AgentPoolProfile. |
|subnetCidr | String | false | Subnet CIDR for the peering. |
|vmSize | [OpenShiftContainerServiceVMSize](#openshiftcontainerservicevmsize) | true | Size of agent VMs. |
        
## OSType

OsType to be used to specify os type. Choose from Linux and Windows. Default to Linux.

```puppet
$azure_os_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## OpenShiftAgentPoolProfileRole

OpenShiftAgentPoolProfileRole represents the role of the AgentPoolProfile.

```puppet
$azure_open_shift_agent_pool_profile_role = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## OpenShiftContainerServiceVMSize

Size of OpenShift VMs.

```puppet
$azure_open_shift_container_service_vm_size = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## OpenShiftManagedClusterAuthProfile

Defines all possible authentication profiles for the OpenShift cluster.

```puppet
$azure_open_shift_managed_cluster_auth_profile = {
  identityProviders => $azure_open_shift_managed_cluster_identity_provider
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|identityProviders | [OpenShiftManagedClusterIdentityProvider](#openshiftmanagedclusteridentityprovider) | false | Type of authentication profile to use. |
        
## OpenShiftManagedClusterIdentityProvider

Defines the configuration of the identity providers to be used in the OpenShift cluster.

```puppet
$azure_open_shift_managed_cluster_identity_provider = {
  name => "name (optional)",
  provider => $azure_open_shift_managed_cluster_base_identity_provider
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | Name of the provider. |
|provider | [OpenShiftManagedClusterBaseIdentityProvider](#openshiftmanagedclusterbaseidentityprovider) | false | Configuration of the provider. |
        
## OpenShiftManagedClusterBaseIdentityProvider

Structure for any Identity provider.

```puppet
$azure_open_shift_managed_cluster_base_identity_provider = {
  kind => "kind",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|kind | String | true | The kind of the provider. |
        
## OpenShiftManagedClusterMasterPoolProfile

OpenShiftManagedClusterMaterPoolProfile contains configuration for OpenShift master VMs.

```puppet
$azure_open_shift_managed_cluster_master_pool_profile = {
  count => "1234",
  name => "name (optional)",
  osType => $azure_os_type
  subnetCidr => "subnetCidr (optional)",
  vmSize => $azure_open_shift_container_service_vm_size
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|count | Integer | true | Number of masters (VMs) to host docker containers. The default value is 3. |
|name | String | false | Unique name of the master pool profile in the context of the subscription and resource group. |
|osType | [OSType](#ostype) | false | OsType to be used to specify os type. Choose from Linux and Windows. Default to Linux. |
|subnetCidr | String | false | Subnet CIDR for the peering. |
|vmSize | [OpenShiftContainerServiceVMSize](#openshiftcontainerservicevmsize) | true | Size of agent VMs. |
        
        
        
## NetworkProfile

Represents the OpenShift networking configuration

```puppet
$azure_network_profile = {
  peerVnetId => "peerVnetId (optional)",
  vnetCidr => "vnetCidr (optional)",
  vnetId => "vnetId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|peerVnetId | String | false | CIDR of the Vnet to peer. |
|vnetCidr | String | false | CIDR for the OpenShift Vnet. |
|vnetId | String | false | ID of the Vnet created for OSA cluster. |
        
## OpenShiftRouterProfile

Represents an OpenShift router

```puppet
$azure_open_shift_router_profile = {
  name => "name (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | Name of the router profile. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the OpenShiftManagedCluster

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/openShiftManagedClusters/%{resource_name}`|Put|Creates or updates a OpenShift managed cluster with the specified configuration for agents and OpenShift version.|OpenShiftManagedClusters_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.ContainerService/openShiftManagedClusters`|Get|Gets a list of OpenShift managed clusters in the specified subscription. The operation returns properties of each OpenShift managed cluster.|OpenShiftManagedClusters_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/openShiftManagedClusters/%{resource_name}`|Get|Gets the details of the managed OpenShift cluster with a specified resource group and name.|OpenShiftManagedClusters_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/openShiftManagedClusters`|Get|Lists OpenShift managed clusters in the specified subscription and resource group. The operation returns properties of each OpenShift managed cluster.|OpenShiftManagedClusters_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/openShiftManagedClusters/%{resource_name}`|Put|Creates or updates a OpenShift managed cluster with the specified configuration for agents and OpenShift version.|OpenShiftManagedClusters_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/openShiftManagedClusters/%{resource_name}`|Delete|Deletes the OpenShift managed cluster with a specified resource group and name.|OpenShiftManagedClusters_Delete|
