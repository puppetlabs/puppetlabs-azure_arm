Document: "frontdoor"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/frontdoor/resource-manager/Microsoft.Network/stable/2019-05-01/frontdoor.json")

## LoadBalancingSettingsModel

Load balancing settings for a backend pool

```puppet
azure_load_balancing_settings_model {
  api_version => "api_version",
  front_door_name => "front_door_name",
  id => "id (optional)",
  load_balancing_settings_name => "load_balancing_settings_name",
  load_balancing_settings_parameters => "loadBalancingSettingsParameters",
  name => "name (optional)",
  properties => $azure_load_balancing_settings_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|front_door_name | String | true | Name of the Front Door which is globally unique. |
|id | String | false | Resource ID. |
|load_balancing_settings_name | String | true | Name of the load balancing settings which is unique within the Front Door. |
|load_balancing_settings_parameters | Hash | true | LoadBalancingSettings properties needed to create a new Front Door. |
|name | String | false | Resource name. |
|properties | [LoadBalancingSettingsProperties](#loadbalancingsettingsproperties) | false | Properties of the load balancing settings |
|resource_group_name | String | true | Name of the Resource group within the Azure subscription. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## LoadBalancingSettingsProperties

The JSON object that contains the properties required to create load balancing settings

```puppet
$azure_load_balancing_settings_properties = {
  additionalLatencyMilliseconds => "1234 (optional)",
  resourceState => $azure_resource_state
  sampleSize => "1234 (optional)",
  successfulSamplesRequired => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|additionalLatencyMilliseconds | Integer | false | The additional latency in milliseconds for probes to fall into the lowest latency bucket |
|resourceState | [ResourceState](#resourcestate) | false | Resource status. |
|sampleSize | Integer | false | The number of samples to consider for load balancing decisions |
|successfulSamplesRequired | Integer | false | The number of samples within the sample period that must succeed |
        
## ResourceState



```puppet
$azure_resource_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the LoadBalancingSettingsModel

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/loadBalancingSettings/%{load_balancing_settings_name}`|Put|Creates a new LoadBalancingSettings with the specified Rule name within the specified Front Door.|LoadBalancingSettings_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/loadBalancingSettings/%{load_balancing_settings_name}`|Get|Gets a LoadBalancingSettings with the specified Rule name within the specified Front Door.|LoadBalancingSettings_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/loadBalancingSettings`|Get|Lists all of the LoadBalancingSettings within a Front Door.|LoadBalancingSettings_ListByFrontDoor|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/loadBalancingSettings/%{load_balancing_settings_name}`|Put|Creates a new LoadBalancingSettings with the specified Rule name within the specified Front Door.|LoadBalancingSettings_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/loadBalancingSettings/%{load_balancing_settings_name}`|Delete|Deletes an existing LoadBalancingSettings with the specified parameters.|LoadBalancingSettings_Delete|
