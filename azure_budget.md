Document: "consumption"


Path: "/tmp/azure-rest-api-specs/specification/consumption/resource-manager/Microsoft.Consumption/stable/2018-10-01/consumption.json")

## Budget

A budget resource.

```puppet
azure_budget {
  api_version => "api_version",
  e_tag => "e_tag (optional)",
  parameters => "parameters",
  properties => $azure_budget_properties
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. The current version is 2018-10-01. |
|e_tag | String | false | eTag of the resource. To handle concurrent update scenario, this field will be used to determine whether the user is updating the latest version or not. |
|parameters | Hash | true | Parameters supplied to the Create Budget operation. |
|properties | [BudgetProperties](#budgetproperties) | false |  |
|subscription_id | String | true | Azure Subscription ID. |
        
## BudgetProperties

The properties of the budget.

```puppet
$azure_budget_properties = {
  amount => "amount",
  category => "category",
  currentSpend => $azure_current_spend
  filters => $azure_filters
  notifications => "notifications (optional)",
  timeGrain => "timeGrain",
  timePeriod => $azure_budget_time_period
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|amount | Numeric | true | The total amount of cost to track with the budget |
|category | String | true | The category of the budget, whether the budget tracks cost or usage. |
|currentSpend | [CurrentSpend](#currentspend) | false | The current amount of cost which is being tracked for a budget. |
|filters | [Filters](#filters) | false | May be used to filter budgets by resource group, resource, or meter. |
|notifications | Hash | false | Dictionary of notifications associated with the budget. Budget can have up to five notifications. |
|timeGrain | String | true | The time covered by a budget. Tracking of the amount will be reset based on the time grain. |
|timePeriod | [BudgetTimePeriod](#budgettimeperiod) | true | Has start and end date of the budget. The start date must be first of the month and should be less than the end date. Budget start date must be on or after June 1, 2017. Future start date should not be more than three months. Past start date should  be selected within the timegrain period. There are no restrictions on the end date. |
        
## CurrentSpend

The current amount of cost which is being tracked for a budget.

```puppet
$azure_current_spend = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## Filters

May be used to filter budgets by resource group, resource, or meter.

```puppet
$azure_filters = {
  meters => "meters (optional)",
  resourceGroups => "resourceGroups (optional)",
  resources => "resources (optional)",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|meters | Array | false | The list of filters on meters (GUID), mandatory for budgets of usage category.  |
|resourceGroups | Array | false | The list of filters on resource groups, allowed at subscription level only. |
|resources | Array | false | The list of filters on resources. |
|tags | Hash | false | The dictionary of filters on tags. |
        
## BudgetTimePeriod

The start and end date for a budget.

```puppet
$azure_budget_time_period = {
  endDate => "endDate (optional)",
  startDate => "startDate",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endDate | String | false | The end date for the budget. If not provided, we default this to 10 years from the start date. |
|startDate | String | true | The start date for the budget. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Budget

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/providers/Microsoft.Consumption/budgets/%{budget_name}`|Put|The operation to create or update a budget. Update operation requires latest eTag to be set in the request mandatorily. You may obtain the latest eTag by performing a get operation. Create operation does not require eTag.|Budgets_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Consumption/budgets`|Get|Lists all budgets for a subscription.|Budgets_List|
|List - get one|`/subscriptions/%{subscription_id}/providers/Microsoft.Consumption/budgets/%{budget_name}`|Get|Gets the budget for a subscription by budget name.|Budgets_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Consumption/budgets`|Get|Lists all budgets for a subscription.|Budgets_List|
|Update|`/subscriptions/%{subscription_id}/providers/Microsoft.Consumption/budgets/%{budget_name}`|Put|The operation to create or update a budget. Update operation requires latest eTag to be set in the request mandatorily. You may obtain the latest eTag by performing a get operation. Create operation does not require eTag.|Budgets_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/providers/Microsoft.Consumption/budgets/%{budget_name}`|Delete|The operation to delete a budget.|Budgets_Delete|
