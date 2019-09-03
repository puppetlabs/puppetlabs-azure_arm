Document: "storage"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/storage/resource-manager/Microsoft.Storage/stable/2019-04-01/storage.json")

## ManagementPolicy

The Get Storage Account ManagementPolicies operation response.

```puppet
azure_management_policy {
  account_name => "account_name",
  api_version => "api_version",
  properties => $azure_management_policy_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only. |
|api_version | String | true | The API version to use for this operation. |
|properties | [ManagementPolicyProperties](#managementpolicyproperties) | false | Returns the Storage Account Data Policies Rules. |
|resource_group_name | String | true | The name of the resource group within the user's subscription. The name is case insensitive. |
|subscription_id | String | true | The ID of the target subscription. |
        
## ManagementPolicyProperties

The Storage Account ManagementPolicy properties.

```puppet
$azure_management_policy_properties = {
  policy => $azure_management_policy_schema
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|policy | [ManagementPolicySchema](#managementpolicyschema) | true | The Storage Account ManagementPolicy, in JSON format. See more details in: https://docs.microsoft.com/en-us/azure/storage/common/storage-lifecycle-managment-concepts. |
        
## ManagementPolicySchema

The Storage Account ManagementPolicies Rules. See more details in: https://docs.microsoft.com/en-us/azure/storage/common/storage-lifecycle-managment-concepts.

```puppet
$azure_management_policy_schema = {
  rules => $azure_management_policy_rule
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|rules | [ManagementPolicyRule](#managementpolicyrule) | true | The Storage Account ManagementPolicies Rules. See more details in: https://docs.microsoft.com/en-us/azure/storage/common/storage-lifecycle-managment-concepts. |
        
## ManagementPolicyRule

An object that wraps the Lifecycle rule. Each rule is uniquely defined by name.

```puppet
$azure_management_policy_rule = {
  definition => $azure_management_policy_definition
  enabled => "enabled (optional)",
  name => "name",
  type => "type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|definition | [ManagementPolicyDefinition](#managementpolicydefinition) | true | An object that defines the Lifecycle rule. |
|enabled | Boolean | false | Rule is enabled if set to true. |
|name | String | true | A rule name can contain any combination of alpha numeric characters. Rule name is case-sensitive. It must be unique within a policy. |
|type | String | true | The valid value is Lifecycle |
        
## ManagementPolicyDefinition

An object that defines the Lifecycle rule. Each definition is made up with a filters set and an actions set.

```puppet
$azure_management_policy_definition = {
  actions => $azure_management_policy_action
  filters => $azure_management_policy_filter
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|actions | [ManagementPolicyAction](#managementpolicyaction) | true | An object that defines the action set. |
|filters | [ManagementPolicyFilter](#managementpolicyfilter) | false | An object that defines the filter set. |
        
## ManagementPolicyAction

Actions are applied to the filtered blobs when the execution condition is met.

```puppet
$azure_management_policy_action = {
  baseBlob => $azure_management_policy_base_blob
  snapshot => $azure_management_policy_snap_shot
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|baseBlob | [ManagementPolicyBaseBlob](#managementpolicybaseblob) | false | The management policy action for base blob |
|snapshot | [ManagementPolicySnapShot](#managementpolicysnapshot) | false | The management policy action for snapshot |
        
## ManagementPolicyBaseBlob

Management policy action for base blob.

```puppet
$azure_management_policy_base_blob = {
  delete => $azure_date_after_modification
  tierToArchive => $azure_date_after_modification
  tierToCool => $azure_date_after_modification
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|delete | [DateAfterModification](#dateaftermodification) | false | The function to delete the blob |
|tierToArchive | [DateAfterModification](#dateaftermodification) | false | The function to tier blobs to archive storage. Support blobs currently at Hot or Cool tier |
|tierToCool | [DateAfterModification](#dateaftermodification) | false | The function to tier blobs to cool storage. Support blobs currently at Hot tier |
        
## DateAfterModification

Object to define the number of days after last modification.

```puppet
$azure_date_after_modification = {
  daysAfterModificationGreaterThan => "daysAfterModificationGreaterThan",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|daysAfterModificationGreaterThan | Numeric | true | Value indicating the age in days after last modification |
        
        
        
## ManagementPolicySnapShot

Management policy action for snapshot.

```puppet
$azure_management_policy_snap_shot = {
  delete => $azure_date_after_creation
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|delete | [DateAfterCreation](#dateaftercreation) | false | The function to delete the blob snapshot |
        
## DateAfterCreation

Object to define the number of days after creation.

```puppet
$azure_date_after_creation = {
  daysAfterCreationGreaterThan => "daysAfterCreationGreaterThan",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|daysAfterCreationGreaterThan | Numeric | true | Value indicating the age in days after creation |
        
## ManagementPolicyFilter

Filters limit rule actions to a subset of blobs within the storage account. If multiple filters are defined, a logical AND is performed on all filters. 

```puppet
$azure_management_policy_filter = {
  blobTypes => "blobTypes",
  prefixMatch => "prefixMatch (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|blobTypes | Array | true | An array of predefined enum values. Only blockBlob is supported. |
|prefixMatch | Array | false | An array of strings for prefixes to be match. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ManagementPolicy

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Storage/storageAccounts/%{account_name}/managementPolicies/%{management_policy_name}`|Put|Sets the managementpolicy to the specified storage account.|ManagementPolicies_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Storage/storageAccounts/%{account_name}/managementPolicies/%{management_policy_name}`|Get|Gets the managementpolicy associated with the specified storage account.|ManagementPolicies_Get|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Storage/storageAccounts/%{account_name}/managementPolicies/%{management_policy_name}`|Put|Sets the managementpolicy to the specified storage account.|ManagementPolicies_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Storage/storageAccounts/%{account_name}/managementPolicies/%{management_policy_name}`|Delete|Deletes the managementpolicy associated with the specified storage account.|ManagementPolicies_Delete|
