Document: "resources"
Path: "/root/specs/specification/resources/resource-manager/Microsoft.Resources/stable/2018-02-01/resources.json")

## GenericResource

```puppet
azure_generic_resource {
  api_version => "api_version",
  id => "id (optional)",
  identity => $azure_identity
  kind => "kind (optional)",
  location => "location (optional)",
  managed_by => "managed_by (optional)",
  name => "name (optional)",
  parameters => "parameters",
  plan => $azure_plan
  properties => "properties (optional)",
  resource_id => "resource_id",
  sku => $azure_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the operation. |
|id | String | false | Resource ID |
|identity | [Identity](#identity) | false | The identity of the resource. |
|kind | String | false | The kind of the resource. |
|location | String | false | Resource location |
|managed_by | String | false | ID of the resource that manages this resource. |
|name | String | false | Resource name |
|parameters | Hash | true | Create or update resource parameters. |
|plan | [Plan](#plan) | false | The plan of the resource. |
|properties | Hash | false | The resource properties. |
|resource_id | String | true | The fully qualified ID of the resource, including the resource name and resource type. Use the format, /subscriptions/{guid}/resourceGroups/{resource-group-name}/{resource-provider-namespace}/{resource-type}/{resource-name} |
|sku | [Sku](#sku) | false | The SKU of the resource. |
|subscription_id | String | true | The ID of the target subscription. |
|tags | Hash | false | Resource tags |
|type | String | false | Resource type |
        
## Identity

```puppet
$azure_identity = {
  principalId => "principalId (optional)",
  tenantId => "tenantId (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|principalId | String | false | The principal ID of resource identity. |
|tenantId | String | false | The tenant ID of resource. |
|type | String | false | The identity type. |
        
## Plan

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
|Create|`/%{resource_id}`|Put|Create a resource by ID.|Resources_CreateOrUpdateById|
|List - list all|`/subscriptions/%{subscription_id}/resources`|Get|Get all the resources in a subscription.|Resources_List|
|List - get one|`/%{resource_id}`|Get|Gets a resource by ID.|Resources_GetById|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/resources`|Get|Get all the resources for a resource group.|Resources_ListByResourceGroup|
|Update|`/%{resource_id}`|Put|Create a resource by ID.|Resources_CreateOrUpdateById|
|Delete|`/%{resource_id}`|Delete|Deletes a resource by ID.|Resources_DeleteById|