Document: "ManagedIdentity"


Path: "/tmp/azure-rest-api-specs/specification/msi/resource-manager/Microsoft.ManagedIdentity/stable/2018-11-30/ManagedIdentity.json")

## Identity

Describes an identity resource.

```puppet
azure_identity {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_identity_properties
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of API to invoke. |
|location | String | false | The Azure region where the identity lives. |
|parameters | Hash | true | Parameters to create or update the identity |
|properties | [IdentityProperties](#identityproperties) | false | The properties associated with the identity. |
|resource_group_name | String | true | The name of the Resource Group to which the identity belongs. |
|resource_name | String | true | The name of the identity resource. |
|subscription_id | String | true | The Id of the Subscription to which the identity belongs. |
|tags | Hash | false | Resource tags |
        
## IdentityProperties

The properties associated with the identity.

```puppet
$azure_identity_properties = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Identity

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/%{resource_name}`|Put|Create or update an identity in the specified subscription and resource group.|UserAssignedIdentities_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.ManagedIdentity/userAssignedIdentities`|Get|Lists all the userAssignedIdentities available under the specified subscription.|UserAssignedIdentities_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/%{resource_name}`|Get|Gets the identity.|UserAssignedIdentities_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.ManagedIdentity/userAssignedIdentities`|Get|Lists all the userAssignedIdentities available under the specified subscription.|UserAssignedIdentities_ListBySubscription|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/%{resource_name}`|Put|Create or update an identity in the specified subscription and resource group.|UserAssignedIdentities_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/%{resource_name}`|Delete|Deletes the identity.|UserAssignedIdentities_Delete|
