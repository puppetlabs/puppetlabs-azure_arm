Document: "migrate"
Path: "/root/specs/specification/migrate/resource-manager/Microsoft.Migrate/stable/2018-02-02/migrate.json")

## Group

```puppet
azure_group {
  api_version => "api_version",
  e_tag => "e_tag (optional)",
  id => "id (optional)",
  name => "name (optional)",
  project_name => "project_name",
  properties => $azure_group_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Standard request header. Used by service to identify API version used by client. |
|e_tag | String | false | For optimistic concurrency control. |
|id | String | false | Path reference to this group. /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Migrate/projects/{projectName}/groups/{groupName} |
|name | String | false | Name of the group. |
|project_name | String | true | Name of the Azure Migrate project. |
|properties | [GroupProperties](#groupproperties) | true | Properties of the group. |
|resource_group_name | String | true | Name of the Azure Resource Group that project is part of. |
|subscription_id | String | true | Azure Subscription Id in which project was created. |
|type | String | false | Type of the object = [Microsoft.Migrate/projects/groups]. |
        
## GroupProperties

```puppet
$azure_group_properties = {
  assessments => "assessments (optional)",
  createdTimestamp => "createdTimestamp (optional)",
  machines => "machines",
  updatedTimestamp => "updatedTimestamp (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|assessments | Array | false | List of References to Assessments created on this group. |
|createdTimestamp | String | false | Time when this project was created. Date-Time represented in ISO-8601 format. |
|machines | Array | true | List of machine names that are part of this group. |
|updatedTimestamp | String | false | Time when this project was last updated. Date-Time represented in ISO-8601 format. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Group

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Migrate/projects/%{project_name}/groups/%{group_name}`|Put|Create a new group by sending a json object of type 'group' as given in Models section as part of the Request Body. The group name in a project is unique. Labels can be applied on a group as part of creation.

If a group with the groupName specified in the URL already exists, then this call acts as an update.

This operation is Idempotent.
|Groups_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Migrate/projects/%{project_name}/groups/%{group_name}`|Get|Get information related to a specific group in the project. Returns a json object of type 'group' as specified in the models section.|Groups_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Migrate/projects/%{project_name}/groups`|Get|Get all groups created in the project. Returns a json array of objects of type 'group' as specified in the Models section.|Groups_ListByProject|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Migrate/projects/%{project_name}/groups/%{group_name}`|Put|Create a new group by sending a json object of type 'group' as given in Models section as part of the Request Body. The group name in a project is unique. Labels can be applied on a group as part of creation.

If a group with the groupName specified in the URL already exists, then this call acts as an update.

This operation is Idempotent.
|Groups_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Migrate/projects/%{project_name}/groups/%{group_name}`|Delete|Delete the group from the project. The machines remain in the project. Deleting a non-existent group results in a no-operation.

A group is an aggregation mechanism for machines in a project. Therefore, deleting group does not delete machines in it.
|Groups_Delete|