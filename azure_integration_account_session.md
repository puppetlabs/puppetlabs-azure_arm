Document: "logic"
Path: "/root/specs/specification/logic/resource-manager/Microsoft.Logic/stable/2016-06-01/logic.json")

## IntegrationAccountSession

```puppet
azure_integration_account_session {
  api_version => "api_version",
  id => "id (optional)",
  integration_account_name => "integration_account_name",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_integration_account_session_properties
  resource_group_name => "resource_group_name",
  session => "session",
  session_name => "session_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|id | String | false | The resource id. |
|integration_account_name | String | true | The integration account name. |
|location | String | false | The resource location. |
|name | String | false | Gets the resource name. |
|properties | [IntegrationAccountSessionProperties](#integrationaccountsessionproperties) | true | The integration account session properties. |
|resource_group_name | String | true | The resource group name. |
|session | Hash | true | The integration account session. |
|session_name | String | true | The integration account session name. |
|subscription_id | String | true | The subscription id. |
|tags | Hash | false | The resource tags. |
|type | String | false | Gets the resource type. |
        
## IntegrationAccountSessionProperties

```puppet
$azure_integration_account_session_properties = {
  changedTime => "changedTime (optional)",
  content => $azure_object
  createdTime => "createdTime (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|changedTime | String | false | The changed time. |
|content | [Object](#object) | false | The session content. |
|createdTime | String | false | The created time. |
        
## Object

```puppet
$azure_object = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the IntegrationAccountSession

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/sessions/%{session_name}`|Put|Creates or updates an integration account session.|Sessions_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/sessions/%{session_name}`|Get|Gets an integration account session.|Sessions_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/sessions`|Get|Gets a list of integration account sessions.|Sessions_ListByIntegrationAccounts|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/sessions/%{session_name}`|Put|Creates or updates an integration account session.|Sessions_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/sessions/%{session_name}`|Delete|Deletes an integration account session.|Sessions_Delete|