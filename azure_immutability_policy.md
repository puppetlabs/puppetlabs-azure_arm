Document: "blob"
Path: "/root/specs/specification/storage/resource-manager/Microsoft.Storage/stable/2018-02-01/blob.json")

## ImmutabilityPolicy

```puppet
azure_immutability_policy {
  account_name => "account_name",
  api_version => "api_version",
  container_name => "container_name",
  etag => "etag (optional)",
  id => "id (optional)",
  if_match => "if_match",
  name => "name (optional)",
  properties => $azure_immutability_policy_property
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |
|api_version | String | true | The API version to use for this operation. |
|container_name | String | true | The name of the blob container within the specified storage account. Blob container names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number. |
|etag | String | false | Resource Etag. |
|id | String | false | Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName} |
|if_match | String | true | The entity state (ETag) version of the immutability policy to update. A value of '*' can be used to apply the operation only if the immutability policy already exists. If omitted, this operation will always be applied. |
|name | String | false | The name of the resource |
|properties | [ImmutabilityPolicyProperty](#immutabilitypolicyproperty) | true | The properties of an ImmutabilityPolicy of a blob container. |
|resource_group_name | String | true | The name of the resource group within the user's subscription. The name is case insensitive. |
|subscription_id | String | true | The ID of the target subscription. |
|type | String | false | The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts. |
        
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



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ImmutabilityPolicy

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Storage/storageAccounts/%{account_name}/blobServices/default/containers/%{container_name}/immutabilityPolicies/%{immutability_policy_name}`|Put|Creates or updates an unlocked immutability policy. ETag in If-Match is honored if given but not required for this operation.|BlobContainers_CreateOrUpdateImmutabilityPolicy|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Storage/storageAccounts/%{account_name}/blobServices/default/containers/%{container_name}/immutabilityPolicies/%{immutability_policy_name}`|Get|Gets the existing immutability policy along with the corresponding ETag in response headers and body.|BlobContainers_GetImmutabilityPolicy|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Storage/storageAccounts/%{account_name}/blobServices/default/containers/%{container_name}/immutabilityPolicies/%{immutability_policy_name}`|Put|Creates or updates an unlocked immutability policy. ETag in If-Match is honored if given but not required for this operation.|BlobContainers_CreateOrUpdateImmutabilityPolicy|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Storage/storageAccounts/%{account_name}/blobServices/default/containers/%{container_name}/immutabilityPolicies/%{immutability_policy_name}`|Delete|Aborts an unlocked immutability policy. The response of delete has immutabilityPeriodSinceCreationInDays set to 0. ETag in If-Match is required for this operation. Deleting a locked immutability policy is not allowed, only way is to delete the container after deleting all blobs inside the container.|BlobContainers_DeleteImmutabilityPolicy|