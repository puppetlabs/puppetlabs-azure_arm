Document: "containerregistry"
Path: "/root/specs/specification/containerregistry/resource-manager/Microsoft.ContainerRegistry/stable/2017-10-01/containerregistry.json")

## Registry

```puppet
azure_registry {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_registry_properties
  registry => "registry",
  resource_group_name => "resource_group_name",
  sku => $azure_sku
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
|properties | [RegistryProperties](#registryproperties) | false | The properties of the container registry. |
|registry | Hash | true | The parameters for creating a container registry. |
|resource_group_name | String | true | The name of the resource group to which the container registry belongs. |
|sku | [Sku](#sku) | true | The SKU of the container registry. |
|subscription_id | String | true | The Microsoft Azure subscription ID. |
|tags | Hash | false | The tags of the resource. |
|type | String | false | The type of the resource. |
        
## RegistryProperties

```puppet
$azure_registry_properties = {
  adminUserEnabled => "adminUserEnabled (optional)",
  creationDate => "creationDate (optional)",
  loginServer => "loginServer (optional)",
  provisioningState => "provisioningState (optional)",
  status => $azure_status
  storageAccount => $azure_storage_account_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|adminUserEnabled | Boolean | false | The value that indicates whether the admin user is enabled. |
|creationDate | String | false | The creation date of the container registry in ISO8601 format. |
|loginServer | String | false | The URL that can be used to log into the container registry. |
|provisioningState | String | false | The provisioning state of the container registry at the time the operation was called. |
|status | [Status](#status) | false | The status of the container registry at the time the operation was called. |
|storageAccount | [StorageAccountProperties](#storageaccountproperties) | false | The properties of the storage account for the container registry. Only applicable to Classic SKU. |
        
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
        
## StorageAccountProperties

```puppet
$azure_storage_account_properties = {
  id => "id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | true | The resource ID of the storage account. |
        
## Sku

```puppet
$azure_sku = {
  name => "name",
  tier => "tier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | The SKU name of the container registry. Required for registry creation. |
|tier | String | false | The SKU tier based on the SKU name. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Registry

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}`|Put|Creates a container registry with the specified parameters.|Registries_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.ContainerRegistry/registries`|Get|Lists all the container registries under the specified subscription.|Registries_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}`|Get|Gets the properties of the specified container registry.|Registries_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.ContainerRegistry/registries`|Get|Lists all the container registries under the specified subscription.|Registries_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}`|Put|Creates a container registry with the specified parameters.|Registries_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}`|Delete|Deletes a container registry.|Registries_Delete|