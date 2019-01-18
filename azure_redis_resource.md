Document: "redis"


Path: "/tmp/azure-rest-api-specs/specification/redis/resource-manager/Microsoft.Cache/stable/2018-03-01/redis.json")

## RedisResource

A single Redis item in List or Get Operation.

```puppet
azure_redis_resource {
  api_version => "api_version",
  location => "location (optional)",
  parameters => "parameters",
  properties => $azure_redis_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  zones => "zones (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|location | String | false | The geo-location where the resource lives |
|parameters | Hash | true | Parameters supplied to the Create Redis operation. |
|properties | [RedisProperties](#redisproperties) | true | Redis cache properties. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
|zones | Array | false | A list of availability zones denoting where the resource needs to come from. |
        
## RedisProperties

Properties of the redis cache.

```puppet
$azure_redis_properties = {
  accessKeys => $azure_redis_access_keys
  enableNonSslPort => "enableNonSslPort (optional)",
  linkedServers => $azure_redis_linked_server
  minimumTlsVersion => "minimumTlsVersion (optional)",
  redisConfiguration => "redisConfiguration (optional)",
  shardCount => "1234 (optional)",
  sku => "sku (optional)",
  staticIP => "staticIP (optional)",
  subnetId => "subnetId (optional)",
  tenantSettings => "tenantSettings (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|accessKeys | [RedisAccessKeys](#redisaccesskeys) | false | The keys of the Redis cache - not set if this object is not the response to Create or Update redis cache |
|enableNonSslPort | Boolean | false | Specifies whether the non-ssl Redis server port (6379) is enabled. |
|linkedServers | [RedisLinkedServer](#redislinkedserver) | false | List of the linked servers associated with the cache |
|minimumTlsVersion | String | false | Optional: requires clients to use a specified TLS version (or higher) to connect (e,g, '1.0', '1.1', '1.2') |
|redisConfiguration | Hash | false | All Redis Settings. Few possible keys: rdb-backup-enabled,rdb-storage-connection-string,rdb-backup-frequency,maxmemory-delta,maxmemory-policy,notify-keyspace-events,maxmemory-samples,slowlog-log-slower-than,slowlog-max-len,list-max-ziplist-entries,list-max-ziplist-value,hash-max-ziplist-entries,hash-max-ziplist-value,set-max-intset-entries,zset-max-ziplist-entries,zset-max-ziplist-value etc. |
|shardCount | Integer | false | The number of shards to be created on a Premium Cluster Cache. |
|sku | String | false | The SKU of the Redis cache to deploy. |
|staticIP | String | false | Static IP address. Required when deploying a Redis cache inside an existing Azure Virtual Network. |
|subnetId | String | false | The full resource ID of a subnet in a virtual network to deploy the Redis cache in. Example format: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/Microsoft.{Network|ClassicNetwork}/VirtualNetworks/vnet1/subnets/subnet1 |
|tenantSettings | Hash | false | A dictionary of tenant settings |
        
## RedisAccessKeys

Redis cache access keys.

```puppet
$azure_redis_access_keys = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## RedisLinkedServer

Linked server Id

```puppet
$azure_redis_linked_server = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



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
