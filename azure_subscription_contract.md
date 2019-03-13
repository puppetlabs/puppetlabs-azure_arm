Document: "apimsubscriptions"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimsubscriptions.json")

## SubscriptionContract

Subscription details.

```puppet
azure_subscription_contract {
  api_version => "api_version",
  if_match => "if_match",
  parameters => "parameters",
  properties => $azure_subscription_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  sid => "sid",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|if_match | String | true | ETag of the Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update. |
|parameters | Hash | true | Create parameters. |
|properties | [SubscriptionContractProperties](#subscriptioncontractproperties) | false | Subscription contract properties. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|sid | String | true | Subscription entity Identifier. The entity represents the association between a user and a product in API Management. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## SubscriptionContractProperties

Subscription details.

```puppet
$azure_subscription_contract_properties = {
  displayName => "displayName (optional)",
  endDate => "endDate (optional)",
  expirationDate => "expirationDate (optional)",
  notificationDate => "notificationDate (optional)",
  primaryKey => "primaryKey",
  productId => "productId",
  secondaryKey => "secondaryKey",
  startDate => "startDate (optional)",
  state => "state",
  stateComment => "stateComment (optional)",
  userId => "userId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|displayName | String | false | The name of the subscription, or null if the subscription has no name. |
|endDate | String | false | Date when subscription was cancelled or expired. The setting is for audit purposes only and the subscription is not automatically cancelled. The subscription lifecycle can be managed by using the `state` property. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard. |
|expirationDate | String | false | Subscription expiration date. The setting is for audit purposes only and the subscription is not automatically expired. The subscription lifecycle can be managed by using the `state` property. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard. |
|notificationDate | String | false | Upcoming subscription expiration notification date. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard. |
|primaryKey | String | true | Subscription primary key. |
|productId | String | true | The product resource identifier of the subscribed product. The value is a valid relative URL in the format of /products/{productId} where {productId} is a product identifier. |
|secondaryKey | String | true | Subscription secondary key. |
|startDate | String | false | Subscription activation date. The setting is for audit purposes only and the subscription is not automatically activated. The subscription lifecycle can be managed by using the `state` property. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard. |
|state | String | true | Subscription state. Possible states are * active – the subscription is active, * suspended – the subscription is blocked, and the subscriber cannot call any APIs of the product, * submitted – the subscription request has been made by the developer, but has not yet been approved or rejected, * rejected – the subscription request has been denied by an administrator, * cancelled – the subscription has been cancelled by the developer or administrator, * expired – the subscription reached its expiration date and was deactivated. |
|stateComment | String | false | Optional subscription comment added by an administrator. |
|userId | String | true | The user resource identifier of the subscription owner. The value is a valid relative URL in the format of /users/{uid} where {uid} is a user identifier. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the SubscriptionContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/subscriptions/%{sid}`|Put|Creates or updates the subscription of specified user to the specified product.|Subscription_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/subscriptions/%{sid}`|Get|Gets the specified Subscription entity.|Subscription_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/subscriptions`|Get|Lists all subscriptions of the API Management service instance.|Subscription_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/subscriptions/%{sid}`|Put|Creates or updates the subscription of specified user to the specified product.|Subscription_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/subscriptions/%{sid}`|Delete|Deletes the specified subscription.|Subscription_Delete|
