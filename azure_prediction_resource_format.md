Document: "customer-insights"


Path: "/tmp/azure-rest-api-specs/specification/customer-insights/resource-manager/Microsoft.CustomerInsights/stable/2017-04-26/customer-insights.json")

## PredictionResourceFormat

The prediction resource format.

```puppet
azure_prediction_resource_format {
  api_version => "api_version",
  hub_name => "hub_name",
  parameters => "parameters",
  prediction_name => "prediction_name",
  properties => $azure_prediction
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|hub_name | String | true | The name of the hub. |
|parameters | Hash | true | Parameters supplied to the create/update Prediction operation. |
|prediction_name | String | true | The name of the Prediction. |
|properties | [Prediction](#prediction) | false |  |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## Prediction

The prediction definition.

```puppet
$azure_prediction = {
  autoAnalyze => "autoAnalyze",
  description => "description (optional)",
  displayName => "displayName (optional)",
  grades => "grades (optional)",
  involvedInteractionTypes => "involvedInteractionTypes (optional)",
  involvedKpiTypes => "involvedKpiTypes (optional)",
  involvedRelationships => "involvedRelationships (optional)",
  mappings => "mappings",
  negativeOutcomeExpression => "negativeOutcomeExpression",
  positiveOutcomeExpression => "positiveOutcomeExpression",
  predictionName => "predictionName (optional)",
  primaryProfileType => "primaryProfileType",
  provisioningState => $azure_provisioning_state
  scopeExpression => "scopeExpression",
  scoreLabel => "scoreLabel",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|autoAnalyze | Boolean | true | Whether do auto analyze. |
|description | Hash | false | Description of the prediction. |
|displayName | Hash | false | Display name of the prediction. |
|grades | Array | false | The prediction grades. |
|involvedInteractionTypes | Array | false | Interaction types involved in the prediction. |
|involvedKpiTypes | Array | false | KPI types involved in the prediction. |
|involvedRelationships | Array | false | Relationships involved in the prediction. |
|mappings | Hash | true | Definition of the link mapping of prediction. |
|negativeOutcomeExpression | String | true | Negative outcome expression. |
|positiveOutcomeExpression | String | true | Positive outcome expression. |
|predictionName | String | false | Name of the prediction. |
|primaryProfileType | String | true | Primary profile type. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | Provisioning state. |
|scopeExpression | String | true | Scope expression. |
|scoreLabel | String | true | Score label. |
        
## ProvisioningState

Provisioning state.

```puppet
$azure_provisioning_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the PredictionResourceFormat

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/predictions/%{prediction_name}`|Put|Creates a Prediction or updates an existing Prediction in the hub.|Predictions_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/predictions/%{prediction_name}`|Get|Gets a Prediction in the hub.|Predictions_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/predictions`|Get|Gets all the predictions in the specified hub.|Predictions_ListByHub|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/predictions/%{prediction_name}`|Put|Creates a Prediction or updates an existing Prediction in the hub.|Predictions_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.CustomerInsights/hubs/%{hub_name}/predictions/%{prediction_name}`|Delete|Deletes a Prediction in the hub.|Predictions_Delete|
