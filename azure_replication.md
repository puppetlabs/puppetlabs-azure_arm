Document: "containerregistry"
Path: "/root/specs/specification/containerregistry/resource-manager/Microsoft.ContainerRegistry/stable/2017-10-01/containerregistry.json")

## Replication

```puppet
azure_replication {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_replication_properties
  registry_name => "registry_name",
  replication => "replication",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The client API version. |
|id | String | false | The resource ID. |
|location | String | false | The location of the resource. This cannot be changed after the resource is created. |
|name | String | false | The name of the resource. |
|properties | [ReplicationProperties](#replicationproperties) | false | The properties of the replication. |
|registry_name | String | true | The name of the container registry. |
|replication | Hash | true | The parameters for creating a replication. |
|resource_group_name | String | true | The name of the resource group to which the container registry belongs. |
|subscription_id | String | true | The Microsoft Azure subscription ID. |
|tags | Hash | false | The tags of the resource. |
|type | String | false | The type of the resource. |
        
## ReplicationProperties

```puppet
$azure_replication_properties = {
  provisioningState => "provisioningState (optional)",
  status => $azure_status
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|provisioningState | String | false | The provisioning state of the replication at the time the operation was called. |
|status | [Status](#status) | false | The status of the replication at the time the operation was called. |
        
## Status

```puppet
$azure_status = {
  displayStatus => "displayStatus (optional)",
  message => "message (optional)",
  timestamp => "timestamp (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|displayStatus | String | false | The short label for the status. |
|message | String | false | The detailed message for the status, including alerts and error messages. |
|timestamp | String | false | The timestamp when the status was changed to the current value. |



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