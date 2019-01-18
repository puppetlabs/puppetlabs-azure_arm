Document: "edgegateway"


Path: "/tmp/azure-rest-api-specs/specification/edgegateway/resource-manager/Microsoft.DataBoxEdge/stable/2018-07-01/edgegateway.json")

## Share

Represents a share on the  Data Box Edge/Gateway device.

```puppet
azure_share {
  api_version => "api_version",
  device_name => "device_name",
  properties => $azure_share_properties
  resource_group_name => "resource_group_name",
  share => "share",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|device_name | String | true | Name of the device. |
|properties | [ShareProperties](#shareproperties) | true | The share properties. |
|resource_group_name | String | true | The resource group name. |
|share | Hash | true | The share object containing the share details. |
|subscription_id | String | true | The subscription ID. |
        
## ShareProperties

The share properties.

```puppet
$azure_share_properties = {
  accessProtocol => "accessProtocol",
  azureContainerInfo => $azure_azure_container_info
  clientAccessRights => $azure_client_access_right
  dataPolicy => "dataPolicy (optional)",
  description => "description (optional)",
  monitoringStatus => "monitoringStatus",
  refreshDetails => $azure_refresh_details
  shareMappings => $azure_mount_point_map
  shareStatus => "shareStatus",
  userAccessRights => $azure_user_access_right
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accessProtocol | String | true | Access protocol to be used by the share. |
|azureContainerInfo | [AzureContainerInfo](#azurecontainerinfo) | false | Azure container mapping for the share. |
|clientAccessRights | [ClientAccessRight](#clientaccessright) | false | List of IP addresses and corresponding access rights on the share(mandatory for NFS protocol). |
|dataPolicy | String | false | Data policy of the share. |
|description | String | false | Description for the share. |
|monitoringStatus | String | true | Current monitoring status of the share. |
|refreshDetails | [RefreshDetails](#refreshdetails) | false | Details of the refresh job on this share. |
|shareMappings | [MountPointMap](#mountpointmap) | false | Share mount point to the role. |
|shareStatus | String | true | Current status of the share. |
|userAccessRights | [UserAccessRight](#useraccessright) | false | Mapping of Users and corresponding access rights on the share (mandatory for SMB protocol). |
        
## AzureContainerInfo

Azure container mapping of the endpoint.

```puppet
$azure_azure_container_info = {
  containerName => "containerName",
  dataFormat => "dataFormat",
  storageAccountCredentialId => "storageAccountCredentialId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|containerName | String | true | Container name (Based on the data format specified, represents the name of Azure file/ Page blob / Block blob). |
|dataFormat | String | true | Storage format used for the file represented by the share. |
|storageAccountCredentialId | String | true | ID of the Storage account credential to be used for accessing storage. |
        
## ClientAccessRight

The mapping between a particular client ip and the type of access client has on the NFS share.

```puppet
$azure_client_access_right = {
  accessPermission => "accessPermission",
  client => "client",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accessPermission | String | true | Type of access to be allowed for the client. |
|client | String | true | Ip of the client. |
        
## RefreshDetails

Fields for tracking refresh job on the share.

```puppet
$azure_refresh_details = {
  errorManifestFile => "errorManifestFile (optional)",
  inProgressRefreshJobId => "inProgressRefreshJobId (optional)",
  lastCompletedRefreshJobTimeInUTC => "lastCompletedRefreshJobTimeInUTC (optional)",
  lastJob => "lastJob (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|errorManifestFile | String | false | Indicates the relative path of the error xml for the last refresh job on this particular share, if any.This could be a failed job or a successful job. |
|inProgressRefreshJobId | String | false | If a RefreshShare job is currently inprogress on this share - this field indicates the ArmId of that job. Empty otherwise. |
|lastCompletedRefreshJobTimeInUTC | String | false | Indicates the job completed time of the last refresh job on this particular share, if any.This could be a failed job or a successful job. |
|lastJob | String | false | Indicates the id of the last refresh job on this particular share,if any.This could be a failed job or a successful job. |
        
## MountPointMap

The share mount point.

```puppet
$azure_mount_point_map = {
  shareId => "shareId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|shareId | String | true | ID of the share which is mounted to role VM. |
        
## UserAccessRight

The mapping between a particular user and the type of access they have on the SMB share.

```puppet
$azure_user_access_right = {
  accessType => "accessType",
  userId => "userId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accessType | String | true | Type of access to be allowed for the user. |
|userId | String | true | Id of the user (already existing in the device). |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Share

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/shares/%{name}`|Put||Shares_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/shares/%{name}`|Get||Shares_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/shares`|Get||Shares_ListByDataBoxEdgeDevice|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/shares/%{name}`|Put||Shares_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DataBoxEdge/dataBoxEdgeDevices/%{device_name}/shares/%{name}`|Delete|Deletes the share on the data box edge/gateway device.|Shares_Delete|
