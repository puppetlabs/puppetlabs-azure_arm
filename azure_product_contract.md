Document: "apimproducts"


Path: "/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimproducts.json")

## ProductContract

Product details.

```puppet
azure_product_contract {
  api_version => "api_version",
  if_match => "if_match",
  parameters => "parameters",
  product_id => "product_id",
  properties => $azure_product_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|if_match | String | true | ETag of the Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update. |
|parameters | Hash | true | Create or update parameters. |
|product_id | String | true | Product identifier. Must be unique in the current API Management service instance. |
|properties | [ProductContractProperties](#productcontractproperties) | false | Product entity contract properties. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## ProductContractProperties

Product profile.

```puppet
$azure_product_contract_properties = {
  approvalRequired => "approvalRequired (optional)",
  description => "description (optional)",
  displayName => "displayName",
  state => "state (optional)",
  subscriptionRequired => "subscriptionRequired (optional)",
  subscriptionsLimit => "1234 (optional)",
  terms => "terms (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|approvalRequired | Boolean | false | whether subscription approval is required. If false, new subscriptions will be approved automatically enabling developers to call the product’s APIs immediately after subscribing. If true, administrators must manually approve the subscription before the developer can any of the product’s APIs. Can be present only if subscriptionRequired property is present and has a value of false. |
|description | String | false | Product description. May include HTML formatting tags. |
|displayName | String | true | Product name. |
|state | String | false | whether product is published or not. Published products are discoverable by users of developer portal. Non published products are visible only to administrators. Default state of Product is notPublished. |
|subscriptionRequired | Boolean | false | Whether a product subscription is required for accessing APIs included in this product. If true, the product is referred to as 'protected' and a valid subscription key is required for a request to an API included in the product to succeed. If false, the product is referred to as 'open' and requests to an API included in the product can be made without a subscription key. If property is omitted when creating a new product it's value is assumed to be true. |
|subscriptionsLimit | Integer | false | Whether the number of subscriptions a user can have to this product at the same time. Set to null or omit to allow unlimited per user subscriptions. Can be present only if subscriptionRequired property is present and has a value of false. |
|terms | String | false | Product terms of use. Developers trying to subscribe to the product will be presented and required to accept these terms before they can complete the subscription process. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ProductContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/products/%{product_id}`|Put|Creates or Updates a product.|Product_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/products/%{product_id}`|Get|Gets the details of the product specified by its identifier.|Product_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/products`|Get|Lists a collection of products in the specified service instance.|Product_ListByService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/products/%{product_id}`|Put|Creates or Updates a product.|Product_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/products/%{product_id}`|Delete|Delete product.|Product_Delete|
