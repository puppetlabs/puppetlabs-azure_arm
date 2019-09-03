Document: "frontdoor"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/frontdoor/resource-manager/Microsoft.Network/stable/2019-05-01/frontdoor.json")

## FrontDoor

Front Door represents a collection of backend endpoints to route traffic to along with rules that specify how traffic is sent there.

```puppet
azure_front_door {
  api_version => "api_version",
  front_door_parameters => "frontDoorParameters",
  location => "location (optional)",
  properties => $azure_front_door_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|front_door_parameters | Hash | true | Front Door properties needed to create a new Front Door. |
|location | String | false | Resource location. |
|properties | [FrontDoorProperties](#frontdoorproperties) | false | Properties of the Front Door Load Balancer |
|resource_group_name | String | true | Name of the Resource group within the Azure subscription. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
        
## FrontDoorProperties

The JSON object that contains the properties required to create an endpoint.

```puppet
$azure_front_door_properties = {
  backendPools => "backendPools (optional)",
  backendPoolsSettings => "backendPoolsSettings (optional)",
  enabledState => "enabledState (optional)",
  friendlyName => "friendlyName (optional)",
  frontendEndpoints => "frontendEndpoints (optional)",
  healthProbeSettings => "healthProbeSettings (optional)",
  loadBalancingSettings => "loadBalancingSettings (optional)",
  resourceState => $azure_resource_state
  routingRules => "routingRules (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|backendPools | Array | false | Backend pools available to routing rules. |
|backendPoolsSettings | String | false | Settings for all backendPools |
|enabledState | String | false | Operational status of the Front Door load balancer. Permitted values are 'Enabled' or 'Disabled' |
|friendlyName | String | false | A friendly name for the frontDoor |
|frontendEndpoints | Array | false | Frontend endpoints available to routing rules. |
|healthProbeSettings | Array | false | Health probe settings associated with this Front Door instance. |
|loadBalancingSettings | Array | false | Load balancing settings associated with this Front Door instance. |
|resourceState | [ResourceState](#resourcestate) | false | Resource status of the Front Door. |
|routingRules | Array | false | Routing rules associated with this Front Door. |
        
## ResourceState



```puppet
$azure_resource_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the FrontDoor

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}`|Put|Creates a new Front Door with a Front Door name under the specified subscription and resource group.|FrontDoors_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/frontDoors`|Get|Lists all of the Front Doors within an Azure subscription.|FrontDoors_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}`|Get|Gets a Front Door with the specified Front Door name under the specified subscription and resource group.|FrontDoors_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors`|Get|Lists all of the Front Doors within a resource group under a subscription.|FrontDoors_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}`|Put|Creates a new Front Door with a Front Door name under the specified subscription and resource group.|FrontDoors_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}`|Delete|Deletes an existing Front Door with the specified parameters.|FrontDoors_Delete|
