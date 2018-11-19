Document: "applicationSecurityGroup"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/network/resource-manager/Microsoft.Network/stable/2018-05-01/applicationSecurityGroup.json")

## ApplicationSecurityGroup

An application security group in a resource group.

```puppet
azure_application_security_group {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_application_security_group_properties_format
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|parameters | Hash | true | Parameters supplied to the create or update ApplicationSecurityGroup operation. |
|properties | [ApplicationSecurityGroupPropertiesFormat](#applicationsecuritygrouppropertiesformat) | false | Properties of the application security group. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
        
## ApplicationSecurityGroupPropertiesFormat

Application security group properties.

```puppet
$azure_application_security_group_properties_format = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ApplicationSecurityGroup

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/applicationSecurityGroups/%{application_security_group_name}`|Put|Creates or updates an application security group.|ApplicationSecurityGroups_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/applicationSecurityGroups`|Get|Gets all application security groups in a subscription.|ApplicationSecurityGroups_ListAll|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/applicationSecurityGroups/%{application_security_group_name}`|Get|Gets information about the specified application security group.|ApplicationSecurityGroups_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/applicationSecurityGroups`|Get|Gets all application security groups in a subscription.|ApplicationSecurityGroups_ListAll|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/applicationSecurityGroups/%{application_security_group_name}`|Put|Creates or updates an application security group.|ApplicationSecurityGroups_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/applicationSecurityGroups/%{application_security_group_name}`|Delete|Deletes the specified application security group.|ApplicationSecurityGroups_Delete|
