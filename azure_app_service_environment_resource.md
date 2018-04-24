Document: "AppServiceEnvironments"
Path: "/root/specs/specification/web/resource-manager/Microsoft.Web/stable/2018-02-01/AppServiceEnvironments.json")

## AppServiceEnvironmentResource

```puppet
azure_app_service_environment_resource {
  api_version => "api_version",
  hosting_environment_envelope => "hostingEnvironmentEnvelope",
  id => "id (optional)",
  kind => "kind (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_app_service_environment
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|hosting_environment_envelope | Hash | true | Configuration details of the App Service Environment. |
|id | String | false | Resource Id. |
|kind | String | false | Kind of resource. |
|location | String | false | Resource Location. |
|name | String | false | Resource Name. |
|properties | [AppServiceEnvironment](#appserviceenvironment) | false | Core resource properties |
|resource_group_name | String | true | Name of the resource group to which the resource belongs. |
|subscription_id | String | true | Your Azure subscription ID. This is a GUID-formatted string (e.g. 00000000-0000-0000-0000-000000000000). |
|tags | Hash | false | Resource tags. |
|type | String | false | Resource type. |
        
## AppServiceEnvironment

```puppet
$azure_app_service_environment = {
  allowedMultiSizes => "allowedMultiSizes (optional)",
  allowedWorkerSizes => "allowedWorkerSizes (optional)",
  apiManagementAccountId => "apiManagementAccountId (optional)",
  clusterSettings => $azure_name_value_pair
  databaseEdition => "databaseEdition (optional)",
  databaseServiceObjective => "databaseServiceObjective (optional)",
  defaultFrontEndScaleFactor => "1234 (optional)",
  dnsSuffix => "dnsSuffix (optional)",
  dynamicCacheEnabled => "dynamicCacheEnabled (optional)",
  environmentCapacities => $azure_stamp_capacity
  environmentIsHealthy => "environmentIsHealthy (optional)",
  environmentStatus => "environmentStatus (optional)",
  frontEndScaleFactor => "1234 (optional)",
  hasLinuxWorkers => "hasLinuxWorkers (optional)",
  internalLoadBalancingMode => "internalLoadBalancingMode (optional)",
  ipsslAddressCount => "1234 (optional)",
  lastAction => "lastAction (optional)",
  lastActionResult => "lastActionResult (optional)",
  location => "location",
  maximumNumberOfMachines => "1234 (optional)",
  multiRoleCount => "1234 (optional)",
  multiSize => "multiSize (optional)",
  name => "name",
  networkAccessControlList => $azure_network_access_control_entry
  provisioningState => "provisioningState (optional)",
  resourceGroup => "resourceGroup (optional)",
  status => "status (optional)",
  subscriptionId => "subscriptionId (optional)",
  suspended => "suspended (optional)",
  upgradeDomains => "1234 (optional)",
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
|allowedMultiSizes | String | false | List of comma separated strings describing which VM sizes are allowed for front-ends. |
|allowedWorkerSizes | String | false | List of comma separated strings describing which VM sizes are allowed for workers. |
|apiManagementAccountId | String | false | API Management Account associated with the App Service Environment. |
|clusterSettings | [NameValuePair](#namevaluepair) | false | Custom settings for changing the behavior of the App Service Environment. |
|databaseEdition | String | false | Edition of the metadata database for the App Service Environment, e.g. 'Standard'. |
|databaseServiceObjective | String | false | Service objective of the metadata database for the App Service Environment, e.g. 'S0'. |
|defaultFrontEndScaleFactor | Integer | false | Default Scale Factor for FrontEnds. |
|dnsSuffix | String | false | DNS suffix of the App Service Environment. |
|dynamicCacheEnabled | Boolean | false | True/false indicating whether the App Service Environment is suspended. The environment can be suspended e.g. when the management endpoint is no longer available
(most likely because NSG blocked the incoming traffic). |
|environmentCapacities | [StampCapacity](#stampcapacity) | false | Current total, used, and available worker capacities. |
|environmentIsHealthy | Boolean | false | True/false indicating whether the App Service Environment is healthy. |
|environmentStatus | String | false | Detailed message about with results of the last check of the App Service Environment. |
|frontEndScaleFactor | Integer | false | Scale factor for front-ends. |
|hasLinuxWorkers | Boolean | false | Flag that displays whether an ASE has linux workers or not |
|internalLoadBalancingMode | String | false | Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment. |
|ipsslAddressCount | Integer | false | Number of IP SSL addresses reserved for the App Service Environment. |
|lastAction | String | false | Last deployment action on the App Service Environment. |
|lastActionResult | String | false | Result of the last deployment action on the App Service Environment. |
|location | String | true | Location of the App Service Environment, e.g. 'West US'. |
|maximumNumberOfMachines | Integer | false | Maximum number of VMs in the App Service Environment. |
|multiRoleCount | Integer | false | Number of front-end instances. |
|multiSize | String | false | Front-end VM size, e.g. 'Medium', 'Large'. |
|name | String | true | Name of the App Service Environment. |
|networkAccessControlList | [NetworkAccessControlEntry](#networkaccesscontrolentry) | false | Access control list for controlling traffic to the App Service Environment. |
|provisioningState | String | false | Provisioning state of the App Service Environment. |
|resourceGroup | String | false | Resource group of the App Service Environment. |
|status | String | false | Current status of the App Service Environment. |
|subscriptionId | String | false | Subscription of the App Service Environment. |
|suspended | Boolean | false | <code>true</code> if the App Service Environment is suspended; otherwise, <code>false</code>. The environment can be suspended, e.g. when the management endpoint is no longer available
 (most likely because NSG blocked the incoming traffic). |
|upgradeDomains | Integer | false | Number of upgrade domains of the App Service Environment. |
|userWhitelistedIpRanges | Array | false | User added ip ranges to whitelist on ASE db |
|vipMappings | [VirtualIPMapping](#virtualipmapping) | false | Description of IP SSL mapping for the App Service Environment. |
|virtualNetwork | [VirtualNetworkProfile](#virtualnetworkprofile) | true | Description of the Virtual Network. |
|vnetName | String | false | Name of the Virtual Network for the App Service Environment. |
|vnetResourceGroupName | String | false | Resource group of the Virtual Network. |
|vnetSubnetName | String | false | Subnet of the Virtual Network. |
|workerPools | [WorkerPool](#workerpool) | true | Description of worker pools with worker size IDs, VM sizes, and number of workers in each pool. |
        
## NameValuePair

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
|excludeFromCapacityAllocation | Boolean | false | If <code>true</code>, it includes basic apps.
Basic apps are not used for capacity allocation. |
|isApplicableForAllComputeModes | Boolean | false | <code>true</code> if capacity is applicable for all apps; otherwise, <code>false</code>. |
|isLinux | Boolean | false | Is this a linux stamp capacity |
|name | String | false | Name of the stamp. |
|siteMode | String | false | Shared or Dedicated. |
|totalCapacity | Integer | false | Total capacity (# of machines, bytes of storage etc...). |
|unit | String | false | Name of the unit. |
|workerSize | String | false | Size of the machines. |
|workerSizeId | Integer | false | Size ID of machines: 
0 - Small
1 - Medium
2 - Large |
        
## NetworkAccessControlEntry

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

```puppet
$azure_virtual_network_profile = {
  id => "id (optional)",
  name => "name (optional)",
  subnet => "subnet (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource id of the Virtual Network. |
|name | String | false | Name of the Virtual Network (read-only). |
|subnet | String | false | Subnet within the Virtual Network. |
|type | String | false | Resource type of the Virtual Network (read-only). |
        
## WorkerPool

```puppet
$azure_worker_pool = {
  computeMode => "computeMode (optional)",
  instanceNames => "instanceNames (optional)",
  workerCount => "1234 (optional)",
  workerSize => "workerSize (optional)",
  workerSizeId => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|computeMode | String | false | Shared or dedicated app hosting. |
|instanceNames | Array | false | Names of all instances in the worker pool (read only). |
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