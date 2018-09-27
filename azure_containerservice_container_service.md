Document: "containerService"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/containerservices/resource-manager/Microsoft.ContainerService/stable/2017-07-01/containerService.json")

## ContainerService

Container service.

```puppet
azure_containerservice_container_service {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|location | String | false | Resource location |
|parameters | Hash | true | Parameters supplied to the Create or Update a Container Service operation. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the ContainerService

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/containerServices/%{container_service_name}`|Put|Creates or updates a container service with the specified configuration of orchestrator, masters, and agents.|ContainerServices_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.ContainerService/containerServices`|Get|Gets a list of container services in the specified subscription. The operation returns properties of each container service including state, orchestrator, number of masters and agents, and FQDNs of masters and agents.|ContainerServices_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/containerServices/%{container_service_name}`|Get|Gets the properties of the specified container service in the specified subscription and resource group. The operation returns the properties including state, orchestrator, number of masters and agents, and FQDNs of masters and agents. |ContainerServices_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/containerServices`|Get|Gets a list of container services in the specified subscription and resource group. The operation returns properties of each container service including state, orchestrator, number of masters and agents, and FQDNs of masters and agents.|ContainerServices_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/containerServices/%{container_service_name}`|Put|Creates or updates a container service with the specified configuration of orchestrator, masters, and agents.|ContainerServices_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerService/containerServices/%{container_service_name}`|Delete|Deletes the specified container service in the specified subscription and resource group. The operation does not delete other resources created as part of creating a container service, including storage accounts, VMs, and availability sets. All the other resources created with the container service are part of the same resource group and can be deleted individually.|ContainerServices_Delete|
