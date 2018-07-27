Document: "OperationalInsights"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/operationalinsights/resource-manager/Microsoft.OperationalInsights/stable/2015-03-20/OperationalInsights.json")

## StorageInsight

The top level storage insight resource container.

```puppet
azure_storage_insight {
  api_version => "api_version",
  e_tag => "e_tag (optional)",
  parameters => "parameters",
  properties => $azure_storage_insight_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  workspace_name => "workspace_name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|e_tag | String | false | The ETag of the storage insight. |
|parameters | Hash | true | The parameters required to create or update a storage insight. |
|properties | [StorageInsightProperties](#storageinsightproperties) | false | Storage insight properties. |
|resource_group_name | String | true | The name of the resource group to get. The name is case insensitive. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |
|workspace_name | String | true | Log Analytics Workspace name that will contain the storageInsightsConfigs resource |
        
## StorageInsightProperties

Storage insight properties.

```puppet
$azure_storage_insight_properties = {
  containers => "containers (optional)",
  status => $azure_storage_insight_status
  storageAccount => $azure_storage_account
  tables => "tables (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|containers | Array | false | The names of the blob containers that the workspace should read |
|status | [StorageInsightStatus](#storageinsightstatus) | false | The status of the storage insight |
|storageAccount | [StorageAccount](#storageaccount) | true | The storage account connection details |
|tables | Array | false | The names of the Azure tables that the workspace should read |
        
## StorageInsightStatus

The status of the storage insight.

```puppet
$azure_storage_insight_status = {
  description => "description (optional)",
  state => "state",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | Description of the state of the storage insight. |
|state | String | true | The state of the storage insight connection to the workspace |
        
## StorageAccount

Describes a storage account connection.

```puppet
$azure_storage_account = {
  id => "id",
  key => "key",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | true | The Azure Resource Manager ID of the storage account resource. |
|key | String | true | The storage account key. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the StorageInsight

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.OperationalInsights/workspaces/%{workspace_name}/storageInsightConfigs/%{storage_insight_name}`|Put|Create or update a storage insight.|StorageInsights_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.OperationalInsights/workspaces/%{workspace_name}/storageInsightConfigs/%{storage_insight_name}`|Get|Gets a storage insight instance.|StorageInsights_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.OperationalInsights/workspaces/%{workspace_name}/storageInsightConfigs`|Get|Lists the storage insight instances within a workspace|StorageInsights_ListByWorkspace|
|Update|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.OperationalInsights/workspaces/%{workspace_name}/storageInsightConfigs/%{storage_insight_name}`|Put|Create or update a storage insight.|StorageInsights_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.OperationalInsights/workspaces/%{workspace_name}/storageInsightConfigs/%{storage_insight_name}`|Delete|Deletes a storageInsightsConfigs resource|StorageInsights_Delete|
