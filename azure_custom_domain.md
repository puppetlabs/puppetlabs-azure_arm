Document: "cdn"
Path: "/root/specs/specification/cdn/resource-manager/Microsoft.Cdn/stable/2017-10-12/cdn.json")

## CustomDomain

```puppet
azure_custom_domain {
  api_version => "api_version",
  endpoint_name => "endpoint_name",
  id => "id (optional)",
  name => "name (optional)",
  profile_name => "profile_name",
  properties => $azure_custom_domain_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. Current version is 2017-04-02. |
|endpoint_name | String | true | Name of the endpoint under the profile which is unique globally. |
|id | String | false | Resource ID. |
|name | String | false | Resource name. |
|profile_name | String | true | Name of the CDN profile which is unique within the resource group. |
|properties | [CustomDomainProperties](#customdomainproperties) | false |  |
|resource_group_name | String | true | Name of the Resource group within the Azure subscription. |
|subscription_id | String | true | Azure Subscription ID. |
|type | String | false | Resource type. |
        
## CustomDomainProperties

```puppet
$azure_custom_domain_properties = {
  customHttpsProvisioningState => "customHttpsProvisioningState (optional)",
  customHttpsProvisioningSubstate => "customHttpsProvisioningSubstate (optional)",
  hostName => "hostName",
  provisioningState => "provisioningState (optional)",
  resourceState => "resourceState (optional)",
  validationData => "validationData (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|customHttpsProvisioningState | String | false | Provisioning status of Custom Https of the custom domain. |
|customHttpsProvisioningSubstate | String | false | Provisioning substate shows the progress of custom HTTPS enabling/disabling process step by step. |
|hostName | String | true | The host name of the custom domain. Must be a domain name. |
|provisioningState | String | false | Provisioning status of the custom domain. |
|resourceState | String | false | Resource status of the custom domain. |
|validationData | String | false | Special validation or data may be required when delivering CDN to some regions due to local compliance reasons. E.g. ICP license number of a custom domain is required to deliver content in China. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the CustomDomain

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cdn/profiles/%{profile_name}/endpoints/%{endpoint_name}/customDomains/%{custom_domain_name}`|Put|Creates a new custom domain within an endpoint.|CustomDomains_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cdn/profiles/%{profile_name}/endpoints/%{endpoint_name}/customDomains/%{custom_domain_name}`|Get|Gets an exisitng custom domain within an endpoint.|CustomDomains_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cdn/profiles/%{profile_name}/endpoints/%{endpoint_name}/customDomains`|Get|Lists all of the existing custom domains within an endpoint.|CustomDomains_ListByEndpoint|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cdn/profiles/%{profile_name}/endpoints/%{endpoint_name}/customDomains/%{custom_domain_name}`|Put|Creates a new custom domain within an endpoint.|CustomDomains_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cdn/profiles/%{profile_name}/endpoints/%{endpoint_name}/customDomains/%{custom_domain_name}`|Delete|Deletes an existing custom domain within an endpoint.|CustomDomains_Delete|