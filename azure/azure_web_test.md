Document: "webTests_API"
Path: "/root/specs/specification/applicationinsights/resource-manager/Microsoft.Insights/stable/2015-05-01/webTests_API.json")

## WebTest

```puppet
azure_web_test {
  api_version => "api_version",
  id => "id (optional)",
  kind => "kind (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_web_test_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
  web_test_definition => "WebTestDefinition",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|id | String | false | Azure resource Id |
|kind | String | false | The kind of web test that this web test watches. Choices are ping and multistep. |
|location | String | false | Resource location |
|name | String | false | Azure resource name |
|properties | [WebTestProperties](#webtestproperties) | false | Metadata describing a web test for an Azure resource. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The Azure subscription ID. |
|tags | String | false | Resource tags |
|type | String | false | Azure resource type |
|web_test_definition | Hash | true | Properties that need to be specified to create or update an Application Insights web test definition. |
        
## WebTestProperties

```puppet
$azure_web_test_properties = {
  Configuration => "Configuration (optional)",
  Description => "Description (optional)",
  Enabled => "Enabled (optional)",
  Frequency => "1234 (optional)",
  Kind => "Kind",
  Locations => $azure_web_test_geolocation
  Name => "Name",
  provisioningState => "provisioningState (optional)",
  RetryEnabled => "RetryEnabled (optional)",
  SyntheticMonitorId => "SyntheticMonitorId",
  Timeout => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|Configuration | Hash | false | An XML configuration specification for a WebTest. |
|Description | String | false | Purpose/user defined descriptive test for this WebTest. |
|Enabled | Boolean | false | Is the test actively being monitored. |
|Frequency | Integer | false | Interval in seconds between test runs for this WebTest. Default value is 300. |
|Kind | String | true | The kind of web test this is, valid choices are ping and multistep. |
|Locations | [WebTestGeolocation](#webtestgeolocation) | true | A list of where to physically run the tests from to give global coverage for accessibility of your application. |
|Name | String | true | User defined name if this WebTest. |
|provisioningState | String | false | Current state of this component, whether or not is has been provisioned within the resource group it is defined. Users cannot change this value but are able to read from it. Values will include Succeeded, Deploying, Canceled, and Failed. |
|RetryEnabled | Boolean | false | Allow for retries should this WebTest fail. |
|SyntheticMonitorId | String | true | Unique ID of this WebTest. This is typically the same value as the Name field. |
|Timeout | Integer | false | Seconds until this WebTest will timeout and fail. Default value is 30. |
        
## WebTestGeolocation

```puppet
$azure_web_test_geolocation = {
  Id => "Id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|Id | String | false | Location ID for the webtest to run from. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the WebTest

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/webtests/%{web_test_name}`|Put|Creates or updates an Application Insights web test definition.|WebTests_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Insights/webtests`|Get|Get all Application Insights web test alerts definitioned within a subscription.|WebTests_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/webtests/%{web_test_name}`|Get|Get a specific Application Insights web test definition.|WebTests_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/webtests`|Get|Get all Application Insights web tests defined within a specified resource group.|WebTests_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/webtests/%{web_test_name}`|Put|Creates or updates an Application Insights web test definition.|WebTests_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/webtests/%{web_test_name}`|Delete|Deletes an Application Insights web test.|WebTests_Delete|