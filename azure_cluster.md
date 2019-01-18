Document: "BatchAI"


Path: "/tmp/azure-rest-api-specs/specification/batchai/resource-manager/Microsoft.BatchAI/stable/2018-05-01/BatchAI.json")

## Cluster

Information about a Cluster.

```puppet
azure_cluster {
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_cluster_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  workspace_name => "workspace_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Specifies the version of API used for this request. |
|parameters | Hash | true | The parameters to provide for the Cluster creation. |
|properties | [ClusterProperties](#clusterproperties) | false | The properties associated with the Cluster. |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|subscription_id | String | true | The subscriptionID for the Azure user. |
|workspace_name | String | true | The name of the workspace. Workspace names can only contain a combination of alphanumeric characters along with dash (-) and underscore (_). The name must be from 1 through 64 characters long. |
        
## ClusterProperties

Cluster properties.

```puppet
$azure_cluster_properties = {
  errors => $azure_batch_ai_error
  nodeSetup => $azure_node_setup
  nodeStateCounts => $azure_node_state_counts
  scaleSettings => $azure_scale_settings
  subnet => $azure_resource_id
  userAccountSettings => $azure_user_account_settings
  virtualMachineConfiguration => $azure_virtual_machine_configuration
  vmPriority => "vmPriority (optional)",
  vmSize => "vmSize (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|errors | [BatchAIError](#batchaierror) | false | Collection of errors encountered by various compute nodes during node setup. |
|nodeSetup | [NodeSetup](#nodesetup) | false | Setup (mount file systems, performance counters settings and custom setup task) to be performed on each compute node in the cluster. |
|nodeStateCounts | [NodeStateCounts](#nodestatecounts) | false | Counts of various node states on the cluster. |
|scaleSettings | [ScaleSettings](#scalesettings) | false | Scale settings of the cluster. |
|subnet | [ResourceId](#resourceid) | false | Virtual network subnet resource ID the cluster nodes belong to. |
|userAccountSettings | [UserAccountSettings](#useraccountsettings) | false | Administrator user account settings which can be used to SSH to compute nodes. |
|virtualMachineConfiguration | [VirtualMachineConfiguration](#virtualmachineconfiguration) | false | Virtual machine configuration (OS image) of the compute nodes. All nodes in a cluster have the same OS image configuration. |
|vmPriority | String | false | VM priority of cluster nodes. |
|vmSize | String | false | The size of the virtual machines in the cluster. All nodes in a cluster have the same VM size. |
        
## BatchAIError

An error response from the Batch AI service.

```puppet
$azure_batch_ai_error = {
  details => $azure_name_value_pair
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|details | [NameValuePair](#namevaluepair) | false | A list of additional details about the error. |
        
## NameValuePair

Name-value pair.

```puppet
$azure_name_value_pair = {
  name => "name (optional)",
  value => "value (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | The name in the name-value pair. |
|value | String | false | The value in the name-value pair. |
        
## NodeSetup

Node setup settings.

```puppet
$azure_node_setup = {
  mountVolumes => $azure_mount_volumes
  performanceCountersSettings => $azure_performance_counters_settings
  setupTask => $azure_setup_task
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|mountVolumes | [MountVolumes](#mountvolumes) | false | Mount volumes to be available to setup task and all jobs executing on the cluster. The volumes will be mounted at location specified by $AZ_BATCHAI_MOUNT_ROOT environment variable. |
|performanceCountersSettings | [PerformanceCountersSettings](#performancecounterssettings) | false | Settings for performance counters collecting and uploading. |
|setupTask | [SetupTask](#setuptask) | false | Setup task to run on cluster nodes when nodes got created or rebooted. The setup task code needs to be idempotent. Generally the setup task is used to download static data that is required for all jobs that run on the cluster VMs and/or to download/install software. |
        
## MountVolumes

Details of volumes to mount on the cluster.

```puppet
$azure_mount_volumes = {
  azureBlobFileSystems => $azure_azure_blob_file_system_reference
  azureFileShares => $azure_azure_file_share_reference
  fileServers => $azure_file_server_reference
  unmanagedFileSystems => $azure_unmanaged_file_system_reference
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|azureBlobFileSystems | [AzureBlobFileSystemReference](#azureblobfilesystemreference) | false | A collection of Azure Blob Containers that are to be mounted to the cluster nodes. |
|azureFileShares | [AzureFileShareReference](#azurefilesharereference) | false | A collection of Azure File Shares that are to be mounted to the cluster nodes. |
|fileServers | [FileServerReference](#fileserverreference) | false | A collection of Batch AI File Servers that are to be mounted to the cluster nodes. |
|unmanagedFileSystems | [UnmanagedFileSystemReference](#unmanagedfilesystemreference) | false | A collection of unmanaged file systems that are to be mounted to the cluster nodes. |
        
## AzureBlobFileSystemReference

Azure Blob Storage Container mounting configuration.

```puppet
$azure_azure_blob_file_system_reference = {
  accountName => "accountName",
  containerName => "containerName",
  credentials => $azure_azure_storage_credentials_info
  mountOptions => "mountOptions (optional)",
  relativeMountPath => "relativeMountPath",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accountName | String | true | Name of the Azure storage account. |
|containerName | String | true | Name of the Azure Blob Storage container to mount on the cluster. |
|credentials | [AzureStorageCredentialsInfo](#azurestoragecredentialsinfo) | true | Information about the Azure storage credentials. |
|mountOptions | String | false | Mount options for mounting blobfuse file system. |
|relativeMountPath | String | true | The relative path on the compute node where the Azure File container will be mounted. Note that all cluster level containers will be mounted under $AZ_BATCHAI_MOUNT_ROOT location and all job level containers will be mounted under $AZ_BATCHAI_JOB_MOUNT_ROOT. |
        
## AzureStorageCredentialsInfo

Azure storage account credentials.

```puppet
$azure_azure_storage_credentials_info = {
  accountKey => "accountKey (optional)",
  accountKeySecretReference => $azure_key_vault_secret_reference
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accountKey | String | false | Storage account key. One of accountKey or accountKeySecretReference must be specified. |
|accountKeySecretReference | [KeyVaultSecretReference](#keyvaultsecretreference) | false | Information about KeyVault secret storing the storage account key. One of accountKey or accountKeySecretReference must be specified. |
        
## KeyVaultSecretReference

Key Vault Secret reference.

```puppet
$azure_key_vault_secret_reference = {
  secretUrl => "secretUrl",
  sourceVault => $azure_resource_id
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|secretUrl | String | true | The URL referencing a secret in the Key Vault. |
|sourceVault | [ResourceId](#resourceid) | true | Fully qualified resource identifier of the Key Vault. |
        
## ResourceId

Represents a resource ID. For example, for a subnet, it is the resource URL for the subnet.

```puppet
$azure_resource_id = {
  id => "id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | true | The ID of the resource |
        
## AzureFileShareReference

Azure File Share mounting configuration.

```puppet
$azure_azure_file_share_reference = {
  accountName => "accountName",
  azureFileUrl => "azureFileUrl",
  credentials => $azure_azure_storage_credentials_info
  directoryMode => "directoryMode (optional)",
  fileMode => "fileMode (optional)",
  relativeMountPath => "relativeMountPath",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accountName | String | true | Name of the Azure storage account. |
|azureFileUrl | String | true | URL to access the Azure File. |
|credentials | [AzureStorageCredentialsInfo](#azurestoragecredentialsinfo) | true | Information about the Azure storage credentials. |
|directoryMode | String | false | File mode for directories on the mounted file share. Default value: 0777. |
|fileMode | String | false | File mode for files on the mounted file share. Default value: 0777. |
|relativeMountPath | String | true | The relative path on the compute node where the Azure File share will be mounted. Note that all cluster level file shares will be mounted under $AZ_BATCHAI_MOUNT_ROOT location and all job level file shares will be mounted under $AZ_BATCHAI_JOB_MOUNT_ROOT. |
        
        
## FileServerReference

File Server mounting configuration.

```puppet
$azure_file_server_reference = {
  fileServer => $azure_resource_id
  mountOptions => "mountOptions (optional)",
  relativeMountPath => "relativeMountPath",
  sourceDirectory => "sourceDirectory (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|fileServer | [ResourceId](#resourceid) | true | Resource ID of the existing File Server to be mounted. |
|mountOptions | String | false | Mount options to be passed to mount command. |
|relativeMountPath | String | true | The relative path on the compute node where the File Server will be mounted. Note that all cluster level file servers will be mounted under $AZ_BATCHAI_MOUNT_ROOT location and all job level file servers will be mounted under $AZ_BATCHAI_JOB_MOUNT_ROOT. |
|sourceDirectory | String | false | File Server directory that needs to be mounted. If this property is not specified, the entire File Server will be mounted. |
        
        
## UnmanagedFileSystemReference

Unmanaged file system mounting configuration.

```puppet
$azure_unmanaged_file_system_reference = {
  mountCommand => "mountCommand",
  relativeMountPath => "relativeMountPath",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|mountCommand | String | true | Mount command line. Note, Batch AI will append mount path to the command on its own. |
|relativeMountPath | String | true | The relative path on the compute node where the unmanaged file system will be mounted. Note that all cluster level unmanaged file systems will be mounted under $AZ_BATCHAI_MOUNT_ROOT location and all job level unmanaged file systems will be mounted under $AZ_BATCHAI_JOB_MOUNT_ROOT. |
        
## PerformanceCountersSettings

Performance counters reporting settings.

```puppet
$azure_performance_counters_settings = {
  appInsightsReference => $azure_app_insights_reference
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|appInsightsReference | [AppInsightsReference](#appinsightsreference) | true | Azure Application Insights information for performance counters reporting. If provided, Batch AI will upload node performance counters to the corresponding Azure Application Insights account. |
        
## AppInsightsReference

Azure Application Insights information for performance counters reporting.

```puppet
$azure_app_insights_reference = {
  component => $azure_resource_id
  instrumentationKey => "instrumentationKey (optional)",
  instrumentationKeySecretReference => $azure_key_vault_secret_reference
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|component | [ResourceId](#resourceid) | true | Azure Application Insights component resource ID. |
|instrumentationKey | String | false | Value of the Azure Application Insights instrumentation key. |
|instrumentationKeySecretReference | [KeyVaultSecretReference](#keyvaultsecretreference) | false | KeyVault Store and Secret which contains Azure Application Insights instrumentation key. One of instrumentationKey or instrumentationKeySecretReference must be specified. |
        
        
        
## SetupTask

Specifies a setup task which can be used to customize the compute nodes of the cluster.

```puppet
$azure_setup_task = {
  commandLine => "commandLine",
  environmentVariables => $azure_environment_variable
  secrets => $azure_environment_variable_with_secret_value
  stdOutErrPathPrefix => "stdOutErrPathPrefix",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|commandLine | String | true | The command line to be executed on each cluster's node after it being allocated or rebooted. The command is executed in a bash subshell as a root. |
|environmentVariables | [EnvironmentVariable](#environmentvariable) | false | A collection of user defined environment variables to be set for setup task. |
|secrets | [EnvironmentVariableWithSecretValue](#environmentvariablewithsecretvalue) | false | A collection of user defined environment variables with secret values to be set for the setup task. Server will never report values of these variables back. |
|stdOutErrPathPrefix | String | true | The prefix of a path where the Batch AI service will upload the stdout, stderr and execution log of the setup task. |
        
## EnvironmentVariable

An environment variable definition.

```puppet
$azure_environment_variable = {
  name => "name",
  value => "value",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | The name of the environment variable. |
|value | String | true | The value of the environment variable. |
        
## EnvironmentVariableWithSecretValue

An environment variable with secret value definition.

```puppet
$azure_environment_variable_with_secret_value = {
  name => "name",
  value => "value (optional)",
  valueSecretReference => $azure_key_vault_secret_reference
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | The name of the environment variable to store the secret value. |
|value | String | false | The value of the environment variable. This value will never be reported back by Batch AI. |
|valueSecretReference | [KeyVaultSecretReference](#keyvaultsecretreference) | false | KeyVault store and secret which contains the value for the environment variable. One of value or valueSecretReference must be provided. |
        
        
## NodeStateCounts

Counts of various compute node states on the cluster.

```puppet
$azure_node_state_counts = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ScaleSettings

At least one of manual or autoScale settings must be specified. Only one of manual or autoScale settings can be specified. If autoScale settings are specified, the system automatically scales the cluster up and down (within the supplied limits) based on the pending jobs on the cluster.

```puppet
$azure_scale_settings = {
  autoScale => $azure_auto_scale_settings
  manual => $azure_manual_scale_settings
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|autoScale | [AutoScaleSettings](#autoscalesettings) | false | Auto-scale settings for the cluster. |
|manual | [ManualScaleSettings](#manualscalesettings) | false | Manual scale settings for the cluster. |
        
## AutoScaleSettings

Auto-scale settings for the cluster. The system automatically scales the cluster up and down (within minimumNodeCount and maximumNodeCount) based on the number of queued and running jobs assigned to the cluster.

```puppet
$azure_auto_scale_settings = {
  initialNodeCount => "1234 (optional)",
  maximumNodeCount => "1234",
  minimumNodeCount => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|initialNodeCount | Integer | false | The number of compute nodes to allocate on cluster creation. Note that this value is used only during cluster creation. Default: 0. |
|maximumNodeCount | Integer | true | The maximum number of compute nodes the cluster can have. |
|minimumNodeCount | Integer | true | The minimum number of compute nodes the Batch AI service will try to allocate for the cluster. Note, the actual number of nodes can be less than the specified value if the subscription has not enough quota to fulfill the request. |
        
## ManualScaleSettings

Manual scale settings for the cluster.

```puppet
$azure_manual_scale_settings = {
  nodeDeallocationOption => $azure_deallocation_option
  targetNodeCount => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|nodeDeallocationOption | [DeallocationOption](#deallocationoption) | false | An action to be performed when the cluster size is decreasing. The default value is requeue. |
|targetNodeCount | Integer | true | The desired number of compute nodes in the Cluster. Default is 0. |
        
## DeallocationOption

Actions which should be performed when compute nodes are removed from the cluster. Possible values are: requeue (default) - Terminate running jobs and requeue them so the jobs will run again. Remove compute nodes as soon as jobs have been terminated; terminate - Terminate running jobs. The jobs will not run again. Remove compute nodes as soon as jobs have been terminated. waitforjobcompletion - Allow currently running jobs to complete. Schedule no new jobs while waiting. Remove compute nodes when all jobs have completed.

```puppet
$azure_deallocation_option = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
## UserAccountSettings

Settings for user account that gets created on each on the nodes of a cluster.

```puppet
$azure_user_account_settings = {
  adminUserName => "adminUserName",
  adminUserPassword => "adminUserPassword (optional)",
  adminUserSshPublicKey => "adminUserSshPublicKey (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|adminUserName | String | true | Name of the administrator user account which can be used to SSH to nodes. |
|adminUserPassword | String | false | Password of the administrator user account. |
|adminUserSshPublicKey | String | false | SSH public key of the administrator user account. |
        
## VirtualMachineConfiguration

VM configuration.

```puppet
$azure_virtual_machine_configuration = {
  imageReference => $azure_image_reference
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|imageReference | [ImageReference](#imagereference) | false | OS image reference for cluster nodes. |
        
## ImageReference

The OS image reference.

```puppet
$azure_image_reference = {
  offer => "offer",
  publisher => "publisher",
  sku => "sku",
  version => "version (optional)",
  virtualMachineImageId => "virtualMachineImageId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|offer | String | true | Offer of the image. |
|publisher | String | true | Publisher of the image. |
|sku | String | true | SKU of the image. |
|version | String | false | Version of the image. |
|virtualMachineImageId | String | false | The ARM resource identifier of the virtual machine image for the compute nodes. This is of the form /subscriptions/{subscriptionId}/resourceGroups/{resourceGroup}/providers/Microsoft.Compute/images/{imageName}. The virtual machine image must be in the same region and subscription as the cluster. For information about the firewall settings for the Batch node agent to communicate with the Batch service see https://docs.microsoft.com/en-us/azure/batch/batch-api-basics#virtual-network-vnet-and-firewall-configuration. Note, you need to provide publisher, offer and sku of the base OS image of which the custom image has been derived from. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Cluster

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}/clusters/%{cluster_name}`|Put|Creates a Cluster in the given Workspace.|Clusters_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}/clusters/%{cluster_name}`|Get|Gets information about a Cluster.|Clusters_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}/clusters`|Get|Gets information about Clusters associated with the given Workspace.|Clusters_ListByWorkspace|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}/clusters/%{cluster_name}`|Put|Creates a Cluster in the given Workspace.|Clusters_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}/clusters/%{cluster_name}`|Delete|Deletes a Cluster.|Clusters_Delete|
