Document: "devspaces"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/devspaces/resource-manager/Microsoft.DevSpaces/stable/2019-04-01/devspaces.json")

## Controller



```puppet
azure_controller {
  api_version => "api_version",
  controller => "controller",
  location => "location (optional)",
  properties => $azure_controller_properties
  resource_group_name => "resource_group_name",
  sku => $azure_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|controller | Hash | true | Controller create parameters. |
|location | String | false | Region where the Azure resource is located. |
|properties | [ControllerProperties](#controllerproperties) | true |  |
|resource_group_name | String | true | Resource group to which the resource belongs. |
|sku | [Sku](#sku) | true |  |
|subscription_id | String | true | Azure subscription ID. |
|tags | Hash | false | Tags for the Azure resource. |
        
## ControllerProperties



```puppet
$azure_controller_properties = {
  targetContainerHostCredentialsBase64 => "targetContainerHostCredentialsBase64",
  targetContainerHostResourceId => "targetContainerHostResourceId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|targetContainerHostCredentialsBase64 | String | true | Credentials of the target container host (base64). |
|targetContainerHostResourceId | String | true | Resource ID of the target container host |
        
## Sku

Model representing SKU for Azure Dev Spaces Controller.

```puppet
$azure_sku = {
  name => "name",
  tier => "tier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | The name of the SKU for Azure Dev Spaces Controller. |
|tier | String | false | The tier of the SKU for Azure Dev Spaces Controller. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Controller

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DevSpaces/controllers/%{name}`|Put|Creates an Azure Dev Spaces Controller with the specified create parameters.|Controllers_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.DevSpaces/controllers`|Get|Lists all the Azure Dev Spaces Controllers with their properties in the subscription.|Controllers_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DevSpaces/controllers/%{name}`|Get|Gets the properties for an Azure Dev Spaces Controller.|Controllers_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DevSpaces/controllers`|Get|Lists all the Azure Dev Spaces Controllers with their properties in the specified resource group and subscription.|Controllers_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DevSpaces/controllers/%{name}`|Put|Creates an Azure Dev Spaces Controller with the specified create parameters.|Controllers_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DevSpaces/controllers/%{name}`|Delete|Deletes an existing Azure Dev Spaces Controller.|Controllers_Delete|
