Document: "managedClusters"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/containerservices/resource-manager/Microsoft.ContainerService/stable/2018-03-31/managedClusters.json")

## ManagedCluster

Managed cluster.

```puppet
azure_managed_cluster {
  api_version => "api_version",
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
|location | String | false | Resource location |
|parameters | Hash | true | Parameters supplied to the Create or Update a Managed Cluster operation. |
|properties | [ManagedClusterProperties](#managedclusterproperties) | false | Properties of a managed cluster. |
|resource_group_name | String | true | The name of the resource group. |
|resource_name | String | true | The name of the managed cluster resource. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
        
## ManagedClusterProperties

Properties of the managed cluster.

```puppet
$azure_managed_cluster_properties = {
  aadProfile => $azure_managed_cluster_aad_profile
  addonProfiles => "addonProfiles (optional)",
  agentPoolProfiles => $azure_managed_cluster_agent_pool_profile
  dnsPrefix => "dnsPrefix (optional)",
  enableRBAC => "enableRBAC (optional)",
  kubernetesVersion => "kubernetesVersion (optional)",
  linuxProfile => $azure_container_service_linux_profile
  networkProfile => $azure_container_service_network_profile
  servicePrincipalProfile => $azure_container_service_service_principal_profile
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|aadProfile | [ManagedClusterAADProfile](#managedclusteraadprofile) | false | Profile of Azure Active Directory configuration. |
|addonProfiles | String | false | Profile of managed cluster add-on. |
|agentPoolProfiles | [ManagedClusterAgentPoolProfile](#managedclusteragentpoolprofile) | false | Properties of the agent pool. |
|dnsPrefix | String | false | DNS prefix specified when creating the managed cluster. |
|enableRBAC | Boolean | false | Whether to enable Kubernetes Role-Based Access Control. |
|kubernetesVersion | String | false | Version of Kubernetes specified when creating the managed cluster. |
|linuxProfile | [ContainerServiceLinuxProfile](#containerservicelinuxprofile) | false | Profile for Linux VMs in the container service cluster. |
|networkProfile | [ContainerServiceNetworkProfile](#containerservicenetworkprofile) | false | Profile of network configuration. |
|servicePrincipalProfile | [ContainerServiceServicePrincipalProfile](#containerserviceserviceprincipalprofile) | false | Information about a service principal identity for the cluster to use for manipulating Azure APIs. Either secret or keyVaultSecretRef must be specified. |
        
## ManagedClusterAADProfile

AADProfile specifies attributes for Azure Active Directory integration.

```puppet
$azure_managed_cluster_aad_profile = {
  clientAppID => "clientAppID",
  serverAppID => "serverAppID",
  serverAppSecret => "serverAppSecret",
  tenantID => "tenantID (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|clientAppID | String | true | The client AAD application ID. |
|serverAppID | String | true | The server AAD application ID. |
|serverAppSecret | String | true | The server AAD application secret. |
|tenantID | String | false | The AAD tenant ID to use for authentication. If not specified, will use the tenant of the deployment subscription. |
        
## ManagedClusterAgentPoolProfile

Profile for the container service agent pool.

```puppet
$azure_managed_cluster_agent_pool_profile = {
  count => "1234 (optional)",
  dnsPrefix => "dnsPrefix (optional)",
  maxPods => "1234 (optional)",
  name => "name",
  osDiskSizeGB => $azure_container_service_os_disk
  osType => $azure_os_type
  ports => "ports (optional)",
  storageProfile => $azure_container_service_storage_profile
  vmSize => $azure_container_service_vm_size
  vnetSubnetID => $azure_container_service_vnet_subnet_id
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|count | Integer | false | Number of agents (VMs) to host docker containers. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 1.  |
|dnsPrefix | String | false | DNS prefix to be used to create the FQDN for the agent pool. |
|maxPods | Integer | false | Maximum number of pods that can run on a node. |
|name | String | true | Unique name of the agent pool profile in the context of the subscription and resource group. |
|osDiskSizeGB | [ContainerServiceOSDisk](#containerserviceosdisk) | false | OS Disk Size in GB to be used to specify the disk size for every machine in this master/agent pool. If you specify 0, it will apply the default osDisk size according to the vmSize specified. |
|osType | [OSType](#ostype) | false | OsType to be used to specify os type. Choose from Linux and Windows. Default to Linux. |
|ports | Array | false | Ports number array used to expose on this agent pool. The default opened ports are different based on your choice of orchestrator. |
|storageProfile | [ContainerServiceStorageProfile](#containerservicestorageprofile) | false | Storage profile specifies what kind of storage used. Choose from StorageAccount and ManagedDisks. Leave it empty, we will choose for you based on the orchestrator choice. |
|vmSize | [ContainerServiceVMSize](#containerservicevmsize) | true | Size of agent VMs. |
|vnetSubnetID | [ContainerServiceVnetSubnetID](#containerservicevnetsubnetid) | false | VNet SubnetID specifies the vnet's subnet identifier. |
        
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
        
## ContainerServiceStorageProfile

Storage profile specifies what kind of storage used. Choose from StorageAccount and ManagedDisks. Leave it empty, we will choose for you based on the orchestrator choice.

```puppet
$azure_container_service_storage_profile = {
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

VNet SubnetID specifies the vnet's subnet identifier.

```puppet
$azure_container_service_vnet_subnet_id = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
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
|networkPlugin | String | false | Network plugin used for building Kubernetes network. |
|networkPolicy | String | false | Network policy used for building Kubernetes network. |
|podCidr | String | false | A CIDR notation IP range from which to assign pod IPs when kubenet is used. |
|serviceCidr | String | false | A CIDR notation IP range from which to assign service cluster IPs. It must not overlap with any Subnet IP ranges. |
        
## ContainerServiceServicePrincipalProfile

Information about a service principal identity for the cluster to use for manipulating Azure APIs. Either secret or keyVaultSecretRef must be specified.

```puppet
$azure_container_service_service_principal_profile = {
  clientId => "clientId",
  keyVaultSecretRef => $azure_key_vault_secret_ref
  secret => "secret (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|clientId | String | true | The ID for the service principal. |
|keyVaultSecretRef | [KeyVaultSecretRef](#keyvaultsecretref) | false | Reference to a secret stored in Azure Key Vault. |
|secret | String | false | The secret password associated with the service principal in plain text. |
        
## KeyVaultSecretRef

Reference to a secret stored in Azure Key Vault.

```puppet
$azure_key_vault_secret_ref = {
  secretName => "secretName",
  vaultID => "vaultID",
  version => "version (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|secretName | String | true | The secret name. |
|vaultID | String | true | Key vault identifier. |
|version | String | false | The secret version. |



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
