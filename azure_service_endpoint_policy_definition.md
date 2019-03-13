Document: "serviceEndpointPolicy"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/network/resource-manager/Microsoft.Network/stable/2018-11-01/serviceEndpointPolicy.json")

## ServiceEndpointPolicyDefinition

Service Endpoint policy definitions.

```puppet
azure_service_endpoint_policy_definition {
  api_version => "api_version",
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_service_endpoint_policy_definition_properties_format
  resource_group_name => "resource_group_name",
  service_endpoint_policy_definitions => "ServiceEndpointPolicyDefinitions",
  service_endpoint_policy_name => "service_endpoint_policy_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | The name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [ServiceEndpointPolicyDefinitionPropertiesFormat](#serviceendpointpolicydefinitionpropertiesformat) | false | Properties of the service endpoint policy definition |
|resource_group_name | String | true | The name of the resource group. |
|service_endpoint_policy_definitions | Hash | true | Parameters supplied to the create or update service endpoint policy operation. |
|service_endpoint_policy_name | String | true | The name of the service endpoint policy. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## ServiceEndpointPolicyDefinitionPropertiesFormat

Service Endpoint policy definition resource.

```puppet
$azure_service_endpoint_policy_definition_properties_format = {
  description => "description (optional)",
  service => "service (optional)",
  serviceResources => "serviceResources (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | A description for this rule. Restricted to 140 chars. |
|service | String | false | service endpoint name. |
|serviceResources | Array | false | A list of service resources. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ServiceEndpointPolicyDefinition

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/serviceEndpointPolicies/%{service_endpoint_policy_name}/serviceEndpointPolicyDefinitions/%{service_endpoint_policy_definition_name}`|Put|Creates or updates a service endpoint policy definition in the specified service endpoint policy.|ServiceEndpointPolicyDefinitions_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/serviceEndpointPolicies/%{service_endpoint_policy_name}/serviceEndpointPolicyDefinitions/%{service_endpoint_policy_definition_name}`|Get|Get the specified service endpoint policy definitions from service endpoint policy.|ServiceEndpointPolicyDefinitions_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/serviceEndpointPolicies/%{service_endpoint_policy_name}/serviceEndpointPolicyDefinitions`|Get|Gets all service endpoint policy definitions in a service end point policy.|ServiceEndpointPolicyDefinitions_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/serviceEndpointPolicies/%{service_endpoint_policy_name}/serviceEndpointPolicyDefinitions/%{service_endpoint_policy_definition_name}`|Put|Creates or updates a service endpoint policy definition in the specified service endpoint policy.|ServiceEndpointPolicyDefinitions_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/serviceEndpointPolicies/%{service_endpoint_policy_name}/serviceEndpointPolicyDefinitions/%{service_endpoint_policy_definition_name}`|Delete|Deletes the specified ServiceEndpoint policy definitions.|ServiceEndpointPolicyDefinitions_Delete|
