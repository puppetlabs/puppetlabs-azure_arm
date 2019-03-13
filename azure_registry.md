Document: "containerregistry"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/containerregistry/resource-manager/Microsoft.ContainerRegistry/stable/2017-10-01/containerregistry.json")

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
  networkRuleSet => $azure_network_rule_set
  status => $azure_status
  storageAccount => $azure_storage_account_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|adminUserEnabled | Boolean | false | The value that indicates whether the admin user is enabled. |
|networkRuleSet | [NetworkRuleSet](#networkruleset) | false | The network rule set for a container registry. |
|status | [Status](#status) | false | The status of the container registry at the time the operation was called. |
|storageAccount | [StorageAccountProperties](#storageaccountproperties) | false | The properties of the storage account for the container registry. Only applicable to Classic SKU. |
        
## NetworkRuleSet

The network rule set for a container registry.

```puppet
$azure_network_rule_set = {
  defaultAction => "defaultAction",
  ipRules => $azure_ip_rule
  virtualNetworkRules => $azure_virtual_network_rule
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|defaultAction | String | true | The default action of allow or deny when no other rules match. |
|ipRules | [IPRule](#iprule) | false | The IP ACL rules. |
|virtualNetworkRules | [VirtualNetworkRule](#virtualnetworkrule) | false | The virtual network rules. |
        
## IPRule

IP rule with specific IP or IP range in CIDR format.

```puppet
$azure_ip_rule = {
  action => "action (optional)",
  value => "value",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|action | String | false | The action of IP ACL rule. |
|value | String | true | Specifies the IP or IP range in CIDR format. Only IPV4 address is allowed. |
        
## VirtualNetworkRule

Virtual network rule.

```puppet
$azure_virtual_network_rule = {
  action => "action (optional)",
  id => "id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|action | String | false | The action of virtual network rule. |
|id | String | true | Resource ID of a subnet, for example: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualNetworks/{vnetName}/subnets/{subnetName}. |
        
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
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.ContainerRegistry/registries`|Get|Lists all the container registries under the specified subscription.|Registries_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}`|Put|Creates a container registry with the specified parameters.|Registries_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ContainerRegistry/registries/%{registry_name}`|Delete|Deletes a container registry.|Registries_Delete|
