Document: "blob"
Path: "/root/specs/specification/storage/resource-manager/Microsoft.Storage/stable/2018-02-01/blob.json")

## BlobContainer

```puppet
azure_blob_container {
  account_name => "account_name",
  api_version => "api_version",
  blob_container => "blobContainer",
  container_name => "container_name",
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_container_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |
|api_version | String | true | The API version to use for this operation. |
|blob_container | Hash | true | Properties of the blob container to create. |
|container_name | String | true | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number. |
|etag | String | false | Resource Etag. |
|id | String | false | Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName} |
|name | String | false | The name of the resource |
|properties | [ContainerProperties](#containerproperties) | false | Properties of the blob container. |
|resource_group_name | String | true | The name of the resource group within the user's subscription. The name is case insensitive. |
|subscription_id | String | true | The ID of the target subscription. |
|type | String | false | The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts. |
        
## ContainerProperties

```puppet
$azure_container_properties = {
  hasImmutabilityPolicy => "hasImmutabilityPolicy (optional)",
  hasLegalHold => "hasLegalHold (optional)",
  immutabilityPolicy => $azure_immutability_policy_properties
  lastModifiedTime => "lastModifiedTime (optional)",
  leaseDuration => "leaseDuration (optional)",
  leaseState => "leaseState (optional)",
  leaseStatus => "leaseStatus (optional)",
  legalHold => $azure_legal_hold_properties
  metadata => "metadata (optional)",
  publicAccess => "publicAccess (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|hasImmutabilityPolicy | Boolean | false | The hasImmutabilityPolicy public property is set to true by SRP if ImmutabilityPolicy has been created for this container. The hasImmutabilityPolicy public property is set to false by SRP if ImmutabilityPolicy has not been created for this container. |
|hasLegalHold | Boolean | false | The hasLegalHold public property is set to true by SRP if there are at least one existing tag. The hasLegalHold public property is set to false by SRP if all existing legal hold tags are cleared out. There can be a maximum of 1000 blob containers with hasLegalHold=true for a given account. |
|immutabilityPolicy | [ImmutabilityPolicyProperties](#immutabilitypolicyproperties) | false | The ImmutabilityPolicy property of the container. |
|lastModifiedTime | String | false | Returns the date and time the container was last modified. |
|leaseDuration | String | false | Specifies whether the lease on a container is of infinite or fixed duration, only when the container is leased. |
|leaseState | String | false | Lease state of the container. |
|leaseStatus | String | false | The lease status of the container. |
|legalHold | [LegalHoldProperties](#legalholdproperties) | false | The LegalHold property of the container. |
|metadata | Hash | false | A name-value pair to associate with the container as metadata. |
|publicAccess | String | false | Specifies whether data in the container may be accessed publicly and the level of access. |
        
## ImmutabilityPolicyProperties

```puppet
$azure_immutability_policy_properties = {
  etag => "etag (optional)",
  properties => $azure_immutability_policy_property
  updateHistory => $azure_update_history_property
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|etag | String | false | ImmutabilityPolicy Etag. |
|properties | [ImmutabilityPolicyProperty](#immutabilitypolicyproperty) | false | The properties of an ImmutabilityPolicy of a blob container. |
|updateHistory | [UpdateHistoryProperty](#updatehistoryproperty) | false | The ImmutabilityPolicy update history of the blob container. |
        
## ImmutabilityPolicyProperty

```puppet
$azure_immutability_policy_property = {
  immutabilityPeriodSinceCreationInDays => "1234",
  state => "state (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|immutabilityPeriodSinceCreationInDays | Integer | true | The immutability period for the blobs in the container since the policy creation, in days. |
|state | String | false | The ImmutabilityPolicy state of a blob container, possible values include: Locked and Unlocked. |
        
## UpdateHistoryProperty

```puppet
$azure_update_history_property = {
  immutabilityPeriodSinceCreationInDays => "1234 (optional)",
  objectIdentifier => "objectIdentifier (optional)",
  tenantId => "tenantId (optional)",
  timestamp => "timestamp (optional)",
  update => "update (optional)",
  upn => "upn (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|immutabilityPeriodSinceCreationInDays | Integer | false | The immutability period for the blobs in the container since the policy creation, in days. |
|objectIdentifier | String | false | Returns the Object ID of the user who updated the ImmutabilityPolicy. |
|tenantId | String | false | Returns the Tenant ID that issued the token for the user who updated the ImmutabilityPolicy. |
|timestamp | String | false | Returns the date and time the ImmutabilityPolicy was updated. |
|update | String | false | The ImmutabilityPolicy update type of a blob container, possible values include: put, lock and extend. |
|upn | String | false | Returns the User Principal Name of the user who updated the ImmutabilityPolicy. |
        
## LegalHoldProperties

```puppet
$azure_legal_hold_properties = {
  hasLegalHold => "hasLegalHold (optional)",
  tags => $azure_tag_property
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|hasLegalHold | Boolean | false | The hasLegalHold public property is set to true by SRP if there are at least one existing tag. The hasLegalHold public property is set to false by SRP if all existing legal hold tags are cleared out. There can be a maximum of 1000 blob containers with hasLegalHold=true for a given account. |
|tags | [TagProperty](#tagproperty) | false | The list of LegalHold tags of a blob container. |
        
## TagProperty

```puppet
$azure_tag_property = {
  objectIdentifier => "objectIdentifier (optional)",
  tag => "tag (optional)",
  tenantId => "tenantId (optional)",
  timestamp => "timestamp (optional)",
  upn => "upn (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|objectIdentifier | String | false | Returns the Object ID of the user who added the tag. |
|tag | String | false | The tag value. |
|tenantId | String | false | Returns the Tenant ID that issued the token for the user who added the tag. |
|timestamp | String | false | Returns the date and time the tag was added. |
|upn | String | false | Returns the User Principal Name of the user who added the tag. |



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