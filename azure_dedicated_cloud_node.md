Document: "vmwarecloudsimple"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/vmwarecloudsimple/resource-manager/Microsoft.VMwareCloudSimple/stable/2019-04-01/vmwarecloudsimple.json")

## DedicatedCloudNode

Dedicated cloud node model

```puppet
azure_dedicated_cloud_node {
  api_version => "api_version",
  dedicated_cloud_node_request => "dedicatedCloudNodeRequest",
  location => "location",
  properties => $azure_dedicated_cloud_node_properties
  referer => "referer",
  resource_group_name => "resource_group_name",
  sku => $azure_sku
  subscription_id => "subscription_id",
  tags => $azure_tags
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|dedicated_cloud_node_request | Hash | true | Create Dedicated Cloud Node request |
|location | String | true | Azure region |
|properties | [DedicatedCloudNodeProperties](#dedicatedcloudnodeproperties) | false | Dedicated Cloud Nodes properties |
|referer | String | true | referer url |
|resource_group_name | String | true | The name of the resource group |
|sku | [Sku](#sku) | false | Dedicated Cloud Nodes SKU |
|subscription_id | String | true | The subscription ID. |
|tags | [Tags](#tags) | false | Dedicated Cloud Nodes tags |
        
## DedicatedCloudNodeProperties

Properties of dedicated cloud node

```puppet
$azure_dedicated_cloud_node_properties = {
  availabilityZoneId => "availabilityZoneId",
  nodesCount => "1234",
  placementGroupId => "placementGroupId",
  purchaseId => "purchaseId",
  skuDescription => $azure_sku_description
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|availabilityZoneId | String | true | Availability Zone id, e.g. 'az1' |
|nodesCount | Integer | true | count of nodes to create |
|placementGroupId | String | true | Placement Group id, e.g. 'n1' |
|purchaseId | String | true | purchase id |
|skuDescription | [SkuDescription](#skudescription) | false | Dedicated Cloud Nodes SKU's description |
        
## SkuDescription

The purchase SKU for CloudSimple paid resources

```puppet
$azure_sku_description = {
  id => "id",
  name => "name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | true | SKU's id |
|name | String | true | SKU's name |
        
## Sku

The purchase SKU for CloudSimple paid resources

```puppet
$azure_sku = {
  capacity => "capacity (optional)",
  description => "description (optional)",
  family => "family (optional)",
  name => "name",
  tier => "tier (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|capacity | String | false | The capacity of the SKU |
|description | String | false | dedicatedCloudNode example: 8 x Ten-Core Intel® Xeon® Processor E5-2640 v4 2.40GHz 25MB Cache (90W); 12 x 64GB PC4-19200 2400MHz DDR4 ECC Registered DIMM, ... |
|family | String | false | If the service has different generations of hardware, for the same SKU, then that can be captured here |
|name | String | true | The name of the SKU for VMWare CloudSimple Node |
|tier | String | false | The tier of the SKU |
        
## Tags

Tags model

```puppet
$azure_tags = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DedicatedCloudNode

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.VMwareCloudSimple/dedicatedCloudNodes/%{dedicated_cloud_node_name}`|Put|Returns dedicated cloud node by its name|dedicatedCloudNode_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.VMwareCloudSimple/dedicatedCloudNodes`|Get|Returns list of dedicate cloud nodes within subscription|dedicatedCloudNode_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.VMwareCloudSimple/dedicatedCloudNodes/%{dedicated_cloud_node_name}`|Get|Returns dedicated cloud node|dedicatedCloudNode_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.VMwareCloudSimple/dedicatedCloudNodes`|Get|Returns list of dedicate cloud nodes within subscription|dedicatedCloudNode_ListBySubscription|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.VMwareCloudSimple/dedicatedCloudNodes/%{dedicated_cloud_node_name}`|Put|Returns dedicated cloud node by its name|dedicatedCloudNode_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.VMwareCloudSimple/dedicatedCloudNodes/%{dedicated_cloud_node_name}`|Delete|Delete dedicated cloud node|dedicatedCloudNode_Delete|
