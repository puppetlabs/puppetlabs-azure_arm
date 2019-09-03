Document: "Domains"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/web/resource-manager/Microsoft.DomainRegistration/stable/2018-02-01/Domains.json")

## DomainOwnershipIdentifier

Domain ownership Identifier.

```puppet
azure_domain_ownership_identifier {
  api_version => "api_version",
  domain_name => "domain_name",
  domain_ownership_identifier => "domainOwnershipIdentifier",
  kind => "kind (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|domain_name | String | true | Name of domain. |
|domain_ownership_identifier | Hash | true | A JSON representation of the domain ownership properties. |
|kind | String | false | Kind of resource. |
|properties | String | false | DomainOwnershipIdentifier resource specific properties |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DomainOwnershipIdentifier

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DomainRegistration/domains/%{domain_name}/domainOwnershipIdentifiers/%{name}`|Put|Creates an ownership identifier for a domain or updates identifier details for an existing identifer|Domains_CreateOrUpdateOwnershipIdentifier|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DomainRegistration/domains/%{domain_name}/domainOwnershipIdentifiers/%{name}`|Get|Get ownership identifier for domain|Domains_GetOwnershipIdentifier|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DomainRegistration/domains/%{domain_name}/domainOwnershipIdentifiers`|Get|Lists domain ownership identifiers.|Domains_ListOwnershipIdentifiers|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DomainRegistration/domains/%{domain_name}/domainOwnershipIdentifiers/%{name}`|Put|Creates an ownership identifier for a domain or updates identifier details for an existing identifer|Domains_CreateOrUpdateOwnershipIdentifier|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DomainRegistration/domains/%{domain_name}/domainOwnershipIdentifiers/%{name}`|Delete|Delete ownership identifier for domain|Domains_DeleteOwnershipIdentifier|
