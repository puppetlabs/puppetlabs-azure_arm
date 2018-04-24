Document: "EventHub"
Path: "/root/specs/specification/eventhub/resource-manager/Microsoft.EventHub/stable/2017-04-01/EventHub.json")

## EHNamespace

```puppet
azure_eh_namespace {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  namespace_name => "namespace_name",
  parameters => "parameters",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  sku => $azure_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API Version. |
|id | String | false | Resource Id |
|location | String | false | Resource location |
|name | String | false | Resource name |
|namespace_name | String | true | The Namespace name |
|parameters | Hash | true | Parameters for creating a namespace resource. |
|properties | String | false | Namespace properties supplied for create namespace operation. |
|resource_group_name | String | true | Name of the resource group within the azure subscription. |
|sku | [Sku](#sku) | false | Properties of sku resource |
|subscription_id | String | true | Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
|type | String | false | Resource type |
        
## Sku

```puppet
$azure_sku = {
  capacity => "1234 (optional)",
  name => "name",
  tier => "tier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|capacity | Integer | false | The Event Hubs throughput units, vaule should be 0 to 20 throughput units. |
|name | String | true | Name of this SKU. |
|tier | String | false | The billing tier of this particular SKU. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the EHNamespace

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}`|Put|Creates or updates a namespace. Once created, this namespace's resource manifest is immutable. This operation is idempotent.|Namespaces_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.EventHub/namespaces`|Get|Lists all the available Namespaces within a subscription, irrespective of the resource groups.|Namespaces_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}`|Get|Gets the description of the specified namespace.|Namespaces_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.EventHub/namespaces`|Get|Lists all the available Namespaces within a subscription, irrespective of the resource groups.|Namespaces_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}`|Put|Creates or updates a namespace. Once created, this namespace's resource manifest is immutable. This operation is idempotent.|Namespaces_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventHub/namespaces/%{namespace_name}`|Delete|Deletes an existing namespace. This operation also removes all associated resources under the namespace.|Namespaces_Delete|