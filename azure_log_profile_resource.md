Document: "logProfiles_API"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/monitor/resource-manager/Microsoft.Insights/stable/2016-03-01/logProfiles_API.json")

## LogProfileResource

The log profile resource.

```puppet
azure_log_profile_resource {
  api_version => "api_version",
  location => "location (optional)",
  log_profile_name => "log_profile_name",
  parameters => "parameters",
  properties => $azure_log_profile_properties
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|location | String | false | Resource location |
|log_profile_name | String | true | The name of the log profile. |
|parameters | Hash | true | Parameters supplied to the operation. |
|properties | [LogProfileProperties](#logprofileproperties) | true | The log profile properties of the resource. |
|subscription_id | String | true | The Azure subscription Id. |
|tags | String | false | Resource tags |
        
## LogProfileProperties

The log profile properties.

```puppet
$azure_log_profile_properties = {
  categories => "categories",
  locations => "locations",
  retentionPolicy => $azure_retention_policy
  serviceBusRuleId => "serviceBusRuleId (optional)",
  storageAccountId => "storageAccountId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|categories | Array | true | the categories of the logs. These categories are created as is convenient to the user. Some values are: 'Write', 'Delete', and/or 'Action.' |
|locations | Array | true | List of regions for which Activity Log events should be stored or streamed. It is a comma separated list of valid ARM locations including the 'global' location. |
|retentionPolicy | [RetentionPolicy](#retentionpolicy) | true | the retention policy for the events in the log. |
|serviceBusRuleId | String | false | The service bus rule ID of the service bus namespace in which you would like to have Event Hubs created for streaming the Activity Log. The rule ID is of the format: '{service bus resource ID}/authorizationrules/{key name}'. |
|storageAccountId | String | false | the resource id of the storage account to which you would like to send the Activity Log. |
        
## RetentionPolicy

Specifies the retention policy for the log.

```puppet
$azure_retention_policy = {
  days => "1234",
  enabled => "enabled",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|days | Integer | true | the number of days for the retention in days. A value of 0 will retain the events indefinitely. |
|enabled | Boolean | true | a value indicating whether the retention policy is enabled. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the LogProfileResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/providers/microsoft.insights/logprofiles/%{log_profile_name}`|Put|Create or update a log profile in Azure Monitoring REST API.|LogProfiles_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/microsoft.insights/logprofiles`|Get|List the log profiles.|LogProfiles_List|
|List - get one|`/subscriptions/%{subscription_id}/providers/microsoft.insights/logprofiles/%{log_profile_name}`|Get|Gets the log profile.|LogProfiles_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/microsoft.insights/logprofiles`|Get|List the log profiles.|LogProfiles_List|
|Update|`/subscriptions/%{subscription_id}/providers/microsoft.insights/logprofiles/%{log_profile_name}`|Put|Create or update a log profile in Azure Monitoring REST API.|LogProfiles_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/providers/microsoft.insights/logprofiles/%{log_profile_name}`|Delete|Deletes the log profile.|LogProfiles_Delete|
