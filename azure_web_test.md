Document: "webTests_API"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/applicationinsights/resource-manager/Microsoft.Insights/stable/2015-05-01/webTests_API.json")

## WebTest

An Application Insights web test definition.

```puppet
azure_web_test {
  api_version => "api_version",
  kind => "kind (optional)",
  location => "location (optional)",
  properties => $azure_web_test_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  web_test_definition => "WebTestDefinition",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for this operation. |
|kind | String | false | The kind of web test that this web test watches. Choices are ping and multistep. |
|location | String | false | Resource location |
|properties | [WebTestProperties](#webtestproperties) | false | Metadata describing a web test for an Azure resource. |
|resource_group_name | String | true | The name of the resource group. The name is case insensitive. |
|subscription_id | String | true | The ID of the target subscription. |
|tags | String | false | Resource tags |
|web_test_definition | Hash | true | Properties that need to be specified to create or update an Application Insights web test definition. |
        
## WebTestProperties

Metadata describing a web test for an Azure resource.

```puppet
$azure_web_test_properties = {
  Configuration => "Configuration (optional)",
  Description => "Description (optional)",
  Enabled => "Enabled (optional)",
  Frequency => "1234 (optional)",
  Kind => "Kind",
  Locations => $azure_web_test_geolocation
  Name => "Name",
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
|RetryEnabled | Boolean | false | Allow for retries should this WebTest fail. |
|SyntheticMonitorId | String | true | Unique ID of this WebTest. This is typically the same value as the Name field. |
|Timeout | Integer | false | Seconds until this WebTest will timeout and fail. Default value is 30. |
        
## WebTestGeolocation

Geo-physical location to run a web test from. You must specify one or more locations for the test to run from.

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
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Insights/webtests`|Get|Get all Application Insights web test alerts definitions within a subscription.|WebTests_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/webtests/%{web_test_name}`|Get|Get a specific Application Insights web test definition.|WebTests_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Insights/webtests`|Get|Get all Application Insights web test alerts definitions within a subscription.|WebTests_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/webtests/%{web_test_name}`|Put|Creates or updates an Application Insights web test definition.|WebTests_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Insights/webtests/%{web_test_name}`|Delete|Deletes an Application Insights web test.|WebTests_Delete|
