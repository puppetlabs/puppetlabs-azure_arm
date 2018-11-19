Document: "consumption"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/consumption/resource-manager/Microsoft.Consumption/stable/2018-05-31/consumption.json")

## ReportConfig

A report config resource.

```puppet
azure_report_config {
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_report_config_properties
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. The current version is 2018-05-31. |
|parameters | Hash | true | Parameters supplied to the CreateOrUpdate Report Config operation. |
|properties | [ReportConfigProperties](#reportconfigproperties) | false |  |
|subscription_id | String | true | Azure Subscription ID. |
        
## ReportConfigProperties

The properties of the report config.

```puppet
$azure_report_config_properties = {
  definition => $azure_report_config_definition
  deliveryInfo => $azure_report_config_delivery_info
  format => "format (optional)",
  schedule => $azure_report_config_schedule
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|definition | [ReportConfigDefinition](#reportconfigdefinition) | true | Has definition for the report config. |
|deliveryInfo | [ReportConfigDeliveryInfo](#reportconfigdeliveryinfo) | true | Has delivery information for the report config. |
|format | String | false | The format of the report being delivered. |
|schedule | [ReportConfigSchedule](#reportconfigschedule) | false | Has schedule information for the report config. |
        
## ReportConfigDefinition

The definition of a report config.

```puppet
$azure_report_config_definition = {
  dataset => $azure_report_config_dataset
  timeframe => "timeframe",
  timePeriod => $azure_report_config_time_period
  type => "type",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dataset | [ReportConfigDataset](#reportconfigdataset) | false | Has definition for data in this report config. |
|timeframe | String | true | The time frame for pulling data for the report. If custom, then a specific time period must be provided. |
|timePeriod | [ReportConfigTimePeriod](#reportconfigtimeperiod) | false | Has time period for pulling data for the report. |
|type | String | true | The type of the report. |
        
## ReportConfigDataset

The definition of data present in the report.

```puppet
$azure_report_config_dataset = {
  aggregation => "aggregation (optional)",
  configuration => $azure_report_config_dataset_configuration
  filter => $azure_report_config_filter
  granularity => "granularity (optional)",
  grouping => $azure_report_config_grouping
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|aggregation | Hash | false | Dictionary of aggregation expression to use in the report. The key of each item in the dictionary is the alias for the aggregated column. Report can have upto 2 aggregation clauses. |
|configuration | [ReportConfigDatasetConfiguration](#reportconfigdatasetconfiguration) | false | Has configuration information for the data in the report. The configuration will be ignored if aggregation and grouping are provided. |
|filter | [ReportConfigFilter](#reportconfigfilter) | false | Has filter expression to use in the report. |
|granularity | String | false | The granularity of rows in the report. |
|grouping | [ReportConfigGrouping](#reportconfiggrouping) | false | Array of group by expression to use in the report. Report can have upto 2 group by clauses. |
        
## ReportConfigDatasetConfiguration

The configuration of dataset in the report.

```puppet
$azure_report_config_dataset_configuration = {
  columns => "columns (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|columns | Array | false | Array of column names to be included in the report. Any valid report column name is allowed. If not provided, then report includes all columns. |
        
## ReportConfigFilter

The filter expression to be used in the report.

```puppet
$azure_report_config_filter = {
  and => $azure_report_config_filter
  dimension => $azure_report_config_comparison_expression
  not => $azure_report_config_filter
  or => $azure_report_config_filter
  tag => $azure_report_config_comparison_expression
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|and | [ReportConfigFilter](#reportconfigfilter) | false | The logical 'AND' expression. Must have atleast 2 items. |
|dimension | [ReportConfigComparisonExpression](#reportconfigcomparisonexpression) | false | Has comparison expression for a dimension |
|not | [ReportConfigFilter](#reportconfigfilter) | false | The logical 'NOT' expression. |
|or | [ReportConfigFilter](#reportconfigfilter) | false | The logical 'OR' expression. Must have atleast 2 items. |
|tag | [ReportConfigComparisonExpression](#reportconfigcomparisonexpression) | false | Has comparison expression for a tag |
        
        
## ReportConfigComparisonExpression

The comparison expression to be used in the report.

```puppet
$azure_report_config_comparison_expression = {
  name => "name",
  operator => "operator",
  values => "values",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | The name of the column to use in comaprison. |
|operator | String | true | The operator to use for comparison. |
|values | Array | true | Array of values to use for comparison |
        
        
        
        
## ReportConfigGrouping

The group by expression to be used in the report.

```puppet
$azure_report_config_grouping = {
  columnType => $azure_report_config_column_type
  name => "name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|columnType | [ReportConfigColumnType](#reportconfigcolumntype) | true | Has type of the column to group. |
|name | String | true | The name of the column to group. |
        
## ReportConfigColumnType

The type of the column in the report.

```puppet
$azure_report_config_column_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ReportConfigTimePeriod

The start and end date for pulling data for the report.

```puppet
$azure_report_config_time_period = {
  from => "from",
  to => "to",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|from | String | true | The start date to pull data from. |
|to | String | true | The end date to pull data to. |
        
## ReportConfigDeliveryInfo

The delivery information associated with a report config.

```puppet
$azure_report_config_delivery_info = {
  destination => $azure_report_config_delivery_destination
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|destination | [ReportConfigDeliveryDestination](#reportconfigdeliverydestination) | true | Has destination for the report being delivered. |
        
## ReportConfigDeliveryDestination

The destination information for the delivery of the report.

```puppet
$azure_report_config_delivery_destination = {
  container => "container",
  resourceId => "resourceId",
  rootFolderPath => "rootFolderPath (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|container | String | true | The name of the container where reports will be uploaded. |
|resourceId | String | true | The resource id of the storage account where reports will be delivered. |
|rootFolderPath | String | false | The name of the directory where reports will be uploaded. |
        
## ReportConfigSchedule

The schedule associated with a report config.

```puppet
$azure_report_config_schedule = {
  recurrence => "recurrence",
  recurrencePeriod => $azure_report_config_recurrence_period
  status => "status (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|recurrence | String | true | The schedule recurrence. |
|recurrencePeriod | [ReportConfigRecurrencePeriod](#reportconfigrecurrenceperiod) | true | Has start and end date of the recurrence. The start date must be in future. If present, the end date must be greater than start date. |
|status | String | false | The status of the schedule. Whether active or not. If inactive, the report's scheduled execution is paused. |
        
## ReportConfigRecurrencePeriod

The start and end date for recurrence schedule.

```puppet
$azure_report_config_recurrence_period = {
  from => "from",
  to => "to (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|from | String | true | The start date of recurrence. |
|to | String | false | The end date of recurrence. If not provided, we default this to 10 years from the start date. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ReportConfig

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/providers/Microsoft.Consumption/reportconfigs/%{report_config_name}`|Put|The operation to create or update a report config. Update operation requires latest eTag to be set in the request mandatorily. You may obtain the latest eTag by performing a get operation. Create operation does not require eTag.|ReportConfig_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Consumption/reportconfigs`|Get|Lists all report configs for a subscription.|ReportConfig_List|
|List - get one|`/subscriptions/%{subscription_id}/providers/Microsoft.Consumption/reportconfigs/%{report_config_name}`|Get|Gets the report config for a subscription by report config name.|ReportConfig_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Consumption/reportconfigs`|Get|Lists all report configs for a resource group under a subscription.|ReportConfig_ListByResourceGroupName|
|Update|`/subscriptions/%{subscription_id}/providers/Microsoft.Consumption/reportconfigs/%{report_config_name}`|Put|The operation to create or update a report config. Update operation requires latest eTag to be set in the request mandatorily. You may obtain the latest eTag by performing a get operation. Create operation does not require eTag.|ReportConfig_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/providers/Microsoft.Consumption/reportconfigs/%{report_config_name}`|Delete|The operation to delete a report.|ReportConfig_Delete|
