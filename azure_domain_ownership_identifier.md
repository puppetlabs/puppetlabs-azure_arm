Document: "Domains"
Path: "/root/specs/specification/web/resource-manager/Microsoft.DomainRegistration/stable/2018-02-01/Domains.json")

## DomainOwnershipIdentifier

```puppet
azure_domain_ownership_identifier {
  api_version => "api_version",
  domain_name => "domain_name",
  domain_ownership_identifier => "domainOwnershipIdentifier",
  id => "id (optional)",
  kind => "kind (optional)",
  name => "name (optional)",
  properties => "properties (optional)",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|domain_name | String | true | Name of domain. |
|domain_ownership_identifier | Hash | true | A JSON representation of the domain ownership properties. |
|id | String | false | Resource Id. |
|kind | String | false | Kind of resource. |
|name | String | false | Resource Name. |
|properties | String | false | DomainOwnershipIdentifier resource specific properties |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |
|type | String | false | Resource type. |



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