Document: "components_API"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/applicationinsights/resource-manager/Microsoft.Insights/stable/2015-05-01/components_API.json")

## ApplicationInsightsComponent

An Application Insights component definition.

```puppet
azure_application_insights_component {
  api_version => "api_version",
  insight_properties => "InsightProperties",
  kind => "kind",
  location => "location (optional)",
  properties => $azure_application_insights_component_properties
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for this operation. |
|insight_properties | Hash | true | Properties that need to be specified to create an Application Insights component. |
|kind | String | true | The kind of application that this component refers to, used to customize UI. This value is a freeform string, values should typically be one of the following: web, ios, other, store, java, phone. |
|location | String | false | Resource location |
|properties | [ApplicationInsightsComponentProperties](#applicationinsightscomponentproperties) | false | Properties that define an Application Insights component resource. |
|resource_group_name | String | true | The name of the resource group. The name is case insensitive. |
|resource_name | String | true | The name of the Application Insights component resource. |
|subscription_id | String | true | The ID of the target subscription. |
|tags | String | false | Resource tags |
        
## ApplicationInsightsComponentProperties

Properties that define an Application Insights component resource.

```puppet
$azure_application_insights_component_properties = {
  Application_Type => "Application_Type",
  Flow_Type => "Flow_Type (optional)",
  HockeyAppId => "HockeyAppId (optional)",
  Request_Source => "Request_Source (optional)",
  SamplingPercentage => "SamplingPercentage (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|Application_Type | String | true | Type of application being monitored. |
|Flow_Type | String | false | Used by the Application Insights system to determine what kind of flow this component was created by. This is to be set to 'Bluefield' when creating/updating a component via the REST API. |
|HockeyAppId | String | false | The unique application ID created when a new application is added to HockeyApp, used for communications with HockeyApp. |
|Request_Source | String | false | Describes what tool created this Application Insights component. Customers using this API should set this to the default 'rest'. |
|SamplingPercentage | Numeric | false | Percentage of the data produced by the application being monitored that is being sampled for Application Insights telemetry. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ApplicationInsightsComponent

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/components/%{resource_name}`|Put|Creates (or updates) an Application Insights component. Note: You cannot specify a different value for InstrumentationKey nor AppId in the Put operation.|Components_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Insights/components`|Get|Gets a list of all Application Insights components within a subscription.|Components_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/components/%{resource_name}`|Get|Returns an Application Insights component.|Components_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Insights/components`|Get|Gets a list of all Application Insights components within a subscription.|Components_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/components/%{resource_name}`|Put|Creates (or updates) an Application Insights component. Note: You cannot specify a different value for InstrumentationKey nor AppId in the Put operation.|Components_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/components/%{resource_name}`|Delete|Deletes an Application Insights component.|Components_Delete|
