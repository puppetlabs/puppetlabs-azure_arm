Document: "redis"
Path: "/root/specs/specification/redis/resource-manager/Microsoft.Cache/stable/2018-03-01/redis.json")

## RedisLinkedServerWithProperties

```puppet
azure_redis_linked_server_with_properties {
  api_version => "api_version",
  id => "id (optional)",
  linked_server_name => "linked_server_name",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_redis_linked_server_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|id | String | false | Resource ID. |
|linked_server_name | String | true | The name of the linked server that is being added to the Redis cache. |
|name | String | false | Resource name. |
|parameters | Hash | true | Parameters supplied to the Create Linked server operation. |
|properties | [RedisLinkedServerProperties](#redislinkedserverproperties) | false | Properties of the linked server. |
|resource_group_name | String | true | The name of the resource group. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | Resource type. |
        
## RedisLinkedServerProperties

```puppet
$azure_redis_linked_server_properties = {
  linkedRedisCacheId => "linkedRedisCacheId (optional)",
  linkedRedisCacheLocation => "linkedRedisCacheLocation (optional)",
  provisioningState => "provisioningState (optional)",
  serverRole => "serverRole (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|linkedRedisCacheId | String | false | Fully qualified resourceId of the linked redis cache. |
|linkedRedisCacheLocation | String | false | Location of the linked redis cache. |
|provisioningState | String | false | Terminal state of the link between primary and secondary redis cache. |
|serverRole | String | false | Role of the linked server. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the RedisLinkedServerWithProperties

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cache/Redis/%{name}/linkedServers/%{linked_server_name}`|Put|Adds a linked server to the Redis cache (requires Premium SKU).|LinkedServer_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cache/Redis/%{name}/linkedServers/%{linked_server_name}`|Get|Gets the detailed information about a linked server of a redis cache (requires Premium SKU).|LinkedServer_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cache/Redis/%{name}/linkedServers`|Get|Gets the list of linked servers associated with this redis cache (requires Premium SKU).|LinkedServer_List|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cache/Redis/%{name}/linkedServers/%{linked_server_name}`|Put|Adds a linked server to the Redis cache (requires Premium SKU).|LinkedServer_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cache/Redis/%{name}/linkedServers/%{linked_server_name}`|Delete|Deletes the linked server from a redis cache (requires Premium SKU).|LinkedServer_Delete|