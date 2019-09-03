Document: "trafficmanager"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/trafficmanager/resource-manager/Microsoft.Network/stable/2018-04-01/trafficmanager.json")

## UserMetricsModel

Class representing Traffic Manager User Metrics.

```puppet
azure_user_metrics_model {
  api_version => "api_version",
  id => "id (optional)",
  name => "name (optional)",
  properties => $azure_user_metrics_properties
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|id | String | false | Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficManagerProfiles/{resourceName} |
|name | String | false | The name of the resource |
|properties | [UserMetricsProperties](#usermetricsproperties) | false | The properties of the Traffic Manager User Metrics. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | The type of the resource. Ex- Microsoft.Network/trafficManagerProfiles. |
        
## UserMetricsProperties

Class representing a Traffic Manager Real User Metrics key response.

```puppet
$azure_user_metrics_properties = {
  key => "key (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|key | String | false | The key returned by the User Metrics operation. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the UserMetricsModel

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/trafficManagerUserMetricsKeys/default`|Put|Create or update a subscription-level key used for Real User Metrics collection.|TrafficManagerUserMetricsKeys_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/trafficManagerUserMetricsKeys/default`|Get|Get the subscription-level key used for Real User Metrics collection.|TrafficManagerUserMetricsKeys_Get|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/trafficManagerUserMetricsKeys/default`|Put|Create or update a subscription-level key used for Real User Metrics collection.|TrafficManagerUserMetricsKeys_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/trafficManagerUserMetricsKeys/default`|Delete|Delete a subscription-level key used for Real User Metrics collection.|TrafficManagerUserMetricsKeys_Delete|
