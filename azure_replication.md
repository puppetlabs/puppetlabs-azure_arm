Document: "containerregistry"


Path: "/tmp/azure-rest-api-specs/specification/containerregistry/resource-manager/Microsoft.ContainerRegistry/stable/2017-10-01/containerregistry.json")

## Replication

An object that represents a replication for a container registry.

```puppet
azure_replication {
  api_version => "api_version",
  location => "location (optional)",
  properties => $azure_replication_properties
  registry_name => "registry_name",
  replication => "replication",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The client API version. |
|location | String | false | The location of the resource. This cannot be changed after the resource is created. |
|properties | [ReplicationProperties](#replicationproperties) | false | The properties of the replication. |
|registry_name | String | true | The name of the container registry. |
|replication | Hash | true | The parameters for creating a replication. |
|resource_group_name | String | true | The name of the resource group to which the container registry belongs. |
|subscription_id | String | true | The Microsoft Azure subscription ID. |
|tags | Hash | false | The tags of the resource. |
        
## ReplicationProperties

The properties of a replication.

```puppet
$azure_replication_properties = {
  status => $azure_status
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|status | [Status](#status) | false | The status of the replication at the time the operation was called. |
        
## Status

The status of an Azure resource at the time the operation was called.

```puppet
$azure_status = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Replication

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}/replications/%{replication_name}`|Put|Creates a replication for a container registry with the specified parameters.|Replications_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}/replications/%{replication_name}`|Get|Gets the properties of the specified replication.|Replications_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}/replications`|Get|Lists all the replications for the specified container registry.|Replications_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}/replications/%{replication_name}`|Put|Creates a replication for a container registry with the specified parameters.|Replications_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}/replications/%{replication_name}`|Delete|Deletes a replication from a container registry.|Replications_Delete|
