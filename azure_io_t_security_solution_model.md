Document: "iotSecuritySolutions"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/security/resource-manager/Microsoft.Security/stable/2019-08-01/iotSecuritySolutions.json")

## IoTSecuritySolutionModel

Security Solution

```puppet
azure_io_t_security_solution_model {
  api_version => "api_version",
  iot_security_solution_data => "iotSecuritySolutionData",
  location => "location (optional)",
  properties => $azure_io_t_security_solution_properties
  resource_group_name => "resource_group_name",
  solution_name => "solution_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API version for the operation |
|iot_security_solution_data | Hash | true | The security solution data |
|location | String | false | The resource location. |
|properties | [IoTSecuritySolutionProperties](#iotsecuritysolutionproperties) | false | Security Solution data |
|resource_group_name | String | true | The name of the resource group within the user's subscription. The name is case insensitive. |
|solution_name | String | true | The solution manager name |
|subscription_id | String | true | Azure subscription ID |
|tags | Hash | false | Resource tags |
        
## IoTSecuritySolutionProperties

Security Solution setting data

```puppet
$azure_io_t_security_solution_properties = {
  disabledDataSources => "disabledDataSources (optional)",
  displayName => "displayName",
  export => "export (optional)",
  iotHubs => "iotHubs",
  recommendationsConfiguration => $azure_recommendation_configuration_list
  status => "status (optional)",
  userDefinedResources => $azure_user_defined_resources_properties
  workspace => "workspace",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|disabledDataSources | Array | false | Disabled data sources. Disabling these data sources compromises the system. |
|displayName | String | true | Resource display name. |
|export | Array | false | List of additional export to workspace data options |
|iotHubs | Array | true | IoT Hub resource IDs |
|recommendationsConfiguration | [RecommendationConfigurationList](#recommendationconfigurationlist) | false |  |
|status | String | false | Security solution status |
|userDefinedResources | [UserDefinedResourcesProperties](#userdefinedresourcesproperties) | false |  |
|workspace | String | true | Workspace resource ID |
        
## RecommendationConfigurationList

List of recommendation configuration

```puppet
$azure_recommendation_configuration_list = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## UserDefinedResourcesProperties

Properties of the solution's user defined resources.

```puppet
$azure_user_defined_resources_properties = {
  query => "query",
  querySubscriptions => "querySubscriptions",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|query | String | true | Azure Resource Graph query which represents the security solution's user defined resources. Required to start with 'where type != 'Microsoft.Devices/IotHubs'' |
|querySubscriptions | Array | true | List of Azure subscription ids on which the user defined resources query should be executed. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the IoTSecuritySolutionModel

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Security/iotSecuritySolutions/%{solution_name}`|Put|Create new solution manager|IotSecuritySolution_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Security/iotSecuritySolutions`|Get|List of security solutions|IoTSecuritySolutions_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Security/iotSecuritySolutions/%{solution_name}`|Get|Details of a specific iot security solution|IotSecuritySolution_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Security/iotSecuritySolutions`|Get|List of security solutions|IoTSecuritySolutions_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Security/iotSecuritySolutions/%{solution_name}`|Put|Create new solution manager|IotSecuritySolution_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Security/iotSecuritySolutions/%{solution_name}`|Delete|Create new solution manager|IotSecuritySolution_Delete|
