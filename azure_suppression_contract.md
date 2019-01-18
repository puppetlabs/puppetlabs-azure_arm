Document: "advisor"


Path: "/tmp/azure-rest-api-specs/specification/advisor/resource-manager/Microsoft.Advisor/stable/2017-04-19/advisor.json")

## SuppressionContract

The details of the snoozed or dismissed rule; for example, the duration, name, and GUID associated with the rule.

```puppet
azure_suppression_contract {
  api_version => "api_version",
  properties => $azure_suppression_properties
  recommendation_id => "recommendation_id",
  resource_uri => "resource_uri",
  subscription_id => "subscription_id",
  suppression_contract => "suppressionContract",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The version of the API to be used with the client request. |
|properties | [SuppressionProperties](#suppressionproperties) | false | The properties of the suppression. |
|recommendation_id | String | true | The recommendation ID. |
|resource_uri | String | true | The fully qualified Azure Resource Manager identifier of the resource to which the recommendation applies. |
|subscription_id | String | true | The Azure subscription ID. |
|suppression_contract | Hash | true | The snoozed or dismissed attribute; for example, the snooze duration. |
        
## SuppressionProperties

The properties of the suppression.

```puppet
$azure_suppression_properties = {
  suppressionId => "suppressionId (optional)",
  ttl => "ttl (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|suppressionId | String | false | The GUID of the suppression. |
|ttl | String | false | The duration for which the suppression is valid. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the SuppressionContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/%{resource_uri}/providers/Microsoft.Advisor/recommendations/%{recommendation_id}/suppressions/%{name}`|Put|Enables the snoozed or dismissed attribute of a recommendation. The snoozed or dismissed attribute is referred to as a suppression. Use this API to create or update the snoozed or dismissed status of a recommendation.|Suppressions_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Advisor/suppressions`|Get|Retrieves the list of snoozed or dismissed suppressions for a subscription. The snoozed or dismissed attribute of a recommendation is referred to as a suppression.|Suppressions_List|
|List - get one|`/%{resource_uri}/providers/Microsoft.Advisor/recommendations/%{recommendation_id}/suppressions/%{name}`|Get|Obtains the details of a suppression.|Suppressions_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Advisor/suppressions`|Get|Retrieves the list of snoozed or dismissed suppressions for a subscription. The snoozed or dismissed attribute of a recommendation is referred to as a suppression.|Suppressions_List|
|Update|`/%{resource_uri}/providers/Microsoft.Advisor/recommendations/%{recommendation_id}/suppressions/%{name}`|Put|Enables the snoozed or dismissed attribute of a recommendation. The snoozed or dismissed attribute is referred to as a suppression. Use this API to create or update the snoozed or dismissed status of a recommendation.|Suppressions_Create|
|Delete|`/%{resource_uri}/providers/Microsoft.Advisor/recommendations/%{recommendation_id}/suppressions/%{name}`|Delete|Enables the activation of a snoozed or dismissed recommendation. The snoozed or dismissed attribute of a recommendation is referred to as a suppression.|Suppressions_Delete|
