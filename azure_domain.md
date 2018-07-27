Document: "Domains"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/web/resource-manager/Microsoft.DomainRegistration/stable/2018-02-01/Domains.json")

## Domain

Information about a domain.

```puppet
azure_domain {
  api_version => "api_version",
  domain => "domain",
  kind => "kind (optional)",
  location => "location (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|domain | Hash | true | Domain registration information. |
|kind | String | false | Kind of resource. |
|location | String | false | Resource Location. |
|properties | String | false | Domain resource specific properties |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |
|tags | Hash | false | Resource tags. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Domain

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DomainRegistration/domains/%{domain_name}`|Put|Creates or updates a domain.|Domains_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.DomainRegistration/domains`|Get|Get all domains in a subscription.|Domains_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DomainRegistration/domains/%{domain_name}`|Get|Get a domain.|Domains_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.DomainRegistration/domains`|Get|Get all domains in a subscription.|Domains_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DomainRegistration/domains/%{domain_name}`|Put|Creates or updates a domain.|Domains_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DomainRegistration/domains/%{domain_name}`|Delete|Delete a domain.|Domains_Delete|
