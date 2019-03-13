Document: "BatchAI"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/batchai/resource-manager/Microsoft.BatchAI/stable/2018-05-01/BatchAI.json")

## FileServer

File Server information.

```puppet
azure_file_server {
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_file_server_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  workspace_name => "workspace_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Specifies the version of API used for this request. |
|parameters | Hash | true | The parameters to provide for File Server creation. |
|properties | [FileServerProperties](#fileserverproperties) | false | File Server properties. |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|subscription_id | String | true | The subscriptionID for the Azure user. |
|workspace_name | String | true | The name of the workspace. Workspace names can only contain a combination of alphanumeric characters along with dash (-) and underscore (_). The name must be from 1 through 64 characters long. |
        
## FileServerProperties

File Server properties.

```puppet
$azure_file_server_properties = {
  dataDisks => $azure_data_disks
  mountSettings => $azure_mount_settings
  sshConfiguration => $azure_ssh_configuration
  subnet => $azure_resource_id
  vmSize => "vmSize (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dataDisks | [DataDisks](#datadisks) | false | Information about disks attached to File Server VM. |
|mountSettings | [MountSettings](#mountsettings) | false | File Server mount settings. |
|sshConfiguration | [SshConfiguration](#sshconfiguration) | false | SSH configuration for accessing the File Server node. |
|subnet | [ResourceId](#resourceid) | false | File Server virtual network subnet resource ID. |
|vmSize | String | false | VM size of the File Server. |
        
## DataDisks

Data disks settings.

```puppet
$azure_data_disks = {
  cachingType => "cachingType (optional)",
  diskCount => "1234",
  diskSizeInGB => "1234",
  storageAccountType => "storageAccountType",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|cachingType | String | false | Caching type for the disks. Available values are none (default), readonly, readwrite. Caching type can be set only for VM sizes supporting premium storage. |
|diskCount | Integer | true | Number of data disks attached to the File Server. If multiple disks attached, they will be configured in RAID level 0. |
|diskSizeInGB | Integer | true | Disk size in GB for the blank data disks. |
|storageAccountType | String | true | Type of storage account to be used on the disk. Possible values are: Standard_LRS or Premium_LRS. Premium storage account type can only be used with VM sizes supporting premium storage. |
        
## MountSettings

File Server mount Information.

```puppet
$azure_mount_settings = {
  fileServerInternalIP => "fileServerInternalIP (optional)",
  fileServerPublicIP => "fileServerPublicIP (optional)",
  mountPoint => "mountPoint (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|fileServerInternalIP | String | false | Internal IP address of the File Server which can be used to access the File Server from within the subnet. |
|fileServerPublicIP | String | false | Public IP address of the File Server which can be used to SSH to the node from outside of the subnet. |
|mountPoint | String | false | Path where the data disks are mounted on the File Server. |
        
## SshConfiguration

SSH configuration.

```puppet
$azure_ssh_configuration = {
  publicIPsToAllow => "publicIPsToAllow (optional)",
  userAccountSettings => $azure_user_account_settings
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|publicIPsToAllow | Array | false | List of source IP ranges to allow SSH connection from. The default value is '*' (all source IPs are allowed). Maximum number of IP ranges that can be specified is 400. |
|userAccountSettings | [UserAccountSettings](#useraccountsettings) | true | Settings for administrator user account to be created on a node. The account can be used to establish SSH connection to the node. |
        
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



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the FileServer

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}/fileServers/%{file_server_name}`|Put|Creates a File Server in the given workspace.|FileServers_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}/fileServers/%{file_server_name}`|Get|Gets information about a File Server.|FileServers_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}/fileServers`|Get|Gets a list of File Servers associated with the specified workspace.|FileServers_ListByWorkspace|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}/fileServers/%{file_server_name}`|Put|Creates a File Server in the given workspace.|FileServers_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/workspaces/%{workspace_name}/fileServers/%{file_server_name}`|Delete|Deletes a File Server.|FileServers_Delete|
