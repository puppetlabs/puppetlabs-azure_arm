Document: "resources"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/resources/resource-manager/Microsoft.Resources/stable/2019-08-01/resources.json")

## GenericResource

Resource information.

```puppet
azure_generic_resource {
  api_version => "api_version",
  identity => $azure_identity
  kind => "kind (optional)",
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
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the operation. |
|identity | [Identity](#identity) | false | The identity of the resource. |
|kind | String | false | The kind of the resource. |
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
        
## Identity

Identity for the resource.

```puppet
$azure_identity = {
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|type | String | false | The identity type. |
        
## Plan

Plan for the resource.

```puppet
$azure_plan = {
  name => "name",
  product => "product",
  promotionCode => "promotionCode (optional)",
  publisher => "publisher",
  version => "version (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | A user defined name of the 3rd Party Artifact that is being procured. |
|product | String | true | The 3rd Party artifact that is being procured. E.g. NewRelic. Product maps to the OfferID specified for the artifact at the time of Data Market onboarding.  |
|promotionCode | String | false | A publisher provided promotion code as provisioned in Data Market for the said product/artifact. |
|publisher | String | true | The publisher of the 3rd Party Artifact that is being bought. E.g. NewRelic |
|version | String | false | The version of the desired product/artifact. |
        
## Sku

The resource model definition representing SKU

```puppet
$azure_sku = {
  capacity => "1234 (optional)",
  family => "family (optional)",
  name => "name",
  size => "size (optional)",
  tier => "tier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|capacity | Integer | false | If the SKU supports scale out/in then the capacity integer should be included. If scale out/in is not possible for the resource this may be omitted. |
|family | String | false | If the service has different generations of hardware, for the same SKU, then that can be captured here. |
|name | String | true | The name of the SKU. Ex - P3. It is typically a letter+number code |
|size | String | false | The SKU size. When the name field is the combination of tier and some other value, this would be the standalone code.  |
|tier | String | false | This field is required to be implemented by the Resource Provider if the service has more than one tier, but is not required on a PUT. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the GenericResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/%{resource_provider_namespace}/%{parent_resource_path}/%{resource_type}/%{resource_name}`|Put|Creates a resource.|Resources_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/resources`|Get|Get all the resources in a subscription.|Resources_List|
|List - get one|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/%{resource_provider_namespace}/%{parent_resource_path}/%{resource_type}/%{resource_name}`|Get|Gets a resource.|Resources_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resources`|Get|Get all the resources in a subscription.|Resources_List|
|Update|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/%{resource_provider_namespace}/%{parent_resource_path}/%{resource_type}/%{resource_name}`|Put|Creates a resource.|Resources_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/%{resource_provider_namespace}/%{parent_resource_path}/%{resource_type}/%{resource_name}`|Delete|Deletes a resource.|Resources_Delete|
