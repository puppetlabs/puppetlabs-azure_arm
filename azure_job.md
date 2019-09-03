Document: "BatchAI"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/batchai/resource-manager/Microsoft.BatchAI/stable/2018-05-01/BatchAI.json")

## Job

Information about a Job.

```puppet
azure_job {
  api_version => "api_version",
  experiment_name => "experiment_name",
  parameters => "parameters",
  properties => $azure_job_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  workspace_name => "workspace_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Specifies the version of API used for this request. |
|experiment_name | String | true | The name of the experiment. Experiment names can only contain a combination of alphanumeric characters along with dash (-) and underscore (_). The name must be from 1 through 64 characters long. |
|parameters | Hash | true | The parameters to provide for job creation. |
|properties | [JobProperties](#jobproperties) | false | The properties associated with the Job. |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|subscription_id | String | true | The subscriptionID for the Azure user. |
|workspace_name | String | true | The name of the workspace. Workspace names can only contain a combination of alphanumeric characters along with dash (-) and underscore (_). The name must be from 1 through 64 characters long. |
        
## JobProperties

Job properties.

```puppet
$azure_job_properties = {
  caffe2Settings => $azure_caffe2_settings
  caffeSettings => $azure_caffe_settings
  chainerSettings => $azure_chainer_settings
  cluster => $azure_resource_id
  cntkSettings => $azure_cnt_ksettings
  constraints => "constraints (optional)",
  containerSettings => $azure_container_settings
  customMpiSettings => $azure_custom_mpi_settings
  customToolkitSettings => $azure_custom_toolkit_settings
  environmentVariables => $azure_environment_variable
  executionInfo => "executionInfo (optional)",
  horovodSettings => $azure_horovod_settings
  inputDirectories => $azure_input_directory
  jobPreparation => $azure_job_preparation
  mountVolumes => $azure_mount_volumes
  nodeCount => "1234 (optional)",
  outputDirectories => $azure_output_directory
  pyTorchSettings => $azure_py_torch_settings
  schedulingPriority => "schedulingPriority (optional)",
  secrets => $azure_environment_variable_with_secret_value
  stdOutErrPathPrefix => "stdOutErrPathPrefix (optional)",
  tensorFlowSettings => $azure_tensor_flow_settings
  toolType => $azure_tool_type
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|caffe2Settings | [Caffe2Settings](#caffe2settings) | false |  |
|caffeSettings | [CaffeSettings](#caffesettings) | false |  |
|chainerSettings | [ChainerSettings](#chainersettings) | false |  |
|cluster | [ResourceId](#resourceid) | false | Resource ID of the cluster associated with the job. |
|cntkSettings | [CNTKsettings](#cntksettings) | false |  |
|constraints | String | false | Constraints associated with the Job. |
|containerSettings | [ContainerSettings](#containersettings) | false | If the container was downloaded as part of cluster setup then the same container image will be used. If not provided, the job will run on the VM. |
|customMpiSettings | [CustomMpiSettings](#custommpisettings) | false |  |
|customToolkitSettings | [CustomToolkitSettings](#customtoolkitsettings) | false |  |
|environmentVariables | [EnvironmentVariable](#environmentvariable) | false | A collection of user defined environment variables to be setup for the job. |
|executionInfo | String | false | Information about the execution of a job. |
|horovodSettings | [HorovodSettings](#horovodsettings) | false |  |
|inputDirectories | [InputDirectory](#inputdirectory) | false | A list of input directories for the job. |
|jobPreparation | [JobPreparation](#jobpreparation) | false | The specified actions will run on all the nodes that are part of the job |
|mountVolumes | [MountVolumes](#mountvolumes) | false | Collection of mount volumes available to the job during execution. These volumes are mounted before the job execution and unmounted after the job completion. The volumes are mounted at location specified by $AZ_BATCHAI_JOB_MOUNT_ROOT environment variable. |
|nodeCount | Integer | false | The job will be gang scheduled on that many compute nodes |
|outputDirectories | [OutputDirectory](#outputdirectory) | false | A list of output directories for the job. |
|pyTorchSettings | [PyTorchSettings](#pytorchsettings) | false |  |
|schedulingPriority | String | false | Scheduling priority associated with the job. |
|secrets | [EnvironmentVariableWithSecretValue](#environmentvariablewithsecretvalue) | false | A collection of user defined environment variables with secret values to be setup for the job. Server will never report values of these variables back. |
|stdOutErrPathPrefix | String | false | The path where the Batch AI service stores stdout, stderror and execution log of the job. |
|tensorFlowSettings | [TensorFlowSettings](#tensorflowsettings) | false |  |
|toolType | [ToolType](#tooltype) | false | Possible values are: cntk, tensorflow, caffe, caffe2, chainer, pytorch, custom, custommpi, horovod. |
        
## Caffe2Settings

Caffe2 job settings.

```puppet
$azure_caffe2_settings = {
  commandLineArgs => "commandLineArgs (optional)",
  pythonInterpreterPath => "pythonInterpreterPath (optional)",
  pythonScriptFilePath => "pythonScriptFilePath",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|commandLineArgs | String | false | Command line arguments that need to be passed to the python script. |
|pythonInterpreterPath | String | false | The path to the Python interpreter. |
|pythonScriptFilePath | String | true | The python script to execute. |
        
## CaffeSettings

Caffe job settings.

```puppet
$azure_caffe_settings = {
  commandLineArgs => "commandLineArgs (optional)",
  configFilePath => "configFilePath (optional)",
  processCount => "1234 (optional)",
  pythonInterpreterPath => "pythonInterpreterPath (optional)",
  pythonScriptFilePath => "pythonScriptFilePath (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|commandLineArgs | String | false | Command line arguments that need to be passed to the Caffe job. |
|configFilePath | String | false | Path of the config file for the job. This property cannot be specified if pythonScriptFilePath is specified. |
|processCount | Integer | false | Number of processes to launch for the job execution. The default value for this property is equal to nodeCount property |
|pythonInterpreterPath | String | false | The path to the Python interpreter. The property can be specified only if the pythonScriptFilePath is specified. |
|pythonScriptFilePath | String | false | Python script to execute. This property cannot be specified if configFilePath is specified. |
        
## ChainerSettings

Chainer job settings.

```puppet
$azure_chainer_settings = {
  commandLineArgs => "commandLineArgs (optional)",
  processCount => "1234 (optional)",
  pythonInterpreterPath => "pythonInterpreterPath (optional)",
  pythonScriptFilePath => "pythonScriptFilePath",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|commandLineArgs | String | false | Command line arguments that need to be passed to the python script. |
|processCount | Integer | false | Number of processes to launch for the job execution. The default value for this property is equal to nodeCount property |
|pythonInterpreterPath | String | false | The path to the Python interpreter. |
|pythonScriptFilePath | String | true | The python script to execute. |
        
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
        
## CNTKsettings

CNTK (aka Microsoft Cognitive Toolkit) job settings.

```puppet
$azure_cnt_ksettings = {
  commandLineArgs => "commandLineArgs (optional)",
  configFilePath => "configFilePath (optional)",
  languageType => "languageType (optional)",
  processCount => "1234 (optional)",
  pythonInterpreterPath => "pythonInterpreterPath (optional)",
  pythonScriptFilePath => "pythonScriptFilePath (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|commandLineArgs | String | false | Command line arguments that need to be passed to the python script or cntk executable. |
|configFilePath | String | false | Specifies the path of the BrainScript config file. This property can be specified only if the languageType is 'BrainScript'. |
|languageType | String | false | The language to use for launching CNTK (aka Microsoft Cognitive Toolkit) job. Valid values are 'BrainScript' or 'Python'. |
|processCount | Integer | false | Number of processes to launch for the job execution. The default value for this property is equal to nodeCount property |
|pythonInterpreterPath | String | false | The path to the Python interpreter. This property can be specified only if the languageType is 'Python'. |
|pythonScriptFilePath | String | false | Python script to execute. This property can be specified only if the languageType is 'Python'. |
        
## ContainerSettings

Docker container settings.

```puppet
$azure_container_settings = {
  imageSourceRegistry => $azure_image_source_registry
  shmSize => "shmSize (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|imageSourceRegistry | [ImageSourceRegistry](#imagesourceregistry) | true | Information about docker image and docker registry to download the container from. |
|shmSize | String | false | Size of /dev/shm. Please refer to docker documentation for supported argument formats. |
        
## ImageSourceRegistry

Information about docker image for the job.

```puppet
$azure_image_source_registry = {
  credentials => $azure_private_registry_credentials
  image => "image",
  serverUrl => "serverUrl (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|credentials | [PrivateRegistryCredentials](#privateregistrycredentials) | false | Credentials to access the private docker repository. |
|image | String | true | The name of the image in the image repository. |
|serverUrl | String | false | URL for image repository. |
        
## PrivateRegistryCredentials

Credentials to access a container image in a private repository.

```puppet
$azure_private_registry_credentials = {
  password => "password (optional)",
  passwordSecretReference => $azure_key_vault_secret_reference
  username => "username",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|password | String | false | User password to login to the docker repository. One of password or passwordSecretReference must be specified. |
|passwordSecretReference | [KeyVaultSecretReference](#keyvaultsecretreference) | false | KeyVault Secret storing the password. Users can store their secrets in Azure KeyVault and pass it to the Batch AI service to integrate with KeyVault. One of password or passwordSecretReference must be specified. |
|username | String | true | User name to login to the repository. |
        
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
        
        
## CustomMpiSettings

Custom MPI job settings.

```puppet
$azure_custom_mpi_settings = {
  commandLine => "commandLine",
  processCount => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|commandLine | String | true | The command line to be executed by mpi runtime on each compute node. |
|processCount | Integer | false | Number of processes to launch for the job execution. The default value for this property is equal to nodeCount property |
        
## CustomToolkitSettings

Custom tool kit job settings.

```puppet
$azure_custom_toolkit_settings = {
  commandLine => "commandLine (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|commandLine | String | false | The command line to execute on the master node. |
        
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
        
## HorovodSettings

Specifies the settings for Horovod job.

```puppet
$azure_horovod_settings = {
  commandLineArgs => "commandLineArgs (optional)",
  processCount => "1234 (optional)",
  pythonInterpreterPath => "pythonInterpreterPath (optional)",
  pythonScriptFilePath => "pythonScriptFilePath",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|commandLineArgs | String | false | Command line arguments that need to be passed to the python script. |
|processCount | Integer | false | Number of processes to launch for the job execution. The default value for this property is equal to nodeCount property |
|pythonInterpreterPath | String | false | The path to the Python interpreter. |
|pythonScriptFilePath | String | true | The python script to execute. |
        
## InputDirectory

Input directory for the job.

```puppet
$azure_input_directory = {
  id => "id",
  path => "path",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | true | The ID for the input directory. The job can use AZ_BATCHAI_INPUT_<id> environment variable to find the directory path, where <id> is the value of id attribute. |
|path | String | true | The path to the input directory. |
        
## JobPreparation

Job preparation settings.

```puppet
$azure_job_preparation = {
  commandLine => "commandLine",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|commandLine | String | true | The command line to execute. If containerSettings is specified on the job, this commandLine will be executed in the same container as job. Otherwise it will be executed on the node. |
        
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
        
## OutputDirectory

Output directory for the job.

```puppet
$azure_output_directory = {
  id => "id",
  pathPrefix => "pathPrefix",
  pathSuffix => "pathSuffix (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | true | The ID of the output directory. The job can use AZ_BATCHAI_OUTPUT_<id> environment variable to find the directory path, where <id> is the value of id attribute. |
|pathPrefix | String | true | The prefix path where the output directory will be created. Note, this is an absolute path to prefix. E.g. $AZ_BATCHAI_MOUNT_ROOT/MyNFS/MyLogs. The full path to the output directory by combining pathPrefix, jobOutputDirectoryPathSegment (reported by get job) and pathSuffix. |
|pathSuffix | String | false | The suffix path where the output directory will be created. E.g. models. You can find the full path to the output directory by combining pathPrefix, jobOutputDirectoryPathSegment (reported by get job) and pathSuffix. |
        
## PyTorchSettings

pyTorch job settings.

```puppet
$azure_py_torch_settings = {
  commandLineArgs => "commandLineArgs (optional)",
  communicationBackend => "communicationBackend (optional)",
  processCount => "1234 (optional)",
  pythonInterpreterPath => "pythonInterpreterPath (optional)",
  pythonScriptFilePath => "pythonScriptFilePath",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|commandLineArgs | String | false | Command line arguments that need to be passed to the python script. |
|communicationBackend | String | false | Type of the communication backend for distributed jobs. Valid values are 'TCP', 'Gloo' or 'MPI'. Not required for non-distributed jobs. |
|processCount | Integer | false | Number of processes to launch for the job execution. The default value for this property is equal to nodeCount property |
|pythonInterpreterPath | String | false | The path to the Python interpreter. |
|pythonScriptFilePath | String | true | The python script to execute. |
        
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
        
        
## TensorFlowSettings

TensorFlow job settings.

```puppet
$azure_tensor_flow_settings = {
  masterCommandLineArgs => "masterCommandLineArgs (optional)",
  parameterServerCommandLineArgs => "parameterServerCommandLineArgs (optional)",
  parameterServerCount => "1234 (optional)",
  pythonInterpreterPath => "pythonInterpreterPath (optional)",
  pythonScriptFilePath => "pythonScriptFilePath",
  workerCommandLineArgs => "workerCommandLineArgs (optional)",
  workerCount => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|masterCommandLineArgs | String | false | Command line arguments that need to be passed to the python script for the master task. |
|parameterServerCommandLineArgs | String | false | Command line arguments that need to be passed to the python script for the parameter server. Optional for single process jobs. |
|parameterServerCount | Integer | false | The number of parameter server tasks. If specified, the value must be less than or equal to nodeCount. If not specified, the default value is equal to 1 for distributed TensorFlow training. This property can be specified only for distributed TensorFlow training. |
|pythonInterpreterPath | String | false | The path to the Python interpreter. |
|pythonScriptFilePath | String | true | The python script to execute. |
|workerCommandLineArgs | String | false | Command line arguments that need to be passed to the python script for the worker task. Optional for single process jobs. |
|workerCount | Integer | false | The number of worker tasks. If specified, the value must be less than or equal to (nodeCount * numberOfGPUs per VM). If not specified, the default value is equal to nodeCount. This property can be specified only for distributed TensorFlow training. |
        
## ToolType

The toolkit type of the job.

```puppet
$azure_tool_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Job

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}/experiments/%{experiment_name}/jobs/%{job_name}`|Put|Creates a Job in the given Experiment.|Jobs_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}/experiments/%{experiment_name}/jobs/%{job_name}`|Get|Gets information about a Job.|Jobs_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}/experiments/%{experiment_name}/jobs`|Get|Gets a list of Jobs within the specified Experiment.|Jobs_ListByExperiment|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}/experiments/%{experiment_name}/jobs/%{job_name}`|Put|Creates a Job in the given Experiment.|Jobs_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}/experiments/%{experiment_name}/jobs/%{job_name}`|Delete|Deletes a Job.|Jobs_Delete|
