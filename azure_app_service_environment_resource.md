Document: "AppServiceEnvironments"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/web/resource-manager/Microsoft.Web/stable/2018-02-01/AppServiceEnvironments.json")

## AppServiceEnvironmentResource

App Service Environment ARM resource.

```puppet
azure_app_service_environment_resource {
  api_version => "api_version",
  hosting_environment_envelope => "hostingEnvironmentEnvelope",
  kind => "kind (optional)",
  location => "location (optional)",
  properties => $azure_app_service_environment
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|hosting_environment_envelope | Hash | true | Configuration details of the App Service Environment. |
|kind | String | false | Kind of resource. |
|location | String | false | Resource Location. |
|properties | [AppServiceEnvironment](#appserviceenvironment) | false | Core resource properties |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |
|tags | Hash | false | Resource tags. |
        
## AppServiceEnvironment

Description of an App Service Environment.

```puppet
$azure_app_service_environment = {
  apiManagementAccountId => "apiManagementAccountId (optional)",
  clusterSettings => $azure_name_value_pair
  dnsSuffix => "dnsSuffix (optional)",
  dynamicCacheEnabled => "dynamicCacheEnabled (optional)",
  environmentCapacities => $azure_stamp_capacity
  frontEndScaleFactor => "1234 (optional)",
  hasLinuxWorkers => "hasLinuxWorkers (optional)",
  internalLoadBalancingMode => "internalLoadBalancingMode (optional)",
  ipsslAddressCount => "1234 (optional)",
  location => "location",
  multiRoleCount => "1234 (optional)",
  multiSize => "multiSize (optional)",
  name => "name",
  networkAccessControlList => $azure_network_access_control_entry
  sslCertKeyVaultId => "sslCertKeyVaultId (optional)",
  sslCertKeyVaultSecretName => "sslCertKeyVaultSecretName (optional)",
  suspended => "suspended (optional)",
  userWhitelistedIpRanges => "userWhitelistedIpRanges (optional)",
  vipMappings => $azure_virtual_ip_mapping
  virtualNetwork => $azure_virtual_network_profile
  vnetName => "vnetName (optional)",
  vnetResourceGroupName => "vnetResourceGroupName (optional)",
  vnetSubnetName => "vnetSubnetName (optional)",
  workerPools => $azure_worker_pool
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|apiManagementAccountId | String | false | API Management Account associated with the App Service Environment. |
|clusterSettings | [NameValuePair](#namevaluepair) | false | Custom settings for changing the behavior of the App Service Environment. |
|dnsSuffix | String | false | DNS suffix of the App Service Environment. |
|dynamicCacheEnabled | Boolean | false | True/false indicating whether the App Service Environment is suspended. The environment can be suspended e.g. when the management endpoint is no longer available(most likely because NSG blocked the incoming traffic). |
|environmentCapacities | [StampCapacity](#stampcapacity) | false | Current total, used, and available worker capacities. |
|frontEndScaleFactor | Integer | false | Scale factor for front-ends. |
|hasLinuxWorkers | Boolean | false | Flag that displays whether an ASE has linux workers or not |
|internalLoadBalancingMode | String | false | Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment. |
|ipsslAddressCount | Integer | false | Number of IP SSL addresses reserved for the App Service Environment. |
|location | String | true | Location of the App Service Environment, e.g. 'West US'. |
|multiRoleCount | Integer | false | Number of front-end instances. |
|multiSize | String | false | Front-end VM size, e.g. 'Medium', 'Large'. |
|name | String | true | Name of the App Service Environment. |
|networkAccessControlList | [NetworkAccessControlEntry](#networkaccesscontrolentry) | false | Access control list for controlling traffic to the App Service Environment. |
|sslCertKeyVaultId | String | false | Key Vault ID for ILB App Service Environment default SSL certificate |
|sslCertKeyVaultSecretName | String | false | Key Vault Secret Name for ILB App Service Environment default SSL certificate |
|suspended | Boolean | false | <code>true</code> if the App Service Environment is suspended; otherwise, <code>false</code>. The environment can be suspended, e.g. when the management endpoint is no longer available (most likely because NSG blocked the incoming traffic). |
|userWhitelistedIpRanges | Array | false | User added ip ranges to whitelist on ASE db |
|vipMappings | [VirtualIPMapping](#virtualipmapping) | false | Description of IP SSL mapping for the App Service Environment. |
|virtualNetwork | [VirtualNetworkProfile](#virtualnetworkprofile) | true | Description of the Virtual Network. |
|vnetName | String | false | Name of the Virtual Network for the App Service Environment. |
|vnetResourceGroupName | String | false | Resource group of the Virtual Network. |
|vnetSubnetName | String | false | Subnet of the Virtual Network. |
|workerPools | [WorkerPool](#workerpool) | true | Description of worker pools with worker size IDs, VM sizes, and number of workers in each pool. |
        
## NameValuePair

Name value pair.

```puppet
$azure_name_value_pair = {
  name => "name (optional)",
  value => "value (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | Pair name. |
|value | String | false | Pair value. |
        
## StampCapacity

Stamp capacity information.

```puppet
$azure_stamp_capacity = {
  availableCapacity => "1234 (optional)",
  computeMode => "computeMode (optional)",
  excludeFromCapacityAllocation => "excludeFromCapacityAllocation (optional)",
  isApplicableForAllComputeModes => "isApplicableForAllComputeModes (optional)",
  isLinux => "isLinux (optional)",
  name => "name (optional)",
  siteMode => "siteMode (optional)",
  totalCapacity => "1234 (optional)",
  unit => "unit (optional)",
  workerSize => "workerSize (optional)",
  workerSizeId => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|availableCapacity | Integer | false | Available capacity (# of machines, bytes of storage etc...). |
|computeMode | String | false | Shared/dedicated workers. |
|excludeFromCapacityAllocation | Boolean | false | If <code>true</code>, it includes basic apps.Basic apps are not used for capacity allocation. |
|isApplicableForAllComputeModes | Boolean | false | <code>true</code> if capacity is applicable for all apps; otherwise, <code>false</code>. |
|isLinux | Boolean | false | Is this a linux stamp capacity |
|name | String | false | Name of the stamp. |
|siteMode | String | false | Shared or Dedicated. |
|totalCapacity | Integer | false | Total capacity (# of machines, bytes of storage etc...). |
|unit | String | false | Name of the unit. |
|workerSize | String | false | Size of the machines. |
|workerSizeId | Integer | false | Size ID of machines: 0 - Small1 - Medium2 - Large |
        
## NetworkAccessControlEntry

Network access control entry.

```puppet
$azure_network_access_control_entry = {
  action => "action (optional)",
  description => "description (optional)",
  order => "1234 (optional)",
  remoteSubnet => "remoteSubnet (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|action | String | false | Action object. |
|description | String | false | Description of network access control entry. |
|order | Integer | false | Order of precedence. |
|remoteSubnet | String | false | Remote subnet. |
        
## VirtualIPMapping

Virtual IP mapping.

```puppet
$azure_virtual_ip_mapping = {
  internalHttpPort => "1234 (optional)",
  internalHttpsPort => "1234 (optional)",
  inUse => "inUse (optional)",
  virtualIP => "virtualIP (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|internalHttpPort | Integer | false | Internal HTTP port. |
|internalHttpsPort | Integer | false | Internal HTTPS port. |
|inUse | Boolean | false | Is virtual IP mapping in use. |
|virtualIP | String | false | Virtual IP address. |
        
## VirtualNetworkProfile

Specification for using a Virtual Network.

```puppet
$azure_virtual_network_profile = {
  id => "id (optional)",
  subnet => "subnet (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource id of the Virtual Network. |
|subnet | String | false | Subnet within the Virtual Network. |
        
## WorkerPool

Worker pool of an App Service Environment.

```puppet
$azure_worker_pool = {
  computeMode => "computeMode (optional)",
  workerCount => "1234 (optional)",
  workerSize => "workerSize (optional)",
  workerSizeId => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|computeMode | String | false | Shared or dedicated app hosting. |
|workerCount | Integer | false | Number of instances in the worker pool. |
|workerSize | String | false | VM size of the worker pool instances. |
|workerSizeId | Integer | false | Worker size ID for referencing this worker pool. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the AppServiceEnvironmentResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/hostingEnvironments/%{name}`|Put|Create or update an App Service Environment.|AppServiceEnvironments_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Web/hostingEnvironments`|Get|Get all App Service Environments for a subscription.|AppServiceEnvironments_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/hostingEnvironments/%{name}`|Get|Get the properties of an App Service Environment.|AppServiceEnvironments_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/providers/Microsoft.Web/hostingEnvironments`|Get|Get all App Service Environments for a subscription.|AppServiceEnvironments_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/hostingEnvironments/%{name}`|Put|Create or update an App Service Environment.|AppServiceEnvironments_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/hostingEnvironments/%{name}`|Delete|Delete an App Service Environment.|AppServiceEnvironments_Delete|
