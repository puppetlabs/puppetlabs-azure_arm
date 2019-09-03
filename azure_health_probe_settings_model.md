Document: "frontdoor"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/frontdoor/resource-manager/Microsoft.Network/stable/2019-05-01/frontdoor.json")

## HealthProbeSettingsModel

Load balancing settings for a backend pool

```puppet
azure_health_probe_settings_model {
  api_version => "api_version",
  front_door_name => "front_door_name",
  health_probe_settings_name => "health_probe_settings_name",
  health_probe_settings_parameters => "healthProbeSettingsParameters",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_health_probe_settings_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|front_door_name | String | true | Name of the Front Door which is globally unique. |
|health_probe_settings_name | String | true | Name of the health probe settings which is unique within the Front Door. |
|health_probe_settings_parameters | Hash | true | HealthProbeSettings properties needed to create a new Front Door. |
|id | String | false | Resource ID. |
|name | String | false | Resource name. |
|properties | [HealthProbeSettingsProperties](#healthprobesettingsproperties) | false | Properties of the health probe settings |
|resource_group_name | String | true | Name of the Resource group within the Azure subscription. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## HealthProbeSettingsProperties

The JSON object that contains the properties required to create a health probe settings.

```puppet
$azure_health_probe_settings_properties = {
  enabledState => "enabledState (optional)",
  healthProbeMethod => "healthProbeMethod (optional)",
  intervalInSeconds => "1234 (optional)",
  path => "path (optional)",
  protocol => "protocol (optional)",
  resourceState => $azure_resource_state
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|enabledState | String | false | Whether to enable health probes to be made against backends defined under backendPools. Health probes can only be disabled if there is a single enabled backend in single enabled backend pool. |
|healthProbeMethod | String | false | Configures which HTTP method to use to probe the backends defined under backendPools. |
|intervalInSeconds | Integer | false | The number of seconds between health probes. |
|path | String | false | The path to use for the health probe. Default is / |
|protocol | String | false | Protocol scheme to use for this probe |
|resourceState | [ResourceState](#resourcestate) | false | Resource status. |
        
## ResourceState



```puppet
$azure_resource_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the HealthProbeSettingsModel

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/healthProbeSettings/%{health_probe_settings_name}`|Put|Creates a new HealthProbeSettings with the specified Rule name within the specified Front Door.|HealthProbeSettings_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/healthProbeSettings/%{health_probe_settings_name}`|Get|Gets a HealthProbeSettings with the specified Rule name within the specified Front Door.|HealthProbeSettings_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/healthProbeSettings`|Get|Lists all of the HealthProbeSettings within a Front Door.|HealthProbeSettings_ListByFrontDoor|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/healthProbeSettings/%{health_probe_settings_name}`|Put|Creates a new HealthProbeSettings with the specified Rule name within the specified Front Door.|HealthProbeSettings_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/frontDoors/%{front_door_name}/healthProbeSettings/%{health_probe_settings_name}`|Delete|Deletes an existing HealthProbeSettings with the specified parameters.|HealthProbeSettings_Delete|
