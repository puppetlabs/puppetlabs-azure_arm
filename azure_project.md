Document: "migrate"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/migrate/resource-manager/Microsoft.Migrate/stable/2018-02-02/migrate.json")

## Project

Azure Migrate Project.

```puppet
azure_project {
  api_version => "api_version",
  e_tag => "e_tag (optional)",
  location => "location (optional)",
  properties => $azure_project_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Standard request header. Used by service to identify API version used by client. |
|e_tag | String | false | For optimistic concurrency control. |
|location | String | false | Azure location in which project is created. |
|properties | [ProjectProperties](#projectproperties) | false | Properties of the project. |
|resource_group_name | String | true | Name of the Azure Resource Group that project is part of. |
|subscription_id | String | true | Azure Subscription Id in which project was created. |
|tags | Hash | false | Tags provided by Azure Tagging service. |
        
## ProjectProperties

Properties of a project.

```puppet
$azure_project_properties = {
  customerWorkspaceId => "customerWorkspaceId (optional)",
  customerWorkspaceLocation => "customerWorkspaceLocation (optional)",
  provisioningState => "provisioningState (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|customerWorkspaceId | String | false | ARM ID of the Service Map workspace created by user. |
|customerWorkspaceLocation | String | false | Location of the Service Map workspace created by user. |
|provisioningState | String | false | Provisioning state of the project. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Project

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.Migrate/projects/%{project_name}`|Put|Create a project with specified name. If a project already exists, update it.|Projects_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.Migrate/projects/%{project_name}`|Get|Get the project with the specified name.|Projects_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.Migrate/projects`|Get|Get all the projects in the resource group.|Projects_List|
|Update|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.Migrate/projects/%{project_name}`|Put|Create a project with specified name. If a project already exists, update it.|Projects_Create|
|Delete|`/subscriptions/%{subscription_id}/resourcegroups/%{resource_group_name}/providers/Microsoft.Migrate/projects/%{project_name}`|Delete|Delete the project. Deleting non-existent project is a no-operation.|Projects_Delete|
