Document: "expressRouteCircuit"
Path: "/root/specs/specification/network/resource-manager/Microsoft.Network/stable/2018-04-01/expressRouteCircuit.json")

## ExpressRouteCircuitAuthorization

```puppet
azure_express_route_circuit_authorization {
  api_version => "api_version",
  authorization_name => "authorization_name",
  authorization_parameters => "authorizationParameters",
  circuit_name => "circuit_name",
  etag => "etag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_authorization_properties_format
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|authorization_name | String | true | The name of the authorization. |
|authorization_parameters | Hash | true | Parameters supplied to the create or update express route circuit authorization operation. |
|circuit_name | String | true | The name of the express route circuit. |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|name | String | false | Gets name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [AuthorizationPropertiesFormat](#authorizationpropertiesformat) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## AuthorizationPropertiesFormat

```puppet
$azure_authorization_properties_format = {
  authorizationKey => "authorizationKey (optional)",
  authorizationUseStatus => "authorizationUseStatus (optional)",
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|authorizationKey | String | false | The authorization key. |
|authorizationUseStatus | String | false | AuthorizationUseStatus. Possible values are: 'Available' and 'InUse'. |
|provisioningState | String | false | Gets the provisioning state of the public IP resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ExpressRouteCircuitAuthorization

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteCircuits/%{circuit_name}/authorizations/%{authorization_name}`|Put|Creates or updates an authorization in the specified express route circuit.|ExpressRouteCircuitAuthorizations_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteCircuits/%{circuit_name}/authorizations/%{authorization_name}`|Get|Gets the specified authorization from the specified express route circuit.|ExpressRouteCircuitAuthorizations_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteCircuits/%{circuit_name}/authorizations`|Get|Gets all authorizations in an express route circuit.|ExpressRouteCircuitAuthorizations_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteCircuits/%{circuit_name}/authorizations/%{authorization_name}`|Put|Creates or updates an authorization in the specified express route circuit.|ExpressRouteCircuitAuthorizations_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/expressRouteCircuits/%{circuit_name}/authorizations/%{authorization_name}`|Delete|Deletes the specified authorization from the specified express route circuit.|ExpressRouteCircuitAuthorizations_Delete|