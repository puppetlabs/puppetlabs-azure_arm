Document: "natGateway"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/network/resource-manager/Microsoft.Network/stable/2019-06-01/natGateway.json")

## NatGateway

Nat Gateway resource.

```puppet
azure_nat_gateway {
  api_version => "api_version",
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_nat_gateway_properties_format
  resource_group_name => "resource_group_name",
  sku => $azure_nat_gateway_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  zones => "zones (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|etag | String | false | A unique read-only string that changes whenever the resource is updated. |
|id | String | false | Resource ID. |
|location | String | false | Resource location. |
|parameters | Hash | true | Parameters supplied to the create or update nat gateway operation. |
|properties | [NatGatewayPropertiesFormat](#natgatewaypropertiesformat) | false | Nat Gateway properties. |
|resource_group_name | String | true | The name of the resource group. |
|sku | [NatGatewaySku](#natgatewaysku) | false | The nat gateway SKU. |
|subscription_id | String | true | The subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
|zones | Array | false | A list of availability zones denoting the zone in which Nat Gateway should be deployed. |
        
## NatGatewayPropertiesFormat

Nat Gateway properties.

```puppet
$azure_nat_gateway_properties_format = {
  idleTimeoutInMinutes => "1234 (optional)",
  provisioningState => "provisioningState (optional)",
  publicIpAddresses => $azure_sub_resource
  publicIpPrefixes => $azure_sub_resource
  resourceGuid => "resourceGuid (optional)",
  subnets => $azure_sub_resource
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|idleTimeoutInMinutes | Integer | false | The idle timeout of the nat gateway. |
|provisioningState | String | false | The provisioning state of the NatGateway resource. Possible values are: 'Updating', 'Deleting', and 'Failed'. |
|publicIpAddresses | [SubResource](#subresource) | false | An array of public ip addresses associated with the nat gateway resource. |
|publicIpPrefixes | [SubResource](#subresource) | false | An array of public ip prefixes associated with the nat gateway resource. |
|resourceGuid | String | false | The resource GUID property of the nat gateway resource. |
|subnets | [SubResource](#subresource) | false | An array of references to the subnets using this nat gateway resource. |
        
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
        
        
        
## NatGatewaySku

SKU of nat gateway.

```puppet
$azure_nat_gateway_sku = {
  name => "name (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | Name of Nat Gateway SKU. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the NatGateway

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/natGateways/%{nat_gateway_name}`|Put|Creates or updates a nat gateway.|NatGateways_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/natGateways`|Get|Gets all the Nat Gateways in a subscription.|NatGateways_ListAll|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/natGateways/%{nat_gateway_name}`|Get|Gets the specified nat gateway in a specified resource group.|NatGateways_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/natGateways`|Get|Gets all the Nat Gateways in a subscription.|NatGateways_ListAll|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/natGateways/%{nat_gateway_name}`|Put|Creates or updates a nat gateway.|NatGateways_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/natGateways/%{nat_gateway_name}`|Delete|Deletes the specified nat gateway.|NatGateways_Delete|
