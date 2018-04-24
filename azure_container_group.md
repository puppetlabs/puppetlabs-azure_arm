Document: "containerInstance"
Path: "/root/specs/specification/containerinstance/resource-manager/Microsoft.ContainerInstance/stable/2018-04-01/containerInstance.json")

## ContainerGroup

```puppet
azure_container_group {
  api_version => "api_version",
  container_group => "containerGroup",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version |
|container_group | Hash | true | The properties of the container group to be created or updated. |
|id | String | false | The resource id. |
|location | String | false | The resource location. |
|name | String | false | The resource name. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | The resource tags. |
|type | String | false | The resource type. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ContainerGroup

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerInstance/containerGroups/%{container_group_name}`|Put|Create or update container groups with specified configurations.|ContainerGroups_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.ContainerInstance/containerGroups`|Get|Get a list of container groups in the specified subscription. This operation returns properties of each container group including containers, image registry credentials, restart policy, IP address type, OS type, state, and volumes.|ContainerGroups_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerInstance/containerGroups/%{container_group_name}`|Get|Gets the properties of the specified container group in the specified subscription and resource group. The operation returns the properties of each container group including containers, image registry credentials, restart policy, IP address type, OS type, state, and volumes.|ContainerGroups_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerInstance/containerGroups`|Get|Get a list of container groups in a specified subscription and resource group. This operation returns properties of each container group including containers, image registry credentials, restart policy, IP address type, OS type, state, and volumes.|ContainerGroups_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerInstance/containerGroups/%{container_group_name}`|Put|Create or update container groups with specified configurations.|ContainerGroups_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerInstance/containerGroups/%{container_group_name}`|Delete|Delete the specified container group in the specified subscription and resource group. The operation does not delete other resources provided by the user, such as volumes.|ContainerGroups_Delete|