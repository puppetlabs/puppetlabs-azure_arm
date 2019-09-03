Document: "trafficmanager"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/2fbb5118cd34f412a51d9bc8a274224b216763cf/specification/trafficmanager/resource-manager/Microsoft.Network/stable/2018-04-01/trafficmanager.json")

## Endpoint

Class representing a Traffic Manager endpoint.

```puppet
azure_network_endpoint {
  api_version => "api_version",
  id => "id (optional)",
  name => "name (optional)",
  parameters => "parameters",
  profile_name => "profile_name",
  properties => $azure_endpoint_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|id | String | false | Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficManagerProfiles/{resourceName} |
|name | String | false | The name of the resource |
|parameters | Hash | true | The Traffic Manager endpoint parameters supplied to the CreateOrUpdate operation. |
|profile_name | String | true | The name of the Traffic Manager profile. |
|properties | [EndpointProperties](#endpointproperties) | false | The properties of the Traffic Manager endpoint. |
|resource_group_name | String | true | The name of the resource group containing the Traffic Manager endpoint to be created or updated. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | The type of the resource. Ex- Microsoft.Network/trafficManagerProfiles. |
        
## EndpointProperties

Class representing a Traffic Manager endpoint properties.

```puppet
$azure_endpoint_properties = {
  customHeaders => "customHeaders (optional)",
  endpointLocation => "endpointLocation (optional)",
  endpointMonitorStatus => "endpointMonitorStatus (optional)",
  endpointStatus => "endpointStatus (optional)",
  geoMapping => "geoMapping (optional)",
  minChildEndpoints => "1234 (optional)",
  priority => "1234 (optional)",
  subnets => "subnets (optional)",
  target => "target (optional)",
  targetResourceId => "targetResourceId (optional)",
  weight => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|customHeaders | Array | false | List of custom headers. |
|endpointLocation | String | false | Specifies the location of the external or nested endpoints when using the 'Performance' traffic routing method. |
|endpointMonitorStatus | String | false | The monitoring status of the endpoint. |
|endpointStatus | String | false | The status of the endpoint. If the endpoint is Enabled, it is probed for endpoint health and is included in the traffic routing method. |
|geoMapping | Array | false | The list of countries/regions mapped to this endpoint when using the 'Geographic' traffic routing method. Please consult Traffic Manager Geographic documentation for a full list of accepted values. |
|minChildEndpoints | Integer | false | The minimum number of endpoints that must be available in the child profile in order for the parent profile to be considered available. Only applicable to endpoint of type 'NestedEndpoints'. |
|priority | Integer | false | The priority of this endpoint when using the 'Priority' traffic routing method. Possible values are from 1 to 1000, lower values represent higher priority. This is an optional parameter.  If specified, it must be specified on all endpoints, and no two endpoints can share the same priority value. |
|subnets | Array | false | The list of subnets, IP addresses, and/or address ranges mapped to this endpoint when using the 'Subnet' traffic routing method. An empty list will match all ranges not covered by other endpoints. |
|target | String | false | The fully-qualified DNS name or IP address of the endpoint. Traffic Manager returns this value in DNS responses to direct traffic to this endpoint. |
|targetResourceId | String | false | The Azure Resource URI of the of the endpoint. Not applicable to endpoints of type 'ExternalEndpoints'. |
|weight | Integer | false | The weight of this endpoint when using the 'Weighted' traffic routing method. Possible values are from 1 to 1000. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Endpoint

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/trafficmanagerprofiles/%{profile_name}/%{endpoint_type}/%{endpoint_name}`|Put|Create or update a Traffic Manager endpoint.|Endpoints_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/trafficmanagerprofiles/%{profile_name}/%{endpoint_type}/%{endpoint_name}`|Get|Gets a Traffic Manager endpoint.|Endpoints_Get|
|List - get list using params|``||||
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/trafficmanagerprofiles/%{profile_name}/%{endpoint_type}/%{endpoint_name}`|Put|Create or update a Traffic Manager endpoint.|Endpoints_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/trafficmanagerprofiles/%{profile_name}/%{endpoint_type}/%{endpoint_name}`|Delete|Deletes a Traffic Manager endpoint.|Endpoints_Delete|
