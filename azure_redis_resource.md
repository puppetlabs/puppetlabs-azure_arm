Document: "redis"
Path: "/root/specs/specification/redis/resource-manager/Microsoft.Cache/stable/2018-03-01/redis.json")

## RedisResource

```puppet
azure_redis_resource {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_redis_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
  zones => "zones (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|id | String | false | Resource ID. |
|location | String | false | The geo-location where the resource lives |
|name | String | false | Resource name. |
|parameters | Hash | true | Parameters supplied to the Create Redis operation. |
|properties | [RedisProperties](#redisproperties) | true | Redis cache properties. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
|type | String | false | Resource type. |
|zones | Array | false | A list of availability zones denoting where the resource needs to come from. |
        
## RedisProperties

```puppet
$azure_redis_properties = {
  accessKeys => $azure_redis_access_keys
  enableNonSslPort => "enableNonSslPort (optional)",
  hostName => "hostName (optional)",
  linkedServers => $azure_redis_linked_server
  minimumTlsVersion => "minimumTlsVersion (optional)",
  port => "1234 (optional)",
  provisioningState => "provisioningState (optional)",
  redisConfiguration => "redisConfiguration (optional)",
  redisVersion => "redisVersion (optional)",
  shardCount => "1234 (optional)",
  sku => "sku (optional)",
  sslPort => "1234 (optional)",
  staticIP => "staticIP (optional)",
  subnetId => "subnetId (optional)",
  tenantSettings => "tenantSettings (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accessKeys | [RedisAccessKeys](#redisaccesskeys) | false | The keys of the Redis cache - not set if this object is not the response to Create or Update redis cache |
|enableNonSslPort | Boolean | false | Specifies whether the non-ssl Redis server port (6379) is enabled. |
|hostName | String | false | Redis host name. |
|linkedServers | [RedisLinkedServer](#redislinkedserver) | false | List of the linked servers associated with the cache |
|minimumTlsVersion | String | false | Optional: requires clients to use a specified TLS version (or higher) to connect (e,g, '1.0', '1.1', '1.2') |
|port | Integer | false | Redis non-SSL port. |
|provisioningState | String | false | Redis instance provisioning status. |
|redisConfiguration | Hash | false | All Redis Settings. Few possible keys: rdb-backup-enabled,rdb-storage-connection-string,rdb-backup-frequency,maxmemory-delta,maxmemory-policy,notify-keyspace-events,maxmemory-samples,slowlog-log-slower-than,slowlog-max-len,list-max-ziplist-entries,list-max-ziplist-value,hash-max-ziplist-entries,hash-max-ziplist-value,set-max-intset-entries,zset-max-ziplist-entries,zset-max-ziplist-value etc. |
|redisVersion | String | false | Redis version. |
|shardCount | Integer | false | The number of shards to be created on a Premium Cluster Cache. |
|sku | String | false | The SKU of the Redis cache to deploy. |
|sslPort | Integer | false | Redis SSL port. |
|staticIP | String | false | Static IP address. Required when deploying a Redis cache inside an existing Azure Virtual Network. |
|subnetId | String | false | The full resource ID of a subnet in a virtual network to deploy the Redis cache in. Example format: /subscriptions/{subid}/resourceGroups/{resourceGroupName}/Microsoft.{Network|ClassicNetwork}/VirtualNetworks/vnet1/subnets/subnet1 |
|tenantSettings | Hash | false | A dictionary of tenant settings |
        
## RedisAccessKeys

```puppet
$azure_redis_access_keys = {
  primaryKey => "primaryKey (optional)",
  secondaryKey => "secondaryKey (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|primaryKey | String | false | The current primary key that clients can use to authenticate with Redis cache. |
|secondaryKey | String | false | The current secondary key that clients can use to authenticate with Redis cache. |
        
## RedisLinkedServer

```puppet
$azure_redis_linked_server = {
  id => "id (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|id | String | false | Linked server Id. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the RedisResource

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cache/Redis/%{name}`|Put|Create or replace (overwrite/recreate, with potential downtime) an existing Redis cache.|Redis_Create|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Cache/Redis`|Get|Gets all Redis caches in the specified subscription.|Redis_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cache/Redis/%{name}`|Get|Gets a Redis cache (resource description).|Redis_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cache/Redis`|Get|Lists all Redis caches in a resource group.|Redis_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cache/Redis/%{name}`|Put|Create or replace (overwrite/recreate, with potential downtime) an existing Redis cache.|Redis_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cache/Redis/%{name}`|Delete|Deletes a Redis cache.|Redis_Delete|