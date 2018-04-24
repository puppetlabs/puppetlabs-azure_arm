Document: "consumption"
Path: "/root/specs/specification/consumption/resource-manager/Microsoft.Consumption/stable/2018-03-31/consumption.json")

## Budget

```puppet
azure_budget {
  api_version => "api_version",
  e_tag => "e_tag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_budget_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. The current version is 2018-03-31. |
|e_tag | String | false | eTag of the resource. To handle concurrent update scenarion, this field will be used to determine whether the user is updating the latest version or not. |
|id | String | false | Resource Id. |
|name | String | false | Resource name. |
|parameters | Hash | true | Parameters supplied to the Create Budget operation. |
|properties | [BudgetProperties](#budgetproperties) | false |  |
|resource_group_name | String | true | Azure Resource Group Name. |
|subscription_id | String | true | Azure Subscription ID. |
|type | String | false | Resource type. |
        
## BudgetProperties

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
|timePeriod | [BudgetTimePeriod](#budgettimeperiod) | true | Has start and end date of the budget. The start date must be first of the month and should be less than the end date. Budget start date must be on or after June 1, 2017. Future start date should not be more than three months. Past start date should  be selected within the timegrain preiod. There are no restrictions on the end date. |
        
## CurrentSpend

```puppet
$azure_current_spend = {
  amount => "amount (optional)",
  unit => "unit (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|amount | Numeric | false | The total amount of cost which is being tracked by the budget. |
|unit | String | false | The unit of measure for the budget amount. |
        
## Filters

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
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Consumption/budgets/%{budget_name}`|Put|The operation to create or update a budget. Update operation requires latest eTag to be set in the request mandatorily. You may obtain the latest eTag by performing a get operation. Create operation does not require eTag.|Budgets_CreateOrUpdateByResourceGroupName|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Consumption/budgets`|Get|Lists all budgets for a subscription.|Budgets_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Consumption/budgets/%{budget_name}`|Get|Gets the budget for a resource group under a subscription by budget name.|Budgets_GetByResourceGroupName|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Consumption/budgets`|Get|Lists all budgets for a resource group under a subscription.|Budgets_ListByResourceGroupName|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Consumption/budgets/%{budget_name}`|Put|The operation to create or update a budget. Update operation requires latest eTag to be set in the request mandatorily. You may obtain the latest eTag by performing a get operation. Create operation does not require eTag.|Budgets_CreateOrUpdateByResourceGroupName|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Consumption/budgets/%{budget_name}`|Delete|The operation to delete a budget.|Budgets_DeleteByResourceGroupName|