Document: "redis"
Path: "/root/specs/specification/redis/resource-manager/Microsoft.Cache/stable/2018-03-01/redis.json")

## RedisFirewallRule

```puppet
azure_redis_firewall_rule {
  api_version => "api_version",
  cache_name => "cache_name",
  id => "id (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_redis_firewall_rule_properties
  resource_group_name => "resource_group_name",
  rule_name => "rule_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|cache_name | String | true | The name of the Redis cache. |
|id | String | false | Resource ID. |
|name | String | false | Resource name. |
|parameters | Hash | true | Parameters supplied to the create or update redis firewall rule operation. |
|properties | [RedisFirewallRuleProperties](#redisfirewallruleproperties) | true | redis cache firewall rule properties |
|resource_group_name | String | true | The name of the resource group. |
|rule_name | String | true | The name of the firewall rule. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | Resource type. |
        
## RedisFirewallRuleProperties

```puppet
$azure_redis_firewall_rule_properties = {
  endIP => "endIP",
  startIP => "startIP",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endIP | String | true | highest IP address included in the range |
|startIP | String | true | lowest IP address included in the range |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the RedisFirewallRule

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cache/Redis/%{cache_name}/firewallRules/%{rule_name}`|Put|Create or update a redis cache firewall rule|FirewallRules_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cache/Redis/%{cache_name}/firewallRules/%{rule_name}`|Get|Gets a single firewall rule in a specified redis cache.|FirewallRules_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cache/Redis/%{cache_name}/firewallRules`|Get|Gets all firewall rules in the specified redis cache.|FirewallRules_ListByRedisResource|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cache/Redis/%{cache_name}/firewallRules/%{rule_name}`|Put|Create or update a redis cache firewall rule|FirewallRules_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cache/Redis/%{cache_name}/firewallRules/%{rule_name}`|Delete|Deletes a single firewall rule in a specified redis cache.|FirewallRules_Delete|