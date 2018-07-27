Document: "containerService"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/compute/resource-manager/Microsoft.ContainerService/stable/2017-01-31/containerService.json")

## ContainerService

Container service.

```puppet
azure_container_service {
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
|properties | [ContainerServiceProperties](#containerserviceproperties) | false |  |
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
|agentPoolProfiles | [ContainerServiceAgentPoolProfile](#containerserviceagentpoolprofile) | true | Properties of the agent pool. |
|customProfile | [ContainerServiceCustomProfile](#containerservicecustomprofile) | false | Properties for custom clusters. |
|diagnosticsProfile | [ContainerServiceDiagnosticsProfile](#containerservicediagnosticsprofile) | false | Properties of the diagnostic agent. |
|linuxProfile | [ContainerServiceLinuxProfile](#containerservicelinuxprofile) | true | Properties of Linux VMs. |
|masterProfile | [ContainerServiceMasterProfile](#containerservicemasterprofile) | true | Properties of master agents. |
|orchestratorProfile | [ContainerServiceOrchestratorProfile](#containerserviceorchestratorprofile) | false | Properties of the orchestrator. |
|servicePrincipalProfile | [ContainerServiceServicePrincipalProfile](#containerserviceserviceprincipalprofile) | false | Properties for cluster service principals. |
|windowsProfile | [ContainerServiceWindowsProfile](#containerservicewindowsprofile) | false | Properties of Windows VMs. |
        
## ContainerServiceAgentPoolProfile

Profile for the container service agent pool.

```puppet
$azure_container_service_agent_pool_profile = {
  count => "1234",
  dnsPrefix => "dnsPrefix",
  name => "name",
  vmSize => "vmSize",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|count | Integer | true | Number of agents (VMs) to host docker containers. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 1.  |
|dnsPrefix | String | true | DNS prefix to be used to create the FQDN for the agent pool. |
|name | String | true | Unique name of the agent pool profile in the context of the subscription and resource group. |
|vmSize | String | true | Size of agent VMs. |
        
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



```puppet
$azure_container_service_diagnostics_profile = {
  vmDiagnostics => $azure_container_service_vm_diagnostics
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|vmDiagnostics | [ContainerServiceVMDiagnostics](#containerservicevmdiagnostics) | true | Profile for the container service VM diagnostic agent. |
        
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
|ssh | [ContainerServiceSshConfiguration](#containerservicesshconfiguration) | true | The ssh key configuration for Linux VMs. |
        
## ContainerServiceSshConfiguration

SSH configuration for Linux-based VMs running on Azure.

```puppet
$azure_container_service_ssh_configuration = {
  publicKeys => $azure_container_service_ssh_public_key
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|publicKeys | [ContainerServiceSshPublicKey](#containerservicesshpublickey) | true | the list of SSH public keys used to authenticate with Linux-based VMs. |
        
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
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|count | Integer | false | Number of masters (VMs) in the container service cluster. Allowed values are 1, 3, and 5. The default value is 1. |
|dnsPrefix | String | true | DNS prefix to be used to create the FQDN for master. |
        
## ContainerServiceOrchestratorProfile

Profile for the container service orchestrator.

```puppet
$azure_container_service_orchestrator_profile = {
  orchestratorType => "orchestratorType",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|orchestratorType | String | true | The orchestrator to use to manage container service cluster resources. Valid values are Swarm, DCOS, and Custom. |
        
## ContainerServiceServicePrincipalProfile

Information about a service principal identity for the cluster to use for manipulating Azure APIs.

```puppet
$azure_container_service_service_principal_profile = {
  clientId => "clientId",
  secret => "secret",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|clientId | String | true | The ID for the service principal. |
|secret | String | true | The secret password associated with the service principal. |
        
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
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.ContainerService/containerServices`|Get|Gets a list of container services in the specified subscription. The operation returns properties of each container service including state, orchestrator, number of masters and agents, and FQDNs of masters and agents.|ContainerServices_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/containerServices/%{container_service_name}`|Put|Creates or updates a container service with the specified configuration of orchestrator, masters, and agents.|ContainerServices_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/containerServices/%{container_service_name}`|Delete|Deletes the specified container service in the specified subscription and resource group. The operation does not delete other resources created as part of creating a container service, including storage accounts, VMs, and availability sets. All the other resources created with the container service are part of the same resource group and can be deleted individually.|ContainerServices_Delete|
