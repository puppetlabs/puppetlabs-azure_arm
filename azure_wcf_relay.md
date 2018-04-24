Document: "relay"
Path: "/root/specs/specification/relay/resource-manager/Microsoft.Relay/stable/2017-04-01/relay.json")

## WcfRelay

```puppet
azure_wcf_relay {
  api_version => "api_version",
  id => "id (optional)",
  name => "name (optional)",
  namespace_name => "namespace_name",
  parameters => "parameters",
  properties => "properties (optional)",
  relay_name => "relay_name",
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client API version. |
|id | String | false | Resource ID. |
|name | String | false | Resource name. |
|namespace_name | String | true | The namespace name |
|parameters | Hash | true | Parameters supplied to create a WCF relay. |
|properties | String | false | Properties of the WCF relay. |
|relay_name | String | true | The relay name. |
|resource_group_name | String | true | Name of the Resource group within the Azure subscription. |
|subscription_id | String | true | Subscription credentials which uniquely identify the Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | Resource type. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the WcfRelay

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Relay/namespaces/%{namespace_name}/wcfRelays/%{relay_name}`|Put|Creates or updates a WCF relay. This operation is idempotent.|WCFRelays_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Relay/namespaces/%{namespace_name}/wcfRelays/%{relay_name}`|Get|Returns the description for the specified WCF relay.|WCFRelays_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Relay/namespaces/%{namespace_name}/wcfRelays`|Get|Lists the WCF relays within the namespace.|WCFRelays_ListByNamespace|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Relay/namespaces/%{namespace_name}/wcfRelays/%{relay_name}`|Put|Creates or updates a WCF relay. This operation is idempotent.|WCFRelays_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Relay/namespaces/%{namespace_name}/wcfRelays/%{relay_name}`|Delete|Deletes a WCF relay.|WCFRelays_Delete|