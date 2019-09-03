Document: "azureactivedirectory"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/azureactivedirectory/resource-manager/Microsoft.Aadiam/stable/2017-04-01/azureactivedirectory.json")

## DiagnosticSettingsResource

The diagnostic setting resource.

```puppet
azure_diagnostic_settings_resource {
  api_version => "api_version",
  parameters => "parameters",
  properties => $azure_diagnostic_settings
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|parameters | Hash | true | Parameters supplied to the operation. |
|properties | [DiagnosticSettings](#diagnosticsettings) | false | Properties of a Diagnostic Settings Resource. |
        
## DiagnosticSettings

The diagnostic settings.

```puppet
$azure_diagnostic_settings = {
  eventHubAuthorizationRuleId => "eventHubAuthorizationRuleId (optional)",
  eventHubName => "eventHubName (optional)",
  logs => $azure_log_settings
  serviceBusRuleId => "serviceBusRuleId (optional)",
  storageAccountId => "storageAccountId (optional)",
  workspaceId => "workspaceId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|eventHubAuthorizationRuleId | String | false | The resource Id for the event hub authorization rule. |
|eventHubName | String | false | The name of the event hub. If none is specified, the default event hub will be selected. |
|logs | [LogSettings](#logsettings) | false | The list of logs settings. |
|serviceBusRuleId | String | false | The service bus rule Id of the diagnostic setting. This is here to maintain backwards compatibility. |
|storageAccountId | String | false | The resource ID of the storage account to which you would like to send Diagnostic Logs. |
|workspaceId | String | false | The workspace ID (resource ID of a Log Analytics workspace) for a Log Analytics workspace to which you would like to send Diagnostic Logs. Example: /subscriptions/4b9e8510-67ab-4e9a-95a9-e2f1e570ea9c/resourceGroups/insights-integration/providers/Microsoft.OperationalInsights/workspaces/viruela2 |
        
## LogSettings

Part of MultiTenantDiagnosticSettings. Specifies the settings for a particular log.

```puppet
$azure_log_settings = {
  category => "category (optional)",
  enabled => "enabled",
  retentionPolicy => $azure_retention_policy
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|category | String | false | Name of a Diagnostic Log category for a resource type this setting is applied to. To obtain the list of Diagnostic Log categories for a resource, first perform a GET diagnostic settings operation. |
|enabled | Boolean | true | A value indicating whether this log is enabled. |
|retentionPolicy | [RetentionPolicy](#retentionpolicy) | false | The retention policy for this log. |
        
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
|days | Integer | true | The number of days for the retention in days. A value of 0 will retain the events indefinitely. |
|enabled | Boolean | true | A value indicating whether the retention policy is enabled. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DiagnosticSettingsResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/providers/microsoft.aadiam/diagnosticSettings/%{name}`|Put|Creates or updates diagnostic settings for AadIam.|DiagnosticSettings_CreateOrUpdate|
|List - list all|`/providers/microsoft.aadiam/diagnosticSettings`|Get|Gets the active diagnostic settings list for AadIam.|DiagnosticSettings_List|
|List - get one|`/providers/microsoft.aadiam/diagnosticSettings/%{name}`|Get|Gets the active diagnostic setting for AadIam.|DiagnosticSettings_Get|
|List - get list using params|`/providers/microsoft.aadiam/diagnosticSettings`|Get|Gets the active diagnostic settings list for AadIam.|DiagnosticSettings_List|
|Update|`/providers/microsoft.aadiam/diagnosticSettings/%{name}`|Put|Creates or updates diagnostic settings for AadIam.|DiagnosticSettings_CreateOrUpdate|
|Delete|`/providers/microsoft.aadiam/diagnosticSettings/%{name}`|Delete|Deletes existing diagnostic setting for AadIam.|DiagnosticSettings_Delete|
