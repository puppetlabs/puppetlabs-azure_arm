Document: "BatchAI"
Path: "/root/specs/specification/batchai/resource-manager/Microsoft.BatchAI/stable/2018-03-01/BatchAI.json")

## FileServer

```puppet
azure_file_server {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_file_server_properties
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
|parameters | Hash | true | The parameters to provide for file server creation. |
|properties | [FileServerProperties](#fileserverproperties) | false | The properties associated with the File Server. |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|subscription_id | String | true | The subscriptionID for the Azure user. |
|tags | Hash | false | The tags of the resource |
|type | String | false | The type of the resource |
        
## FileServerProperties

```puppet
$azure_file_server_properties = {
  creationTime => "creationTime (optional)",
  dataDisks => $azure_data_disks
  mountSettings => $azure_mount_settings
  provisioningState => "provisioningState (optional)",
  provisioningStateTransitionTime => "provisioningStateTransitionTime (optional)",
  sshConfiguration => $azure_ssh_configuration
  subnet => $azure_resource_id
  vmSize => "vmSize (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|creationTime | String | false |  |
|dataDisks | [DataDisks](#datadisks) | false |  |
|mountSettings | [MountSettings](#mountsettings) | false |  |
|provisioningState | String | false | Possible values: creating - The File Server is getting created. updating - The File Server creation has been accepted and it is getting updated. deleting - The user has requested that the File Server be deleted, and it is in the process of being deleted. failed - The File Server creation has failed with the specified errorCode. Details about the error code are specified in the message field. succeeded - The File Server creation has succeeded. |
|provisioningStateTransitionTime | String | false |  |
|sshConfiguration | [SshConfiguration](#sshconfiguration) | false |  |
|subnet | [ResourceId](#resourceid) | false |  |
|vmSize | String | false | For information about available VM sizes for File Server from the Virtual Machines Marketplace, see Sizes for Virtual Machines (Linux). |
        
## DataDisks

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
|cachingType | String | false |  |
|diskCount | Integer | true |  |
|diskSizeInGB | Integer | true |  |
|storageAccountType | String | true |  |
        
## MountSettings

```puppet
$azure_mount_settings = {
  fileServerInternalIP => "fileServerInternalIP (optional)",
  fileServerPublicIP => "fileServerPublicIP (optional)",
  fileServerType => "fileServerType (optional)",
  mountPoint => "mountPoint (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|fileServerInternalIP | String | false |  |
|fileServerPublicIP | String | false |  |
|fileServerType | String | false |  |
|mountPoint | String | false |  |
        
## SshConfiguration

```puppet
$azure_ssh_configuration = {
  publicIPsToAllow => "publicIPsToAllow (optional)",
  userAccountSettings => $azure_user_account_settings
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|publicIPsToAllow | Array | false | Default value is '*' can be used to match all source IPs. Maximum number of IP ranges that can be specified are 400. |
|userAccountSettings | [UserAccountSettings](#useraccountsettings) | true |  |
        
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
        
## ResourceId

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
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/fileServers/%{file_server_name}`|Put|Creates a file server.|FileServers_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.BatchAI/fileServers`|Get|To list all the file servers available under the given subscription (and across all resource groups within that subscription)|FileServers_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/fileServers/%{file_server_name}`|Get|Gets information about the specified Cluster.|FileServers_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.BatchAI/fileServers`|Get|To list all the file servers available under the given subscription (and across all resource groups within that subscription)|FileServers_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/fileServers/%{file_server_name}`|Put|Creates a file server.|FileServers_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.BatchAI/fileServers/%{file_server_name}`|Delete|Delete a file Server.|FileServers_Delete|