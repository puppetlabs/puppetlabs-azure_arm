Document: "BatchAI"
Path: "/root/specs/specification/batchai/resource-manager/Microsoft.BatchAI/stable/2018-03-01/BatchAI.json")

## Job

```puppet
azure_job {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_job_properties
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
|parameters | Hash | true | The parameters to provide for job creation. |
|properties | [JobProperties](#jobproperties) | false | The properties associated with the job. |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|subscription_id | String | true | The subscriptionID for the Azure user. |
|tags | Hash | false | The tags of the resource |
|type | String | false | The type of the resource |
        
## JobProperties

```puppet
$azure_job_properties = {
  caffeSettings => $azure_caffe_settings
  chainerSettings => $azure_chainer_settings
  cluster => $azure_resource_id
  cntkSettings => $azure_cnt_ksettings
  constraints => "constraints (optional)",
  containerSettings => $azure_container_settings
  creationTime => "creationTime (optional)",
  customToolkitSettings => $azure_custom_toolkit_settings
  environmentVariables => $azure_environment_variable
  executionInfo => "executionInfo (optional)",
  executionState => "executionState (optional)",
  executionStateTransitionTime => "executionStateTransitionTime (optional)",
  experimentName => "experimentName (optional)",
  inputDirectories => $azure_input_directory
  jobOutputDirectoryPathSegment => "jobOutputDirectoryPathSegment (optional)",
  jobPreparation => $azure_job_preparation
  mountVolumes => $azure_mount_volumes
  nodeCount => "1234 (optional)",
  outputDirectories => $azure_output_directory
  priority => "1234 (optional)",
  provisioningState => "provisioningState (optional)",
  provisioningStateTransitionTime => "provisioningStateTransitionTime (optional)",
  pyTorchSettings => $azure_py_torch_settings
  secrets => $azure_environment_variable_with_secret_value
  stdOutErrPathPrefix => "stdOutErrPathPrefix (optional)",
  tensorFlowSettings => $azure_tensor_flow_settings
  toolType => $azure_tool_type
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|caffeSettings | [CaffeSettings](#caffesettings) | false |  |
|chainerSettings | [ChainerSettings](#chainersettings) | false |  |
|cluster | [ResourceId](#resourceid) | false |  |
|cntkSettings | [CNTKsettings](#cntksettings) | false |  |
|constraints | String | false | Constraints associated with the Job. |
|containerSettings | [ContainerSettings](#containersettings) | false | If the container was downloaded as part of cluster setup then the same container image will be used. If not provided, the job will run on the VM. |
|creationTime | String | false | The creation time of the job. |
|customToolkitSettings | [CustomToolkitSettings](#customtoolkitsettings) | false |  |
|environmentVariables | [EnvironmentVariable](#environmentvariable) | false | Batch AI will setup these additional environment variables for the job. |
|executionInfo | String | false | Contains information about the execution of a job in the Azure Batch service. |
|executionState | String | false | The current state of the job. Possible values are: queued - The job is queued and able to run. A job enters this state when it is created, or when it is awaiting a retry after a failed run. running - The job is running on a compute cluster. This includes job-level preparation such as downloading resource files or set up container specified on the job - it does not necessarily mean that the job command line has started executing. terminating - The job is terminated by the user, the terminate operation is in progress. succeeded - The job has completed running succesfully and exited with exit code 0. failed - The job has finished unsuccessfully (failed with a non-zero exit code) and has exhausted its retry limit. A job is also marked as failed if an error occurred launching the job. |
|executionStateTransitionTime | String | false | The time at which the job entered its current execution state. |
|experimentName | String | false | Describe the experiment information of the job |
|inputDirectories | [InputDirectory](#inputdirectory) | false |  |
|jobOutputDirectoryPathSegment | String | false | Batch AI creates job's output directories under an unique path to avoid conflicts between jobs. This value contains a path segment generated by Batch AI to make the path unique and can be used to find the output directory on the node or mounted filesystem. |
|jobPreparation | [JobPreparation](#jobpreparation) | false | The specified actions will run on all the nodes that are part of the job |
|mountVolumes | [MountVolumes](#mountvolumes) | false | These volumes will be mounted before the job execution and will be unmouted after the job completion. The volumes will be mounted at location specified by $AZ_BATCHAI_JOB_MOUNT_ROOT environment variable. |
|nodeCount | Integer | false | The job will be gang scheduled on that many compute nodes |
|outputDirectories | [OutputDirectory](#outputdirectory) | false |  |
|priority | Integer | false | Priority associated with the job. Priority values can range from -1000 to 1000, with -1000 being the lowest priority and 1000 being the highest priority. The default value is 0. |
|provisioningState | String | false | The provisioned state of the Batch AI job |
|provisioningStateTransitionTime | String | false | The time at which the job entered its current provisioning state. |
|pyTorchSettings | [PyTorchSettings](#pytorchsettings) | false |  |
|secrets | [EnvironmentVariableWithSecretValue](#environmentvariablewithsecretvalue) | false | Batch AI will setup these additional environment variables for the job. Server will never report values of these variables back. |
|stdOutErrPathPrefix | String | false | The path where the Batch AI service will upload stdout and stderror of the job. |
|tensorFlowSettings | [TensorFlowSettings](#tensorflowsettings) | false |  |
|toolType | [ToolType](#tooltype) | false | Possible values are: cntk, tensorflow, caffe, caffe2, chainer, pytorch, custom. |
        
## CaffeSettings

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
|commandLineArgs | String | false |  |
|configFilePath | String | false | This property cannot be specified if pythonScriptFilePath is specified. |
|processCount | Integer | false | The default value for this property is equal to nodeCount property |
|pythonInterpreterPath | String | false | This property can be specified only if the pythonScriptFilePath is specified. |
|pythonScriptFilePath | String | false | This property cannot be specified if configFilePath is specified. |
        
## ChainerSettings

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
|commandLineArgs | String | false |  |
|processCount | Integer | false | The default value for this property is equal to nodeCount property |
|pythonInterpreterPath | String | false |  |
|pythonScriptFilePath | String | true |  |
        
## ResourceId

```puppet
$azure_resource_id = {
  id => "id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | true | The ID of the resource |
        
## CNTKsettings

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
|commandLineArgs | String | false |  |
|configFilePath | String | false | This property can be specified only if the languageType is 'BrainScript'. |
|languageType | String | false | Valid values are 'BrainScript' or 'Python'. |
|processCount | Integer | false | The default value for this property is equal to nodeCount property |
|pythonInterpreterPath | String | false | This property can be specified only if the languageType is 'Python'. |
|pythonScriptFilePath | String | false | This property can be specified only if the languageType is 'Python'. |
        
## ContainerSettings

```puppet
$azure_container_settings = {
  imageSourceRegistry => $azure_image_source_registry
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|imageSourceRegistry | [ImageSourceRegistry](#imagesourceregistry) | true |  |
        
## ImageSourceRegistry

```puppet
$azure_image_source_registry = {
  credentials => $azure_private_registry_credentials
  image => "image",
  serverUrl => "serverUrl (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|credentials | [PrivateRegistryCredentials](#privateregistrycredentials) | false |  |
|image | String | true |  |
|serverUrl | String | false |  |
        
## PrivateRegistryCredentials

```puppet
$azure_private_registry_credentials = {
  password => "password (optional)",
  passwordSecretReference => $azure_key_vault_secret_reference
  username => "username",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|password | String | false | One of password or passwordSecretReference must be specified. |
|passwordSecretReference | [KeyVaultSecretReference](#keyvaultsecretreference) | false | Users can store their secrets in Azure KeyVault and pass it to the Batch AI Service to integrate with KeyVault. One of password or passwordSecretReference must be specified. |
|username | String | true |  |
        
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
        
        
## CustomToolkitSettings

```puppet
$azure_custom_toolkit_settings = {
  commandLine => "commandLine (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|commandLine | String | false |  |
        
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
        
## InputDirectory

```puppet
$azure_input_directory = {
  id => "id",
  path => "path",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | true | The path of the input directory will be available as a value of an environment variable with AZ_BATCHAI_INPUT_<id> name, where <id> is the value of id attribute. |
|path | String | true |  |
        
## JobPreparation

```puppet
$azure_job_preparation = {
  commandLine => "commandLine",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|commandLine | String | true | If containerSettings is specified on the job, this commandLine will be executed in the same container as job. Otherwise it will be executed on the node. |
        
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
        
## OutputDirectory

```puppet
$azure_output_directory = {
  createNew => "createNew (optional)",
  id => "id",
  pathPrefix => "pathPrefix",
  pathSuffix => "pathSuffix (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|createNew | Boolean | false | Default is true. If false, then the directory is not created and can be any directory path that the user specifies. |
|id | String | true | The path of the output directory will be available as a value of an environment variable with AZ_BATCHAI_OUTPUT_<id> name, where <id> is the value of id attribute. |
|pathPrefix | String | true | NOTE: This is an absolute path to prefix. E.g. $AZ_BATCHAI_MOUNT_ROOT/MyNFS/MyLogs. You can find the full path to the output directory by combining pathPrefix, jobOutputDirectoryPathSegment (reported by get job) and pathSuffix. |
|pathSuffix | String | false | The suffix path where the output directory will be created. E.g. models. You can find the full path to the output directory by combining pathPrefix, jobOutputDirectoryPathSegment (reported by get job) and pathSuffix. |
|type | String | false | Default value is Custom. The possible values are Model, Logs, Summary, and Custom. Users can use multiple enums for a single directory. Eg. outPutType='Model,Logs, Summary' |
        
## PyTorchSettings

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
|commandLineArgs | String | false |  |
|communicationBackend | String | false | Valid values are 'TCP', 'Gloo' or 'MPI'. Not required for non-distributed jobs. |
|processCount | Integer | false | The default value for this property is equal to nodeCount property. |
|pythonInterpreterPath | String | false |  |
|pythonScriptFilePath | String | true |  |
        
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
        
        
## TensorFlowSettings

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
|masterCommandLineArgs | String | false |  |
|parameterServerCommandLineArgs | String | false | This property is optional for single machine training. |
|parameterServerCount | Integer | false | If specified, the value must be less than or equal to nodeCount. If not specified, the default value is equal to 1 for distributed TensorFlow training (This property is not applicable for single machine training). This property can be specified only for distributed TensorFlow training. |
|pythonInterpreterPath | String | false |  |
|pythonScriptFilePath | String | true |  |
|workerCommandLineArgs | String | false | This property is optional for single machine training. |
|workerCount | Integer | false | If specified, the value must be less than or equal to (nodeCount * numberOfGPUs per VM). If not specified, the default value is equal to nodeCount. This property can be specified only for distributed TensorFlow training |
        
## ToolType

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
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/jobs/%{job_name}`|Put|Adds a Job that gets executed on a cluster.|Jobs_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.BatchAI/jobs`|Get|Gets information about the jobs associated with the subscription.|Jobs_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/jobs/%{job_name}`|Get|Gets information about the specified Batch AI job.|Jobs_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/jobs`|Get|Gets information about the Batch AI jobs associated within the specified resource group.|Jobs_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/jobs/%{job_name}`|Put|Adds a Job that gets executed on a cluster.|Jobs_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/jobs/%{job_name}`|Delete|Deletes the specified Batch AI job.|Jobs_Delete|