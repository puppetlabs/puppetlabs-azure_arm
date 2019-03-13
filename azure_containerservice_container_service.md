Document: "containerService"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/containerservices/resource-manager/Microsoft.ContainerService/stable/2017-07-01/containerService.json")

## ContainerService

Container service.

```puppet
azure_containerservice_container_service {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_container_service_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|location | String | false | Resource location |
|parameters | Hash | true | Parameters supplied to the Create or Update a Container Service operation. |
|properties | [ContainerServiceProperties](#containerserviceproperties) | false | Properties of the container service. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
        
## ContainerServiceProperties

Properties of the container service.

```puppet
$azure_container_service_properties = {
  agentPoolProfiles => $azure_container_service_agent_pool_profile
  customProfile => $azure_container_service_custom_profile
  diagnosticsProfile => $azure_container_service_diagnostics_profile
  linuxProfile => $azure_container_service_linux_profile
  masterProfile => $azure_container_service_master_profile
  orchestratorProfile => $azure_container_service_orchestrator_profile
  servicePrincipalProfile => $azure_container_service_service_principal_profile
  windowsProfile => $azure_container_service_windows_profile
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|agentPoolProfiles | [ContainerServiceAgentPoolProfile](#containerserviceagentpoolprofile) | false | Properties of the agent pool. |
|customProfile | [ContainerServiceCustomProfile](#containerservicecustomprofile) | false | Properties to configure a custom container service cluster. |
|diagnosticsProfile | [ContainerServiceDiagnosticsProfile](#containerservicediagnosticsprofile) | false | Profile for diagnostics in the container service cluster. |
|linuxProfile | [ContainerServiceLinuxProfile](#containerservicelinuxprofile) | true | Profile for Linux VMs in the container service cluster. |
|masterProfile | [ContainerServiceMasterProfile](#containerservicemasterprofile) | true | Profile for the container service master. |
|orchestratorProfile | [ContainerServiceOrchestratorProfile](#containerserviceorchestratorprofile) | true | Profile for the container service orchestrator. |
|servicePrincipalProfile | [ContainerServiceServicePrincipalProfile](#containerserviceserviceprincipalprofile) | false | Information about a service principal identity for the cluster to use for manipulating Azure APIs. Exact one of secret or keyVaultSecretRef need to be specified. |
|windowsProfile | [ContainerServiceWindowsProfile](#containerservicewindowsprofile) | false | Profile for Windows VMs in the container service cluster. |
        
## ContainerServiceAgentPoolProfile

Profile for the container service agent pool.

```puppet
$azure_container_service_agent_pool_profile = {
  count => "1234 (optional)",
  dnsPrefix => "dnsPrefix (optional)",
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
|name | String | true | Unique name of the agent pool profile in the context of the subscription and resource group. |
|osDiskSizeGB | [ContainerServiceOSDisk](#containerserviceosdisk) | false | OS Disk Size in GB to be used to specify the disk size for every machine in this master/agent pool. If you specify 0, it will apply the default osDisk size according to the vmSize specified. |
|osType | [OSType](#ostype) | false | OsType to be used to specify os type. Choose from Linux and Windows. Default to Linux. |
|ports | Array | false | Ports number array used to expose on this agent pool. The default opened ports are different based on your choice of orchestrator. |
|storageProfile | [ContainerServiceStorageProfile](#containerservicestorageprofile) | false | Storage profile specifies what kind of storage used. Choose from StorageAccount and ManagedDisks. Leave it empty, we will choose for you based on the orchestrator choice. |
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

VNet SubnetID specifies the VNet's subnet identifier.

```puppet
$azure_container_service_vnet_subnet_id = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ContainerServiceCustomProfile

Properties to configure a custom container service cluster.

```puppet
$azure_container_service_custom_profile = {
  orchestrator => "orchestrator",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|orchestrator | String | true | The name of the custom orchestrator to use. |
        
## ContainerServiceDiagnosticsProfile

Profile for diagnostics on the container service cluster.

```puppet
$azure_container_service_diagnostics_profile = {
  vmDiagnostics => $azure_container_service_vm_diagnostics
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|vmDiagnostics | [ContainerServiceVMDiagnostics](#containerservicevmdiagnostics) | true | Profile for diagnostics on the container service VMs. |
        
## ContainerServiceVMDiagnostics

Profile for diagnostics on the container service VMs.

```puppet
$azure_container_service_vm_diagnostics = {
  enabled => "enabled",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|enabled | Boolean | true | Whether the VM diagnostic agent is provisioned on the VM. |
        
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
        
## ContainerServiceMasterProfile

Profile for the container service master.

```puppet
$azure_container_service_master_profile = {
  count => "1234 (optional)",
  dnsPrefix => "dnsPrefix",
  firstConsecutiveStaticIP => "firstConsecutiveStaticIP (optional)",
  osDiskSizeGB => $azure_container_service_os_disk
  storageProfile => $azure_container_service_storage_profile
  vmSize => $azure_container_service_vm_size
  vnetSubnetID => $azure_container_service_vnet_subnet_id
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|count | Integer | false | Number of masters (VMs) in the container service cluster. Allowed values are 1, 3, and 5. The default value is 1. |
|dnsPrefix | String | true | DNS prefix to be used to create the FQDN for the master pool. |
|firstConsecutiveStaticIP | String | false | FirstConsecutiveStaticIP used to specify the first static ip of masters. |
|osDiskSizeGB | [ContainerServiceOSDisk](#containerserviceosdisk) | false | OS Disk Size in GB to be used to specify the disk size for every machine in this master/agent pool. If you specify 0, it will apply the default osDisk size according to the vmSize specified. |
|storageProfile | [ContainerServiceStorageProfile](#containerservicestorageprofile) | false | Storage profile specifies what kind of storage used. Choose from StorageAccount and ManagedDisks. Leave it empty, we will choose for you based on the orchestrator choice. |
|vmSize | [ContainerServiceVMSize](#containerservicevmsize) | true | Size of agent VMs. |
|vnetSubnetID | [ContainerServiceVnetSubnetID](#containerservicevnetsubnetid) | false | VNet SubnetID specifies the VNet's subnet identifier. |
        
        
        
        
        
## ContainerServiceOrchestratorProfile

Profile for the container service orchestrator.

```puppet
$azure_container_service_orchestrator_profile = {
  orchestratorType => "orchestratorType",
  orchestratorVersion => "orchestratorVersion (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|orchestratorType | String | true | The orchestrator to use to manage container service cluster resources. Valid values are Kubernetes, Swarm, DCOS, DockerCE and Custom. |
|orchestratorVersion | String | false | The version of the orchestrator to use. You can specify the major.minor.patch part of the actual version.For example, you can specify version as '1.6.11'. |
        
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
        
## ContainerServiceWindowsProfile

Profile for Windows VMs in the container service cluster.

```puppet
$azure_container_service_windows_profile = {
  adminPassword => "adminPassword",
  adminUsername => "adminUsername",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|adminPassword | String | true | The administrator password to use for Windows VMs. |
|adminUsername | String | true | The administrator username to use for Windows VMs. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ContainerService

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/containerServices/%{container_service_name}`|Put|Creates or updates a container service with the specified configuration of orchestrator, masters, and agents.|ContainerServices_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.ContainerService/containerServices`|Get|Gets a list of container services in the specified subscription. The operation returns properties of each container service including state, orchestrator, number of masters and agents, and FQDNs of masters and agents.|ContainerServices_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/containerServices/%{container_service_name}`|Get|Gets the properties of the specified container service in the specified subscription and resource group. The operation returns the properties including state, orchestrator, number of masters and agents, and FQDNs of masters and agents. |ContainerServices_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/containerServices`|Get|Gets a list of container services in the specified subscription and resource group. The operation returns properties of each container service including state, orchestrator, number of masters and agents, and FQDNs of masters and agents.|ContainerServices_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/containerServices/%{container_service_name}`|Put|Creates or updates a container service with the specified configuration of orchestrator, masters, and agents.|ContainerServices_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/containerServices/%{container_service_name}`|Delete|Deletes the specified container service in the specified subscription and resource group. The operation does not delete other resources created as part of creating a container service, including storage accounts, VMs, and availability sets. All the other resources created with the container service are part of the same resource group and can be deleted individually.|ContainerServices_Delete|
