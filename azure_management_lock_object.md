Document: "locks"


Path: "/tmp/azure-rest-api-specs/specification/resources/resource-manager/Microsoft.Authorization/stable/2016-09-01/locks.json")

## ManagementLockObject

The lock information.

```puppet
azure_management_lock_object {
  api_version => "api_version",
  lock_name => "lock_name",
  parameters => "parameters",
  properties => $azure_management_lock_properties
  resource_group_name => "resource_group_name",
  scope => "scope",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for the operation. |
|lock_name | String | true | The lock name. The lock name can be a maximum of 260 characters. It cannot contain <, > %, &, :, \, ?, /, or any control characters. |
|parameters | Hash | true | The management lock parameters. |
|properties | [ManagementLockProperties](#managementlockproperties) | true | The properties of the lock. |
|resource_group_name | String | true | The name of the resource group to lock. |
|scope | String | true | The scope for the lock. When providing a scope for the assignment, use '/subscriptions/{subscriptionId}' for subscriptions, '/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}' for resource groups, and '/subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{parentResourcePathIfPresent}/{resourceType}/{resourceName}' for resources. |
|subscription_id | String | true | The ID of the target subscription. |
        
## ManagementLockProperties

The lock properties.

```puppet
$azure_management_lock_properties = {
  level => "level",
  notes => "notes (optional)",
  owners => $azure_management_lock_owner
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|level | String | true | The level of the lock. Possible values are: NotSpecified, CanNotDelete, ReadOnly. CanNotDelete means authorized users are able to read and modify the resources, but not delete. ReadOnly means authorized users can only read from a resource, but they can't modify or delete it. |
|notes | String | false | Notes about the lock. Maximum of 512 characters. |
|owners | [ManagementLockOwner](#managementlockowner) | false | The owners of the lock. |
        
## ManagementLockOwner

Lock owner properties.

```puppet
$azure_management_lock_owner = {
  applicationId => "applicationId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|applicationId | String | false | The application ID of the lock owner. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ManagementLockObject

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Authorization/locks/%{lock_name}`|Put|When you apply a lock at a parent scope, all child resources inherit the same lock. To create management locks, you must have access to Microsoft.Authorization/* or Microsoft.Authorization/locks/* actions. Of the built-in roles, only Owner and User Access Administrator are granted those actions.|ManagementLocks_CreateOrUpdateAtResourceGroupLevel|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/locks`|Get|Gets all the management locks for a subscription.|ManagementLocks_ListAtSubscriptionLevel|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Authorization/locks/%{lock_name}`|Get|Gets a management lock at the resource group level.|ManagementLocks_GetAtResourceGroupLevel|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Authorization/locks`|Get|Gets all the management locks for a subscription.|ManagementLocks_ListAtSubscriptionLevel|
|Update|`/%{scope}/providers/Microsoft.Authorization/locks/%{lock_name}`|Put|Create or update a management lock by scope.|ManagementLocks_CreateOrUpdateByScope|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Authorization/locks/%{lock_name}`|Delete|To delete management locks, you must have access to Microsoft.Authorization/* or Microsoft.Authorization/locks/* actions. Of the built-in roles, only Owner and User Access Administrator are granted those actions.|ManagementLocks_DeleteAtResourceGroupLevel|
