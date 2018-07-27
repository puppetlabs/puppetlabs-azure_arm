Document: "logic"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/logic/resource-manager/Microsoft.Logic/stable/2016-06-01/logic.json")

## Workflow

The workflow type.

```puppet
azure_workflow {
  api_version => "api_version",
  location => "location (optional)",
  properties => $azure_workflow_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  workflow => "workflow",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|location | String | false | The resource location. |
|properties | [WorkflowProperties](#workflowproperties) | false | The workflow properties. |
|resource_group_name | String | true | The resource group name. |
|subscription_id | String | true | The subscription id. |
|tags | Hash | false | The resource tags. |
|workflow | Hash | true | The workflow. |
        
## WorkflowProperties

The workflow properties.

```puppet
$azure_workflow_properties = {
  definition => $azure_object
  integrationAccount => $azure_resource_reference
  parameters => "parameters (optional)",
  provisioningState => $azure_workflow_provisioning_state
  sku => $azure_sku
  state => $azure_workflow_state
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|definition | [Object](#object) | false | The definition. |
|integrationAccount | [ResourceReference](#resourcereference) | false | The integration account. |
|parameters | Hash | false | The parameters. |
|provisioningState | [WorkflowProvisioningState](#workflowprovisioningstate) | false | Gets the provisioning state. |
|sku | [Sku](#sku) | false | The sku. |
|state | [WorkflowState](#workflowstate) | false | The state. |
        
## Object



```puppet
$azure_object = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ResourceReference

The resource reference.

```puppet
$azure_resource_reference = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## WorkflowProvisioningState



```puppet
$azure_workflow_provisioning_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## Sku

The sku type.

```puppet
$azure_sku = {
  name => $azure_sku_name
  plan => $azure_resource_reference
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | [SkuName](#skuname) | true | The name. |
|plan | [ResourceReference](#resourcereference) | false | The reference to plan. |
        
## SkuName

The sku name.

```puppet
$azure_sku_name = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
        
## WorkflowState



```puppet
$azure_workflow_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Workflow

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/workflows/%{workflow_name}`|Put|Creates or updates a workflow.|Workflows_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Logic/workflows`|Get|Gets a list of workflows by subscription.|Workflows_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/workflows/%{workflow_name}`|Get|Gets a workflow.|Workflows_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Logic/workflows`|Get|Gets a list of workflows by subscription.|Workflows_ListBySubscription|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/workflows/%{workflow_name}`|Put|Creates or updates a workflow.|Workflows_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/workflows/%{workflow_name}`|Delete|Deletes a workflow.|Workflows_Delete|
