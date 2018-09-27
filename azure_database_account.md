Document: "cosmos-db"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/cosmos-db/resource-manager/Microsoft.DocumentDB/stable/2015-04-08/cosmos-db.json")

## DatabaseAccount

An Azure Cosmos DB database account.

```puppet
azure_database_account {
  account_name => "account_name",
  api_version => "api_version",
  create_update_parameters => "createUpdateParameters",
  kind => "kind (optional)",
  location => "location (optional)",
  properties => $azure_database_account_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|account_name | String | true | Cosmos DB database account name. |
|api_version | String | true | Version of the API to be used with the client request. The current version is 2015-04-08. |
|create_update_parameters | Hash | true | The parameters to provide for the current database account. |
|kind | String | false | Indicates the type of database account. This can only be set at database account creation. |
|location | String | false | The location of the resource group to which the resource belongs. |
|properties | [DatabaseAccountProperties](#databaseaccountproperties) | false |  |
|resource_group_name | String | true | Name of an Azure resource group. |
|subscription_id | String | true | Azure subscription ID. |
|tags | String | false |  |
        
## DatabaseAccountProperties

Properties for the database account.

```puppet
$azure_database_account_properties = {
  capabilities => $azure_capability
  consistencyPolicy => $azure_consistency_policy
  databaseAccountOfferType => $azure_database_account_offer_type
  enableAutomaticFailover => "enableAutomaticFailover (optional)",
  failoverPolicies => $azure_failover_policy
  ipRangeFilter => $azure_ip_range_filter
  isVirtualNetworkFilterEnabled => "isVirtualNetworkFilterEnabled (optional)",
  provisioningState => $azure_provisioning_state
  readLocations => $azure_location
  virtualNetworkRules => $azure_virtual_network_rule
  writeLocations => $azure_location
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|capabilities | [Capability](#capability) | false | List of Cosmos DB capabilities for the account |
|consistencyPolicy | [ConsistencyPolicy](#consistencypolicy) | false | The consistency policy for the Cosmos DB database account. |
|databaseAccountOfferType | [DatabaseAccountOfferType](#databaseaccountoffertype) | false | The offer type for the Cosmos DB database account. Default value: Standard. |
|enableAutomaticFailover | Boolean | false | Enables automatic failover of the write region in the rare event that the region is unavailable due to an outage. Automatic failover will result in a new write region for the account and is chosen based on the failover priorities configured for the account. |
|failoverPolicies | [FailoverPolicy](#failoverpolicy) | false | An array that contains the regions ordered by their failover priorities. |
|ipRangeFilter | [IPRangeFilter](#iprangefilter) | false | Cosmos DB Firewall Support: This value specifies the set of IP addresses or IP address ranges in CIDR form to be included as the allowed list of client IPs for a given database account. IP addresses/ranges must be comma separated and must not contain any spaces. |
|isVirtualNetworkFilterEnabled | Boolean | false | Flag to indicate whether to enable/disable Virtual Network ACL rules. |
|provisioningState | [ProvisioningState](#provisioningstate) | false |  |
|readLocations | [Location](#location) | false | An array that contains of the read locations enabled for the Cosmos DB account. |
|virtualNetworkRules | [VirtualNetworkRule](#virtualnetworkrule) | false | List of Virtual Network ACL rules configured for the Cosmos DB account. |
|writeLocations | [Location](#location) | false | An array that contains the write location for the Cosmos DB account. |
        
## Capability

Cosmos DB capability object

```puppet
$azure_capability = {
  name => "name (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | false | Name of the Cosmos DB capability. For example, 'name': 'EnableCassandra'. Current values also include 'EnableTable' and 'EnableGremlin'. |
        
## ConsistencyPolicy

The consistency policy for the Cosmos DB database account.

```puppet
$azure_consistency_policy = {
  defaultConsistencyLevel => "defaultConsistencyLevel",
  maxIntervalInSeconds => "1234 (optional)",
  maxStalenessPrefix => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|defaultConsistencyLevel | String | true | The default consistency level and configuration settings of the Cosmos DB account. |
|maxIntervalInSeconds | Integer | false | When used with the Bounded Staleness consistency level, this value represents the time amount of staleness (in seconds) tolerated. Accepted range for this value is 5 - 86400. Required when defaultConsistencyPolicy is set to 'BoundedStaleness'. |
|maxStalenessPrefix | Integer | false | When used with the Bounded Staleness consistency level, this value represents the number of stale requests tolerated. Accepted range for this value is 1 – 2,147,483,647. Required when defaultConsistencyPolicy is set to 'BoundedStaleness'. |
        
## DatabaseAccountOfferType

The offer type for the Cosmos DB database account.

```puppet
$azure_database_account_offer_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## FailoverPolicy

The failover policy for a given region of a database account.

```puppet
$azure_failover_policy = {
  failoverPriority => "1234 (optional)",
  locationName => "locationName (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|failoverPriority | Integer | false | The failover priority of the region. A failover priority of 0 indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists. |
|locationName | String | false | The name of the region in which the database account exists. |
        
## IPRangeFilter

Cosmos DB Firewall Support: This value specifies the set of IP addresses or IP address ranges in CIDR form to be included as the allowed list of client IPs for a given database account. IP addresses/ranges must be comma separated and must not contain any spaces.

```puppet
$azure_ip_range_filter = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ProvisioningState

The status of the Cosmos DB account at the time the operation was called. The status can be one of following. 'Creating' – the Cosmos DB account is being created. When an account is in Creating state, only properties that are specified as input for the Create Cosmos DB account operation are returned. 'Succeeded' – the Cosmos DB account is active for use. 'Updating' – the Cosmos DB account is being updated. 'Deleting' – the Cosmos DB account is being deleted. 'Failed' – the Cosmos DB account failed creation.

```puppet
$azure_provisioning_state = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## Location

A region in which the Azure Cosmos DB database account is deployed.

```puppet
$azure_location = {
  failoverPriority => "1234 (optional)",
  locationName => "locationName (optional)",
  provisioningState => $azure_provisioning_state
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|failoverPriority | Integer | false | The failover priority of the region. A failover priority of 0 indicates a write region. The maximum value for a failover priority = (total number of regions - 1). Failover priority values must be unique for each of the regions in which the database account exists. |
|locationName | String | false | The name of the region. |
|provisioningState | [ProvisioningState](#provisioningstate) | false |  |
        
        
## VirtualNetworkRule

Virtual Network ACL Rule object

```puppet
$azure_virtual_network_rule = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Resource ID of a subnet, for example: /subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.Network/virtualNetworks/{virtualNetworkName}/subnets/{subnetName}. |
        



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the DatabaseAccount

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}`|Put|Creates or updates an Azure Cosmos DB database account.|DatabaseAccounts_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.DocumentDB/databaseAccounts`|Get|Lists all the Azure Cosmos DB database accounts available under the subscription.|DatabaseAccounts_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}`|Get|Retrieves the properties of an existing Azure Cosmos DB database account.|DatabaseAccounts_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts`|Get|Lists all the Azure Cosmos DB database accounts available under the given resource group.|DatabaseAccounts_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}`|Put|Creates or updates an Azure Cosmos DB database account.|DatabaseAccounts_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.DocumentDB/databaseAccounts/%{account_name}`|Delete|Deletes an existing Azure Cosmos DB database account.|DatabaseAccounts_Delete|
