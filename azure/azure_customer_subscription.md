Document: "CustomerSubscription"
Path: "/root/specs/specification/azurestack/resource-manager/Microsoft.AzureStack/stable/2017-06-01/CustomerSubscription.json")

## CustomerSubscription

```puppet
azure_customer_subscription {
  api_version => "api_version",
  customer_creation_parameters => "customerCreationParameters",
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_customer_subscription_properties
  registration_name => "registration_name",
  resource_group => "resource_group",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API Version. |
|customer_creation_parameters | Hash | true | Parameters use to create a customer subscription. |
|etag | String | false | The entity tag used for optimistic concurency when modifying the resource. |
|id | String | false | ID of the resource. |
|location | String | false | Location of the resource. |
|name | String | false | Name of the resource. |
|properties | [CustomerSubscriptionProperties](#customersubscriptionproperties) | false | Customer subscription properties. |
|registration_name | String | true | Name of the Azure Stack registration. |
|resource_group | String | true | Name of the resource group. |
|subscription_id | String | true | Subscription credentials that uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Custom tags for the resource. |
|type | String | false | Type of Resource. |
        
## CustomerSubscriptionProperties

```puppet
$azure_customer_subscription_properties = {
  tenantId => "tenantId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|tenantId | String | false | Tenant Id. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the CustomerSubscription

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group}/providers/Microsoft.AzureStack/registrations/%{registration_name}/customerSubscriptions/%{customer_subscription_name}`|Put|Creates a new customer subscription under a registration.|CustomerSubscriptions_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group}/providers/Microsoft.AzureStack/registrations/%{registration_name}/customerSubscriptions/%{customer_subscription_name}`|Get|Returns the specified product.|CustomerSubscriptions_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group}/providers/Microsoft.AzureStack/registrations/%{registration_name}/customerSubscriptions`|Get|Returns a list of products.|CustomerSubscriptions_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group}/providers/Microsoft.AzureStack/registrations/%{registration_name}/customerSubscriptions/%{customer_subscription_name}`|Put|Creates a new customer subscription under a registration.|CustomerSubscriptions_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group}/providers/Microsoft.AzureStack/registrations/%{registration_name}/customerSubscriptions/%{customer_subscription_name}`|Delete|Deletes a customer subscription under a registration.|CustomerSubscriptions_Delete|