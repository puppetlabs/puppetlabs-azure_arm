Document: "kusto"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/azure-kusto/resource-manager/Microsoft.Kusto/stable/2019-05-15/kusto.json")

## Cluster

Class representing a Kusto cluster.

```puppet
azure_cluster {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_cluster_properties
  resource_group_name => "resource_group_name",
  sku => $azure_azure_sku
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  zones => $azure_zones
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version to use for this operation. |
|location | String | false | The geo-location where the resource lives |
|parameters | Hash | true | The Kusto cluster parameters supplied to the CreateOrUpdate operation. |
|properties | [ClusterProperties](#clusterproperties) | false | The cluster properties. |
|resource_group_name | String | true | The name of the resource group containing the Kusto cluster. |
|sku | [AzureSku](#azuresku) | true | The SKU of the cluster. |
|subscription_id | String | true | The ID of the target subscription. |
|tags | Hash | false | Resource tags. |
|zones | [Zones](#zones) | false | The availability zones of the cluster. |
        
## ClusterProperties

Class representing the Kusto cluster properties.

```puppet
$azure_cluster_properties = {
  enableDiskEncryption => "enableDiskEncryption (optional)",
  enableStreamingIngest => "enableStreamingIngest (optional)",
  optimizedAutoscale => $azure_optimized_autoscale
  trustedExternalTenants => $azure_trusted_external_tenant
  virtualNetworkConfiguration => $azure_virtual_network_configuration
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|enableDiskEncryption | Boolean | false | A boolean value that indicates if the cluster's disks are encrypted. |
|enableStreamingIngest | Boolean | false | A boolean value that indicates if the streaming ingest is enabled. |
|optimizedAutoscale | [OptimizedAutoscale](#optimizedautoscale) | false | Optimized auto scale definition. |
|trustedExternalTenants | [TrustedExternalTenant](#trustedexternaltenant) | false | The cluster's external tenants. |
|virtualNetworkConfiguration | [VirtualNetworkConfiguration](#virtualnetworkconfiguration) | false | Virtual network definition. |
        
## OptimizedAutoscale

A class that contains the optimized auto scale definition.

```puppet
$azure_optimized_autoscale = {
  isEnabled => "isEnabled",
  maximum => "1234",
  minimum => "1234",
  version => "1234",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|isEnabled | Boolean | true | A boolean value that indicate if the optimized autoscale feature is enabled or not. |
|maximum | Integer | true | Maximum allowed instances count. |
|minimum | Integer | true | Minimum allowed instances count. |
|version | Integer | true | The version of the template defined, for instance 1. |
        
## TrustedExternalTenant

Represents a tenant ID that is trusted by the cluster.

```puppet
$azure_trusted_external_tenant = {
  value => "value (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|value | String | false | GUID representing an external tenant. |
        
## VirtualNetworkConfiguration

A class that contains virtual network definition.

```puppet
$azure_virtual_network_configuration = {
  dataManagementPublicIpId => "dataManagementPublicIpId",
  enginePublicIpId => "enginePublicIpId",
  subnetId => "subnetId",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dataManagementPublicIpId | String | true | Data management's service public IP address resource id. |
|enginePublicIpId | String | true | Engine service's public IP address resource id. |
|subnetId | String | true | The subnet resource id. |
        
## AzureSku

Azure SKU definition.

```puppet
$azure_azure_sku = {
  capacity => "1234 (optional)",
  name => "name",
  tier => "tier",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|capacity | Integer | false | The number of instances of the cluster. |
|name | String | true | SKU name. |
|tier | String | true | SKU tier. |
        
## Zones

An array represents the availability zones of the cluster.

```puppet
$azure_zones = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Cluster

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Kusto/clusters/%{cluster_name}`|Put|Create or update a Kusto cluster.|Clusters_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Kusto/clusters`|Get|Lists all Kusto clusters within a subscription.|Clusters_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Kusto/clusters/%{cluster_name}`|Get|Gets a Kusto cluster.|Clusters_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Kusto/clusters`|Get|Lists all Kusto clusters within a subscription.|Clusters_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Kusto/clusters/%{cluster_name}`|Put|Create or update a Kusto cluster.|Clusters_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Kusto/clusters/%{cluster_name}`|Delete|Deletes a Kusto cluster.|Clusters_Delete|
