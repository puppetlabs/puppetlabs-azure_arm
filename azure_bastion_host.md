Document: "bastionHost"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/network/resource-manager/Microsoft.Network/stable/2019-06-01/bastionHost.json")

## BastionHost

Bastion Host resource.

```puppet
azure_bastion_host {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_bastion_host_properties_format
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
|parameters | Hash | true | Parameters supplied to the create or update Bastion Host operation. |
|properties | [BastionHostPropertiesFormat](#bastionhostpropertiesformat) | false | Represents the bastion host resource. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
        
## BastionHostPropertiesFormat

Properties of the Bastion Host.

```puppet
$azure_bastion_host_properties_format = {
  dnsName => "dnsName (optional)",
  ipConfigurations => $azure_bastion_host_ip_configuration
  provisioningState => $azure_provisioning_state
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dnsName | String | false | FQDN for the endpoint on which bastion host is accessible. |
|ipConfigurations | [BastionHostIPConfiguration](#bastionhostipconfiguration) | false | IP configuration of the Bastion Host resource. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | The provisioning state of the resource. |
        
## BastionHostIPConfiguration

IP configuration of an Bastion Host.

```puppet
$azure_bastion_host_ip_configuration = {
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_bastion_host_ip_configuration_properties_format
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
|name | String | false | Name of the resource that is unique within a resource group. This name can be used to access the resource. |
|properties | [BastionHostIPConfigurationPropertiesFormat](#bastionhostipconfigurationpropertiesformat) | false | Represents the ip configuration associated with the resource. |
        
## BastionHostIPConfigurationPropertiesFormat

Properties of IP configuration of an Bastion Host.

```puppet
$azure_bastion_host_ip_configuration_properties_format = {
  privateIPAllocationMethod => $azure_ip_allocation_method
  provisioningState => $azure_provisioning_state
  publicIPAddress => $azure_sub_resource
  subnet => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|privateIPAllocationMethod | [IPAllocationMethod](#ipallocationmethod) | false | Private IP allocation method. |
|provisioningState | [ProvisioningState](#provisioningstate) | false | The provisioning state of the resource. |
|publicIPAddress | [SubResource](#subresource) | true | Reference of the PublicIP resource. |
|subnet | [SubResource](#subresource) | true | Reference of the subnet resource. |
        
## IPAllocationMethod

IP address allocation method.

```puppet
$azure_ip_allocation_method = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ProvisioningState

The current provisioning state.

```puppet
$azure_provisioning_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## SubResource

Reference to another subresource.

```puppet
$azure_sub_resource = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID. |
        
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the BastionHost

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/bastionHosts/%{bastion_host_name}`|Put|Creates or updates the specified Bastion Host.|BastionHosts_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/bastionHosts`|Get|Lists all Bastion Hosts in a subscription.|BastionHosts_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/bastionHosts/%{bastion_host_name}`|Get|Gets the specified Bastion Host.|BastionHosts_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/bastionHosts`|Get|Lists all Bastion Hosts in a subscription.|BastionHosts_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/bastionHosts/%{bastion_host_name}`|Put|Creates or updates the specified Bastion Host.|BastionHosts_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/bastionHosts/%{bastion_host_name}`|Delete|Deletes the specified Bastion Host.|BastionHosts_Delete|
