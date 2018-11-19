Document: "service"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/web/resource-manager/Microsoft.Web/stable/2015-08-01/service.json")

## Domain

Represents a domain

```puppet
azure_web_domain {
  api_version => "api_version",
  domain => "domain",
  id => "id (optional)",
  kind => "kind (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|domain | Hash | true | Domain registration information |
|id | String | false | Resource Id |
|kind | String | false | Kind of resource |
|location | String | false | Resource Location |
|name | String | false | Resource Name |
|properties | String | false |  |
|resource_group_name | String | true | &gt;Name of the resource group |
|subscription_id | String | true | Subscription Id |
|tags | Hash | false | Resource tags |
|type | String | false | Resource type |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Domain

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DomainRegistration/domains/%{domain_name}`|Put||Domains_CreateOrUpdateDomain|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.DomainRegistration/domains`|Get||GlobalDomainRegistration_GetAllDomains|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DomainRegistration/domains/%{domain_name}/operationresults/%{operation_id}`|Get||Domains_GetDomainOperation|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DomainRegistration/domains`|Get||Domains_GetDomains|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DomainRegistration/domains/%{domain_name}`|Put||Domains_CreateOrUpdateDomain|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DomainRegistration/domains/%{domain_name}`|Delete||Domains_DeleteDomain|
