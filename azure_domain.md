Document: "EventGrid"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/eventgrid/resource-manager/Microsoft.EventGrid/stable/2019-06-01/EventGrid.json")

## Domain

EventGrid Domain.

```puppet
azure_domain {
  api_version => "api_version",
  domain_info => "domainInfo",
  location => "location (optional)",
  properties => $azure_domain_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|domain_info | Hash | true | Domain information. |
|location | String | false | Location of the resource. |
|properties | [DomainProperties](#domainproperties) | false | Properties of the domain. |
|resource_group_name | String | true | The name of the resource group within the user's subscription. |
|subscription_id | String | true | Subscription credentials that uniquely identify a Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Tags of the resource. |
        
## DomainProperties

Properties of the Domain.

```puppet
$azure_domain_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Domain

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventGrid/domains/%{domain_name}`|Put|Asynchronously creates or updates a new domain with the specified parameters.|Domains_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.EventGrid/domains`|Get|List all the domains under an Azure subscription.|Domains_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventGrid/domains/%{domain_name}`|Get|Get properties of a domain.|Domains_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventGrid/domains`|Get|List all the domains under a resource group.|Domains_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventGrid/domains/%{domain_name}`|Put|Asynchronously creates or updates a new domain with the specified parameters.|Domains_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.EventGrid/domains/%{domain_name}`|Delete|Delete existing domain.|Domains_Delete|
