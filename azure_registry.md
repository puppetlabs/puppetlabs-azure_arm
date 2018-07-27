Document: "containerregistry"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/containerregistry/resource-manager/Microsoft.ContainerRegistry/stable/2017-10-01/containerregistry.json")

## Registry

An object that represents a container registry.

```puppet
azure_registry {
  api_version => "api_version",
  location => "location (optional)",
  properties => $azure_registry_properties
  registry => "registry",
  resource_group_name => "resource_group_name",
  sku => $azure_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The client API version. |
|location | String | false | The location of the resource. This cannot be changed after the resource is created. |
|properties | [RegistryProperties](#registryproperties) | false | The properties of the container registry. |
|registry | Hash | true | The parameters for creating a container registry. |
|resource_group_name | String | true | The name of the resource group to which the container registry belongs. |
|sku | [Sku](#sku) | true | The SKU of the container registry. |
|subscription_id | String | true | The Microsoft Azure subscription ID. |
|tags | Hash | false | The tags of the resource. |
        
## RegistryProperties

The properties of a container registry.

```puppet
$azure_registry_properties = {
  adminUserEnabled => "adminUserEnabled (optional)",
  status => $azure_status
  storageAccount => $azure_storage_account_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|adminUserEnabled | Boolean | false | The value that indicates whether the admin user is enabled. |
|status | [Status](#status) | false | The status of the container registry at the time the operation was called. |
|storageAccount | [StorageAccountProperties](#storageaccountproperties) | false | The properties of the storage account for the container registry. Only applicable to Classic SKU. |
        
## Status

The status of an Azure resource at the time the operation was called.

```puppet
$azure_status = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## StorageAccountProperties

The properties of a storage account for a container registry. Only applicable to Classic SKU.

```puppet
$azure_storage_account_properties = {
  id => "id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | true | The resource ID of the storage account. |
        
## Sku

The SKU of a container registry.

```puppet
$azure_sku = {
  name => "name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | The SKU name of the container registry. Required for registry creation. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Registry

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}`|Put|Creates a container registry with the specified parameters.|Registries_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.ContainerRegistry/registries`|Get|Lists all the container registries under the specified subscription.|Registries_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}`|Get|Gets the properties of the specified container registry.|Registries_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries`|Get|Lists all the container registries under the specified resource group.|Registries_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}`|Put|Creates a container registry with the specified parameters.|Registries_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}`|Delete|Deletes a container registry.|Registries_Delete|
