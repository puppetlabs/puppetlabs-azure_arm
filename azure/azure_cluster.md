Document: "BatchAI"
Path: "/root/specs/specification/batchai/resource-manager/Microsoft.BatchAI/stable/2018-03-01/BatchAI.json")

## Cluster

```puppet
azure_cluster {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_cluster_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Specifies the version of API used for this request. |
|id | String | false | The ID of the resource |
|location | String | false | The location of the resource |
|name | String | false | The name of the resource |
|parameters | Hash | true | The parameters to provide for cluster creation. |
|properties | [ClusterProperties](#clusterproperties) | false | The properties associated with the Cluster. |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|subscription_id | String | true | The subscriptionID for the Azure user. |
|tags | Hash | false | The tags of the resource |
|type | String | false | The type of the resource |
        
## ClusterProperties

```puppet
$azure_cluster_properties = {
  allocationState => "allocationState (optional)",
  allocationStateTransitionTime => "allocationStateTransitionTime (optional)",
  creationTime => "creationTime (optional)",
  currentNodeCount => "1234 (optional)",
  errors => $azure_batch_ai_error
  nodeSetup => $azure_node_setup
  nodeStateCounts => $azure_node_state_counts
  provisioningState => "provisioningState (optional)",
  provisioningStateTransitionTime => "provisioningStateTransitionTime (optional)",
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
|allocationState | String | false | Possible values are: steady and resizing. steady state indicates that the cluster is not resizing. There are no changes to the number of compute nodes in the cluster in progress. A cluster enters this state when it is created and when no operations are being performed on the cluster to change the number of compute nodes. resizing state indicates that the cluster is resizing; that is, compute nodes are being added to or removed from the cluster. |
|allocationStateTransitionTime | String | false |  |
|creationTime | String | false |  |
|currentNodeCount | Integer | false |  |
|errors | [BatchAIError](#batchaierror) | false | This element contains all the errors encountered by various compute nodes during node setup. |
|nodeSetup | [NodeSetup](#nodesetup) | false |  |
|nodeStateCounts | [NodeStateCounts](#nodestatecounts) | false |  |
|provisioningState | String | false | Possible value are: creating - Specifies that the cluster is being created. succeeded - Specifies that the cluster has been created successfully. failed - Specifies that the cluster creation has failed. deleting - Specifies that the cluster is being deleted. |
|provisioningStateTransitionTime | String | false |  |
|scaleSettings | [ScaleSettings](#scalesettings) | false |  |
|subnet | [ResourceId](#resourceid) | false |  |
|userAccountSettings | [UserAccountSettings](#useraccountsettings) | false |  |
|virtualMachineConfiguration | [VirtualMachineConfiguration](#virtualmachineconfiguration) | false |  |
|vmPriority | String | false | The default value is dedicated. The node can get preempted while the task is running if lowpriority is choosen. This is best suited if the workload is checkpointing and can be restarted. |
|vmSize | String | false | All virtual machines in a cluster are the same size. For information about available VM sizes for clusters using images from the Virtual Machines Marketplace (see Sizes for Virtual Machines (Linux) or Sizes for Virtual Machines (Windows). Batch AI service supports all Azure VM sizes except STANDARD_A0 and those with premium storage (STANDARD_GS, STANDARD_DS, and STANDARD_DSV2 series). |
        
## BatchAIError

```puppet
$azure_batch_ai_error = {
  code => "code (optional)",
  details => $azure_name_value_pair
  message => "message (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|code | String | false | An identifier for the error. Codes are invariant and are intended to be consumed programmatically. |
|details | [NameValuePair](#namevaluepair) | false | A list of additional details about the error. |
|message | String | false | A message describing the error, intended to be suitable for display in a user interface. |
        
## NameValuePair

```puppet
$azure_name_value_pair = {
  name => "name (optional)",
  value => "value (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false |  |
|value | String | false |  |
        
## NodeSetup

```puppet
$azure_node_setup = {
  mountVolumes => $azure_mount_volumes
  performanceCountersSettings => $azure_performance_counters_settings
  setupTask => $azure_setup_task
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|mountVolumes | [MountVolumes](#mountvolumes) | false | Specified mount volumes will be available to all jobs executing on the cluster. The volumes will be mounted at location specified by $AZ_BATCHAI_MOUNT_ROOT environment variable. |
|performanceCountersSettings | [PerformanceCountersSettings](#performancecounterssettings) | false |  |
|setupTask | [SetupTask](#setuptask) | false |  |
        
## MountVolumes

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
|azureBlobFileSystems | [AzureBlobFileSystemReference](#azureblobfilesystemreference) | false | References to Azure Blob FUSE that are to be mounted to the cluster nodes. |
|azureFileShares | [AzureFileShareReference](#azurefilesharereference) | false | References to Azure File Shares that are to be mounted to the cluster nodes. |
|fileServers | [FileServerReference](#fileserverreference) | false |  |
|unmanagedFileSystems | [UnmanagedFileSystemReference](#unmanagedfilesystemreference) | false |  |
        
## AzureBlobFileSystemReference

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
|accountName | String | true |  |
|containerName | String | true |  |
|credentials | [AzureStorageCredentialsInfo](#azurestoragecredentialsinfo) | true |  |
|mountOptions | String | false |  |
|relativeMountPath | String | true | Note that all cluster level blob file systems will be mounted under $AZ_BATCHAI_MOUNT_ROOT location and all job level blob file systems will be mounted under $AZ_BATCHAI_JOB_MOUNT_ROOT. |
        
## AzureStorageCredentialsInfo

```puppet
$azure_azure_storage_credentials_info = {
  accountKey => "accountKey (optional)",
  accountKeySecretReference => $azure_key_vault_secret_reference
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accountKey | String | false | One of accountKey or accountKeySecretReference must be specified. |
|accountKeySecretReference | [KeyVaultSecretReference](#keyvaultsecretreference) | false | Users can store their secrets in Azure KeyVault and pass it to the Batch AI Service to integrate with KeyVault. One of accountKey or accountKeySecretReference must be specified. |
        
## KeyVaultSecretReference

```puppet
$azure_key_vault_secret_reference = {
  secretUrl => "secretUrl",
  sourceVault => $azure_resource_id
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|secretUrl | String | true |  |
|sourceVault | [ResourceId](#resourceid) | true |  |
        
## ResourceId

```puppet
$azure_resource_id = {
  id => "id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | true | The ID of the resource |
        
## AzureFileShareReference

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
|accountName | String | true |  |
|azureFileUrl | String | true |  |
|credentials | [AzureStorageCredentialsInfo](#azurestoragecredentialsinfo) | true |  |
|directoryMode | String | false | Default value is 0777. Valid only if OS is linux. |
|fileMode | String | false | Default value is 0777. Valid only if OS is linux. |
|relativeMountPath | String | true | Note that all cluster level file shares will be mounted under $AZ_BATCHAI_MOUNT_ROOT location and all job level file shares will be mounted under $AZ_BATCHAI_JOB_MOUNT_ROOT. |
        
        
## FileServerReference

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
|fileServer | [ResourceId](#resourceid) | true |  |
|mountOptions | String | false |  |
|relativeMountPath | String | true | Note that all cluster level file servers will be mounted under $AZ_BATCHAI_MOUNT_ROOT location and job level file servers will be mouted under $AZ_BATCHAI_JOB_MOUNT_ROOT. |
|sourceDirectory | String | false | If this property is not specified, the entire File Server will be mounted. |
        
        
## UnmanagedFileSystemReference

```puppet
$azure_unmanaged_file_system_reference = {
  mountCommand => "mountCommand",
  relativeMountPath => "relativeMountPath",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|mountCommand | String | true |  |
|relativeMountPath | String | true | Note that all cluster level unmanaged file system will be mounted under $AZ_BATCHAI_MOUNT_ROOT location and job level unmanaged file system will be mounted under $AZ_BATCHAI_JOB_MOUNT_ROOT. |
        
## PerformanceCountersSettings

```puppet
$azure_performance_counters_settings = {
  appInsightsReference => $azure_app_insights_reference
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|appInsightsReference | [AppInsightsReference](#appinsightsreference) | true | If provided, Batch AI will upload node performance counters to the corresponding Azure Application Insights account. |
        
## AppInsightsReference

```puppet
$azure_app_insights_reference = {
  component => $azure_resource_id
  instrumentationKey => "instrumentationKey (optional)",
  instrumentationKeySecretReference => $azure_key_vault_secret_reference
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|component | [ResourceId](#resourceid) | true |  |
|instrumentationKey | String | false |  |
|instrumentationKeySecretReference | [KeyVaultSecretReference](#keyvaultsecretreference) | false | Specifies KeyVault Store and Secret which contains Azure Application Insights instrumentation key. One of instumentationKey or instrumentationKeySecretReference must be specified. |
        
        
        
## SetupTask

```puppet
$azure_setup_task = {
  commandLine => "commandLine",
  environmentVariables => $azure_environment_variable
  runElevated => "runElevated (optional)",
  secrets => $azure_environment_variable_with_secret_value
  stdOutErrPathPrefix => "stdOutErrPathPrefix",
  stdOutErrPathSuffix => "stdOutErrPathSuffix (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|commandLine | String | true |  |
|environmentVariables | [EnvironmentVariable](#environmentvariable) | false |  |
|runElevated | Boolean | false | Note. Non-elevated tasks are run under an account added into sudoer list and can perform sudo when required. |
|secrets | [EnvironmentVariableWithSecretValue](#environmentvariablewithsecretvalue) | false | Server will never report values of these variables back. |
|stdOutErrPathPrefix | String | true | The prefix of a path where the Batch AI service will upload the stdout and stderr of the setup task. |
|stdOutErrPathSuffix | String | false | Batch AI creates the setup task output directories under an unique path to avoid conflicts between different clusters. You can concatinate stdOutErrPathPrefix and stdOutErrPathSuffix to get the full path to the output directory. |
        
## EnvironmentVariable

```puppet
$azure_environment_variable = {
  name => "name",
  value => "value",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true |  |
|value | String | true |  |
        
## EnvironmentVariableWithSecretValue

```puppet
$azure_environment_variable_with_secret_value = {
  name => "name",
  value => "value (optional)",
  valueSecretReference => $azure_key_vault_secret_reference
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true |  |
|value | String | false |  |
|valueSecretReference | [KeyVaultSecretReference](#keyvaultsecretreference) | false | Specifies KeyVault Store and Secret which contains the value for the environment variable. One of value or valueSecretReference must be provided. |
        
        
## NodeStateCounts

```puppet
$azure_node_state_counts = {
  idleNodeCount => "1234",
  leavingNodeCount => "1234",
  preparingNodeCount => "1234",
  runningNodeCount => "1234",
  unusableNodeCount => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|idleNodeCount | Integer | true |  |
|leavingNodeCount | Integer | true |  |
|preparingNodeCount | Integer | true |  |
|runningNodeCount | Integer | true |  |
|unusableNodeCount | Integer | true |  |
        
## ScaleSettings

```puppet
$azure_scale_settings = {
  autoScale => $azure_auto_scale_settings
  manual => $azure_manual_scale_settings
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|autoScale | [AutoScaleSettings](#autoscalesettings) | false |  |
|manual | [ManualScaleSettings](#manualscalesettings) | false |  |
        
## AutoScaleSettings

```puppet
$azure_auto_scale_settings = {
  initialNodeCount => "1234 (optional)",
  maximumNodeCount => "1234",
  minimumNodeCount => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|initialNodeCount | Integer | false |  |
|maximumNodeCount | Integer | true |  |
|minimumNodeCount | Integer | true |  |
        
## ManualScaleSettings

```puppet
$azure_manual_scale_settings = {
  nodeDeallocationOption => $azure_deallocation_option
  targetNodeCount => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|nodeDeallocationOption | [DeallocationOption](#deallocationoption) | false | The default value is requeue. |
|targetNodeCount | Integer | true | Default is 0. If autoScaleSettings are not specified, then the Cluster starts with this target. |
        
## DeallocationOption

```puppet
$azure_deallocation_option = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
## UserAccountSettings

```puppet
$azure_user_account_settings = {
  adminUserName => "adminUserName",
  adminUserPassword => "adminUserPassword (optional)",
  adminUserSshPublicKey => "adminUserSshPublicKey (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|adminUserName | String | true |  |
|adminUserPassword | String | false |  |
|adminUserSshPublicKey | String | false |  |
        
## VirtualMachineConfiguration

```puppet
$azure_virtual_machine_configuration = {
  imageReference => $azure_image_reference
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|imageReference | [ImageReference](#imagereference) | false |  |
        
## ImageReference

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
|offer | String | true |  |
|publisher | String | true |  |
|sku | String | true |  |
|version | String | false |  |
|virtualMachineImageId | String | false | The virtual machine image must be in the same region and subscription as the cluster. For information about the firewall settings for the Batch node agent to communicate with the Batch service see https://docs.microsoft.com/en-us/azure/batch/batch-api-basics#virtual-network-vnet-and-firewall-configuration. Note, you need to provide publisher, offer and sku of the base OS image of which the custom image has been derived from. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Cluster

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/clusters/%{cluster_name}`|Put|Adds a cluster. A cluster is a collection of compute nodes. Multiple jobs can be run on the same cluster.|Clusters_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.BatchAI/clusters`|Get|Gets information about the Clusters associated with the subscription.|Clusters_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/clusters/%{cluster_name}`|Get|Gets information about the specified Cluster.|Clusters_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/clusters`|Get|Gets information about the Clusters associated within the specified resource group.|Clusters_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/clusters/%{cluster_name}`|Put|Adds a cluster. A cluster is a collection of compute nodes. Multiple jobs can be run on the same cluster.|Clusters_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/clusters/%{cluster_name}`|Delete|Deletes a Cluster.|Clusters_Delete|