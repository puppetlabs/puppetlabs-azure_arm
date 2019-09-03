Document: "file"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/storage/resource-manager/Microsoft.Storage/stable/2019-04-01/file.json")

## FileShare

Properties of the file share, including Id, resource name, resource type, Etag.

```puppet
azure_file_share {
  account_name => "account_name",
  api_version => "api_version",
  file_share => "fileShare",
  properties => $azure_file_share_properties
  resource_group_name => "resource_group_name",
  share_name => "share_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |
|api_version | String | true | The API version to use for this operation. |
|file_share | Hash | true | Properties of the file share to create. |
|properties | [FileShareProperties](#fileshareproperties) | false | Properties of the file share. |
|resource_group_name | String | true | The name of the resource group within the user's subscription. The name is case insensitive. |
|share_name | String | true | The name of the file share within the specified storage account. File share names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number. |
|subscription_id | String | true | The ID of the target subscription. |
        
## FileShareProperties

The properties of the file share.

```puppet
$azure_file_share_properties = {
  metadata => "metadata (optional)",
  shareQuota => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|metadata | Hash | false | A name-value pair to associate with the share as metadata. |
|shareQuota | Integer | false | The maximum size of the share, in gigabytes. Must be greater than 0, and less than or equal to 5TB (5120). |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the FileShare

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Storage/storageAccounts/%{account_name}/fileServices/default/shares/%{share_name}`|Put|Creates a new share under the specified account as described by request body. The share resource includes metadata and properties for that share. It does not include a list of the files contained by the share. |FileShares_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Storage/storageAccounts/%{account_name}/fileServices/default/shares/%{share_name}`|Get|Gets properties of a specified share.|FileShares_Get|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Storage/storageAccounts/%{account_name}/fileServices/default/shares/%{share_name}`|Put|Creates a new share under the specified account as described by request body. The share resource includes metadata and properties for that share. It does not include a list of the files contained by the share. |FileShares_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Storage/storageAccounts/%{account_name}/fileServices/default/shares/%{share_name}`|Delete|Deletes specified share under its account.|FileShares_Delete|
