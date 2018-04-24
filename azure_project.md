Document: "migrate"
Path: "/root/specs/specification/migrate/resource-manager/Microsoft.Migrate/stable/2018-02-02/migrate.json")

## Project

```puppet
azure_project {
  api_version => "api_version",
  e_tag => "e_tag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_project_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Standard request header. Used by service to identify API version used by client. |
|e_tag | String | false | For optimistic concurrency control. |
|id | String | false | Path reference to this project /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/projects/{projectName} |
|location | String | false | Azure location in which project is created. |
|name | String | false | Name of the project. |
|properties | [ProjectProperties](#projectproperties) | false | Properties of the project. |
|resource_group_name | String | true | Name of the Azure Resource Group that project is part of. |
|subscription_id | String | true | Azure Subscription Id in which project was created. |
|tags | Hash | false | Tags provided by Azure Tagging service. |
|type | String | false | Type of the object = [Microsoft.Migrate/projects]. |
        
## ProjectProperties

```puppet
$azure_project_properties = {
  createdTimestamp => "createdTimestamp (optional)",
  customerWorkspaceId => "customerWorkspaceId (optional)",
  customerWorkspaceLocation => "customerWorkspaceLocation (optional)",
  discoveryStatus => "discoveryStatus (optional)",
  lastAssessmentTimestamp => "lastAssessmentTimestamp (optional)",
  lastDiscoverySessionId => "lastDiscoverySessionId (optional)",
  lastDiscoveryTimestamp => "lastDiscoveryTimestamp (optional)",
  numberOfAssessments => "1234 (optional)",
  numberOfGroups => "1234 (optional)",
  numberOfMachines => "1234 (optional)",
  provisioningState => "provisioningState (optional)",
  updatedTimestamp => "updatedTimestamp (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|createdTimestamp | String | false | Time when this project was created. Date-Time represented in ISO-8601 format. |
|customerWorkspaceId | String | false | ARM ID of the Service Map workspace created by user. |
|customerWorkspaceLocation | String | false | Location of the Service Map workspace created by user. |
|discoveryStatus | String | false | Reports whether project is under discovery. |
|lastAssessmentTimestamp | String | false | Time when last assessment was created. Date-Time represented in ISO-8601 format. This value will be null until assessment is created. |
|lastDiscoverySessionId | String | false | Session id of the last discovery. |
|lastDiscoveryTimestamp | String | false | Time when this project was created. Date-Time represented in ISO-8601 format. This value will be null until discovery is complete. |
|numberOfAssessments | Integer | false | Number of assessments created in the project. |
|numberOfGroups | Integer | false | Number of groups created in the project. |
|numberOfMachines | Integer | false | Number of machines in the project. |
|provisioningState | String | false | Provisioning state of the project. |
|updatedTimestamp | String | false | Time when this project was last updated. Date-Time represented in ISO-8601 format. |



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