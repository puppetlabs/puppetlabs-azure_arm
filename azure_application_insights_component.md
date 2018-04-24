Document: "components_API"
Path: "/root/specs/specification/applicationinsights/resource-manager/Microsoft.Insights/stable/2015-05-01/components_API.json")

## ApplicationInsightsComponent

```puppet
azure_application_insights_component {
  api_version => "api_version",
  id => "id (optional)",
  insight_properties => "InsightProperties",
  kind => "kind",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_application_insights_component_properties
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|id | String | false | Azure resource Id |
|insight_properties | Hash | true | Properties that need to be specified to create an Application Insights component. |
|kind | String | true | The kind of application that this component refers to, used to customize UI. This value is a freeform string, values should typically be one of the following: web, ios, other, store, java, phone. |
|location | String | false | Resource location |
|name | String | false | Azure resource name |
|properties | [ApplicationInsightsComponentProperties](#applicationinsightscomponentproperties) | false | Properties that define an Application Insights component resource. |
|resource_group_name | String | true | The name of the resource group. |
|resource_name | String | true | The name of the Application Insights component resource. |
|subscription_id | String | true | The Azure subscription ID. |
|tags | String | false | Resource tags |
|type | String | false | Azure resource type |
        
## ApplicationInsightsComponentProperties

```puppet
$azure_application_insights_component_properties = {
  AppId => "AppId (optional)",
  Application_Type => "Application_Type",
  ApplicationId => "ApplicationId (optional)",
  CreationDate => "CreationDate (optional)",
  Flow_Type => "Flow_Type (optional)",
  HockeyAppId => "HockeyAppId (optional)",
  HockeyAppToken => "HockeyAppToken (optional)",
  InstrumentationKey => "InstrumentationKey (optional)",
  provisioningState => "provisioningState (optional)",
  Request_Source => "Request_Source (optional)",
  SamplingPercentage => "SamplingPercentage (optional)",
  TenantId => "TenantId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|AppId | String | false | Application Insights Unique ID for your Application. |
|Application_Type | String | true | Type of application being monitored. |
|ApplicationId | String | false | The unique ID of your application. This field mirrors the 'Name' field and cannot be changed. |
|CreationDate | String | false | Creation Date for the Application Insights component, in ISO 8601 format. |
|Flow_Type | String | false | Used by the Application Insights system to determine what kind of flow this component was created by. This is to be set to 'Bluefield' when creating/updating a component via the REST API. |
|HockeyAppId | String | false | The unique application ID created when a new application is added to HockeyApp, used for communications with HockeyApp. |
|HockeyAppToken | String | false | Token used to authenticate communications with between Application Insights and HockeyApp. |
|InstrumentationKey | String | false | Application Insights Instrumentation key. A read-only value that applications can use to identify the destination for all telemetry sent to Azure Application Insights. This value will be supplied upon construction of each new Application Insights component. |
|provisioningState | String | false | Current state of this component: whether or not is has been provisioned within the resource group it is defined. Users cannot change this value but are able to read from it. Values will include Succeeded, Deploying, Canceled, and Failed. |
|Request_Source | String | false | Describes what tool created this Application Insights component. Customers using this API should set this to the default 'rest'. |
|SamplingPercentage | Numeric | false | Percentage of the data produced by the application being monitored that is being sampled for Application Insights telemetry. |
|TenantId | String | false | Azure Tenant Id. |



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