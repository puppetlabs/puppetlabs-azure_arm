Document: "workbooks_API"
Path: "/root/specs/specification/applicationinsights/resource-manager/Microsoft.Insights/stable/2015-05-01/workbooks_API.json")

## Workbook

```puppet
azure_workbook {
  api_version => "api_version",
  id => "id (optional)",
  kind => "kind (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_workbook_properties
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
|kind | String | false | The kind of workbook. Choices are user and shared. |
|location | String | false | Resource location |
|name | String | false | Azure resource name |
|properties | [WorkbookProperties](#workbookproperties) | false | Metadata describing a web test for an Azure resource. |
|resource_group_name | String | true | The name of the resource group. |
|resource_name | String | true | The name of the Application Insights component resource. |
|subscription_id | String | true | The Azure subscription ID. |
|tags | String | false | Resource tags |
|type | String | false | Azure resource type |
        
## WorkbookProperties

```puppet
$azure_workbook_properties = {
  category => "category",
  kind => "kind",
  name => "name",
  serializedData => "serializedData",
  sourceResourceId => "sourceResourceId (optional)",
  tags => "tags (optional)",
  timeModified => "timeModified (optional)",
  userId => "userId",
  version => "version (optional)",
  workbookId => "workbookId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|category | String | true | Workbook category, as defined by the user at creation time. |
|kind | String | true | Enum indicating if this workbook definition is owned by a specific user or is shared between all users with access to the Application Insights component. |
|name | String | true | The user-defined name of the workbook. |
|serializedData | String | true | Configuration of this particular workbook. Configuration data is a string containing valid JSON |
|sourceResourceId | String | false | Optional resourceId for a source resource. |
|tags | Array | false | A list of 0 or more tags that are associated with this workbook definition |
|timeModified | String | false | Date and time in UTC of the last modification that was made to this workbook definition. |
|userId | String | true | Unique user id of the specific user that owns this workbook. |
|version | String | false | This instance's version of the data model. This can change as new features are added that can be marked workbook. |
|workbookId | String | true | Internally assigned unique id of the workbook definition. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Workbook

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroup/%{resource_group_name}/providers/microsoft.insights/workbooks/%{resource_name}`|Put|Create a new workbook.|Workbook_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroup/%{resource_group_name}/providers/microsoft.insights/workbooks/%{resource_name}`|Get|Get a single workbook by its resourceName.|Workbook_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroup/%{resource_group_name}/providers/microsoft.insights/workbooks`|Get|Get all Workbooks defined within a specified resource group and category.|Workbooks_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroup/%{resource_group_name}/providers/microsoft.insights/workbooks/%{resource_name}`|Put|Create a new workbook.|Workbook_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroup/%{resource_group_name}/providers/microsoft.insights/workbooks/%{resource_name}`|Delete|Delete a workbook.|Workbook_Delete|