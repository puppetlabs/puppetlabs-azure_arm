Document: "blob"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/storage/resource-manager/Microsoft.Storage/stable/2018-07-01/blob.json")

## BlobContainer

Properties of the blob container, including Id, resource name, resource type, Etag.

```puppet
azure_blob_container {
  account_name => "account_name",
  api_version => "api_version",
  blob_container => "blobContainer",
  container_name => "container_name",
  properties => $azure_container_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |
|api_version | String | true | The API version to use for this operation. |
|blob_container | Hash | true | Properties of the blob container to create. |
|container_name | String | true | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number. |
|properties | [ContainerProperties](#containerproperties) | false | Properties of the blob container. |
|resource_group_name | String | true | The name of the resource group within the user's subscription. The name is case insensitive. |
|subscription_id | String | true | The ID of the target subscription. |
        
## ContainerProperties

The properties of a container.

```puppet
$azure_container_properties = {
  immutabilityPolicy => $azure_immutability_policy_properties
  legalHold => $azure_legal_hold_properties
  metadata => "metadata (optional)",
  publicAccess => "publicAccess (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|immutabilityPolicy | [ImmutabilityPolicyProperties](#immutabilitypolicyproperties) | false | The ImmutabilityPolicy property of the container. |
|legalHold | [LegalHoldProperties](#legalholdproperties) | false | The LegalHold property of the container. |
|metadata | Hash | false | A name-value pair to associate with the container as metadata. |
|publicAccess | String | false | Specifies whether data in the container may be accessed publicly and the level of access. |
        
## ImmutabilityPolicyProperties

The properties of an ImmutabilityPolicy of a blob container.

```puppet
$azure_immutability_policy_properties = {
  properties => $azure_immutability_policy_property
  updateHistory => $azure_update_history_property
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|properties | [ImmutabilityPolicyProperty](#immutabilitypolicyproperty) | false | The properties of an ImmutabilityPolicy of a blob container. |
|updateHistory | [UpdateHistoryProperty](#updatehistoryproperty) | false | The ImmutabilityPolicy update history of the blob container. |
        
## ImmutabilityPolicyProperty

The properties of an ImmutabilityPolicy of a blob container.

```puppet
$azure_immutability_policy_property = {
  immutabilityPeriodSinceCreationInDays => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|immutabilityPeriodSinceCreationInDays | Integer | true | The immutability period for the blobs in the container since the policy creation, in days. |
        
## UpdateHistoryProperty

An update history of the ImmutabilityPolicy of a blob container.

```puppet
$azure_update_history_property = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## LegalHoldProperties

The LegalHold property of a blob container.

```puppet
$azure_legal_hold_properties = {
  tags => $azure_tag_property
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|tags | [TagProperty](#tagproperty) | false | The list of LegalHold tags of a blob container. |
        
## TagProperty

A tag of the LegalHold of a blob container.

```puppet
$azure_tag_property = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the BlobContainer

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Storage/storageAccounts/%{account_name}/blobServices/default/containers/%{container_name}`|Put|Creates a new container under the specified account as described by request body. The container resource includes metadata and properties for that container. It does not include a list of the blobs contained by the container. |BlobContainers_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Storage/storageAccounts/%{account_name}/blobServices/default/containers/%{container_name}`|Get|Gets properties of a specified container. |BlobContainers_Get|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Storage/storageAccounts/%{account_name}/blobServices/default/containers/%{container_name}`|Put|Creates a new container under the specified account as described by request body. The container resource includes metadata and properties for that container. It does not include a list of the blobs contained by the container. |BlobContainers_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Storage/storageAccounts/%{account_name}/blobServices/default/containers/%{container_name}`|Delete|Deletes specified container under its account.|BlobContainers_Delete|
