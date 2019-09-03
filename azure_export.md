Document: "costmanagement"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/cost-management/resource-manager/Microsoft.CostManagement/stable/2019-01-01/costmanagement.json")

## Export

A export resource.

```puppet
azure_export {
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_export_properties
  scope => "scope",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. The current version is 2018-05-31. |
|parameters | Hash | true | Parameters supplied to the CreateOrUpdate Export operation. |
|properties | [ExportProperties](#exportproperties) | false |  |
|scope | String | true | The scope associated with export operations. This includes '/subscriptions/{subscriptionId}' for subscription scope, '/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}' for resourceGroup scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}' for Billing Account scope and '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/departments/{departmentId}' for Department scope, '/providers/Microsoft.Billing/billingAccounts/{billingAccountId}/enrollmentAccounts/{enrollmentAccountId}' for EnrollmentAccount scope. |
        
## ExportProperties

The properties of the export.

```puppet
$azure_export_properties = {
  definition => "definition (optional)",
  deliveryInfo => "deliveryInfo (optional)",
  format => "format (optional)",
  schedule => $azure_export_schedule
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|definition | String | false | Has definition for the export. |
|deliveryInfo | String | false | Has delivery information for the export. |
|format | String | false | The format of the export being delivered. |
|schedule | [ExportSchedule](#exportschedule) | false | Has schedule information for the export. |
        
## ExportSchedule

The schedule associated with a export.

```puppet
$azure_export_schedule = {
  recurrence => "recurrence",
  recurrencePeriod => $azure_export_recurrence_period
  status => "status (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|recurrence | String | true | The schedule recurrence. |
|recurrencePeriod | [ExportRecurrencePeriod](#exportrecurrenceperiod) | false | Has start and end date of the recurrence. The start date must be in future. If present, the end date must be greater than start date. |
|status | String | false | The status of the schedule. Whether active or not. If inactive, the export's scheduled execution is paused. |
        
## ExportRecurrencePeriod

The start and end date for recurrence schedule.

```puppet
$azure_export_recurrence_period = {
  from => "from",
  to => "to (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|from | String | true | The start date of recurrence. |
|to | String | false | The end date of recurrence. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Export

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/%{scope}/providers/Microsoft.CostManagement/exports/%{export_name}`|Put|The operation to create or update a export. Update operation requires latest eTag to be set in the request. You may obtain the latest eTag by performing a get operation. Create operation does not require eTag.|Exports_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/%{scope}/providers/Microsoft.CostManagement/exports/%{export_name}`|Get|Gets the export for the defined scope by export name.|Exports_Get|
|List - get list using params|`/%{scope}/providers/Microsoft.CostManagement/exports`|Get|Lists all exports at the given scope.|Exports_List|
|Update|`/%{scope}/providers/Microsoft.CostManagement/exports/%{export_name}`|Put|The operation to create or update a export. Update operation requires latest eTag to be set in the request. You may obtain the latest eTag by performing a get operation. Create operation does not require eTag.|Exports_CreateOrUpdate|
|Delete|`/%{scope}/providers/Microsoft.CostManagement/exports/%{export_name}`|Delete|The operation to delete a export.|Exports_Delete|
