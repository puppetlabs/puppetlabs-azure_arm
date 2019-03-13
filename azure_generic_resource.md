Document: "resources"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/resources/resource-manager/Microsoft.Resources/stable/2018-05-01/resources.json")

## GenericResource

Resource information.

```puppet
azure_generic_resource {
  api_version => "api_version",
  identity => $azure_identity
  kind => "kind (optional)",
  location => "location (optional)",
  managed_by => "managed_by (optional)",
  parameters => "parameters",
  parent_resource_path => "parent_resource_path",
  plan => $azure_plan
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  resource_provider_namespace => "resource_provider_namespace",
  resource_type => "resource_type",
  sku => $azure_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the operation. |
|identity | [Identity](#identity) | false | The identity of the resource. |
|kind | String | false | The kind of the resource. |
|location | String | false | Resource location |
|managed_by | String | false | ID of the resource that manages this resource. |
|parameters | Hash | true | Parameters for creating or updating the resource. |
|parent_resource_path | String | true | The parent resource identity. |
|plan | [Plan](#plan) | false | The plan of the resource. |
|properties | Hash | false | The resource properties. |
|resource_group_name | String | true | The name of the resource group for the resource. The name is case insensitive. |
|resource_name | String | true | The name of the resource to create. |
|resource_provider_namespace | String | true | The namespace of the resource provider. |
|resource_type | String | true | The resource type of the resource to create. |
|sku | [Sku](#sku) | false | The SKU of the resource. |
|subscription_id | String | true | The ID of the target subscription. |
|tags | Hash | false | Resource tags |
        
## Identity

Identity for the resource.

```puppet
$azure_identity = {
  type => "type (optional)",
  userAssignedIdentities => "userAssignedIdentities (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|type | String | false | The identity type. |
|userAssignedIdentities | Hash | false | The list of user identities associated with the resource. The user identity dictionary key references will be ARM resource ids in the form: '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{identityName}'. |
        
## Plan

Plan for the resource.

```puppet
$azure_plan = {
  name => "name (optional)",
  product => "product (optional)",
  promotionCode => "promotionCode (optional)",
  publisher => "publisher (optional)",
  version => "version (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | The plan ID. |
|product | String | false | The offer ID. |
|promotionCode | String | false | The promotion code. |
|publisher | String | false | The publisher ID. |
|version | String | false | The plan's version. |
        
## Sku

SKU for the resource.

```puppet
$azure_sku = {
  capacity => "1234 (optional)",
  family => "family (optional)",
  model => "model (optional)",
  name => "name (optional)",
  size => "size (optional)",
  tier => "tier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|capacity | Integer | false | The SKU capacity. |
|family | String | false | The SKU family. |
|model | String | false | The SKU model. |
|name | String | false | The SKU name. |
|size | String | false | The SKU size. |
|tier | String | false | The SKU tier. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the GenericResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/%{resource_provider_namespace}/%{parent_resource_path}/%{resource_type}/%{resource_name}`|Put|Creates a resource.|Resources_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/resources`|Get|Get all the resources in a subscription.|Resources_List|
|List - get one|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/%{resource_provider_namespace}/%{parent_resource_path}/%{resource_type}/%{resource_name}`|Get|Gets a resource.|Resources_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/resources`|Get|Get all the resources for a resource group.|Resources_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/%{resource_provider_namespace}/%{parent_resource_path}/%{resource_type}/%{resource_name}`|Put|Creates a resource.|Resources_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/%{resource_provider_namespace}/%{parent_resource_path}/%{resource_type}/%{resource_name}`|Delete|Deletes a resource.|Resources_Delete|
