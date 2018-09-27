Document: "servicebus"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/servicebus/resource-manager/Microsoft.ServiceBus/stable/2017-04-01/servicebus.json")

## SBNamespace

Description of a namespace resource.

```puppet
azure_sb_namespace {
  api_version => "api_version",
  location => "location (optional)",
  namespace_name => "namespace_name",
  parameters => "parameters",
  properties => $azure_sb_namespace_properties
  resource_group_name => "resource_group_name",
  sku => $azure_sb_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|location | String | false | The Geo-location where the resource lives |
|namespace_name | String | true | The namespace name. |
|parameters | Hash | true | Parameters supplied to create a namespace resource. |
|properties | [SBNamespaceProperties](#sbnamespaceproperties) | false | Properties of the namespace. |
|resource_group_name | String | true | Name of the Resource group within the Azure subscription. |
|sku | [SBSku](#sbsku) | false | Porperties of Sku |
|subscription_id | String | true | Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
        
## SBNamespaceProperties

Properties of the namespace.

```puppet
$azure_sb_namespace_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## SBSku

SKU of the namespace.

```puppet
$azure_sb_sku = {
  capacity => "1234 (optional)",
  name => "name",
  tier => "tier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|capacity | Integer | false | The specified messaging units for the tier. For Premium tier, capacity are 1,2 and 4. |
|name | String | true | Name of this SKU. |
|tier | String | false | The billing tier of this particular SKU. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the SBNamespace

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}`|Put|Creates or updates a service namespace. Once created, this namespace's resource manifest is immutable. This operation is idempotent.|Namespaces_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.ServiceBus/namespaces`|Get|Gets all the available namespaces within the subscription, irrespective of the resource groups.|Namespaces_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}`|Get|Gets a description for the specified namespace.|Namespaces_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces`|Get|Gets the available namespaces within a resource group.|Namespaces_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}`|Put|Creates or updates a service namespace. Once created, this namespace's resource manifest is immutable. This operation is idempotent.|Namespaces_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ServiceBus/namespaces/%{namespace_name}`|Delete|Deletes an existing namespace. This operation also removes all associated resources under the namespace.|Namespaces_Delete|
