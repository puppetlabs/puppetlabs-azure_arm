Document: "trafficmanager"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/trafficmanager/resource-manager/Microsoft.Network/stable/2018-03-01/trafficmanager.json")

## Profile

Class representing a Traffic Manager profile.

```puppet
azure_network_profile {
  api_version => "api_version",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_profile_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Client Api Version. |
|id | String | false | Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficManagerProfiles/{resourceName} |
|location | String | false | The Azure Region where the resource lives |
|name | String | false | The name of the resource |
|parameters | Hash | true | The Traffic Manager profile parameters supplied to the CreateOrUpdate operation. |
|properties | [ProfileProperties](#profileproperties) | false | The properties of the Traffic Manager profile. |
|resource_group_name | String | true | The name of the resource group containing the Traffic Manager profile. |
|subscription_id | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|tags | Hash | false | Resource tags. |
|type | String | false | The type of the resource. Ex- Microsoft.Network/trafficmanagerProfiles. |
        
## ProfileProperties

Class representing the Traffic Manager profile properties.

```puppet
$azure_profile_properties = {
  dnsConfig => $azure_dns_config
  endpoints => $azure_endpoint
  monitorConfig => $azure_monitor_config
  profileStatus => "profileStatus (optional)",
  trafficRoutingMethod => "trafficRoutingMethod (optional)",
  trafficViewEnrollmentStatus => "trafficViewEnrollmentStatus (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|dnsConfig | [DnsConfig](#dnsconfig) | false | The DNS settings of the Traffic Manager profile. |
|endpoints | [Endpoint](#endpoint) | false | The list of endpoints in the Traffic Manager profile. |
|monitorConfig | [MonitorConfig](#monitorconfig) | false | The endpoint monitoring settings of the Traffic Manager profile. |
|profileStatus | String | false | The status of the Traffic Manager profile. |
|trafficRoutingMethod | String | false | The traffic routing method of the Traffic Manager profile. |
|trafficViewEnrollmentStatus | String | false | Indicates whether Traffic View is 'Enabled' or 'Disabled' for the Traffic Manager profile. Null, indicates 'Disabled'. Enabling this feature will increase the cost of the Traffic Manage profile. |
        
## DnsConfig

Class containing DNS settings in a Traffic Manager profile.

```puppet
$azure_dns_config = {
  relativeName => "relativeName (optional)",
  ttl => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|relativeName | String | false | The relative DNS name provided by this Traffic Manager profile. This value is combined with the DNS domain name used by Azure Traffic Manager to form the fully-qualified domain name (FQDN) of the profile. |
|ttl | Integer | false | The DNS Time-To-Live (TTL), in seconds. This informs the local DNS resolvers and DNS clients how long to cache DNS responses provided by this Traffic Manager profile. |
        
## Endpoint

Class representing a Traffic Manager endpoint.

```puppet
$azure_endpoint = {
  api-version => "api-version",
  id => "id (optional)",
  name => "name (optional)",
  parameters => "parameters",
  profileName => "profileName",
  properties => $azure_endpoint_properties
  resourceGroupName => "resourceGroupName",
  subscriptionId => "subscriptionId",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api-version | String | true | Client Api Version. |
|id | String | false | Fully qualified resource Id for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/trafficManagerProfiles/{resourceName} |
|name | String | false | The name of the resource |
|parameters | Hash | true | The Traffic Manager endpoint parameters supplied to the CreateOrUpdate operation. |
|profileName | String | true | The name of the Traffic Manager profile. |
|properties | [EndpointProperties](#endpointproperties) | false | The properties of the Traffic Manager endpoint. |
|resourceGroupName | String | true | The name of the resource group containing the Traffic Manager endpoint to be created or updated. |
|subscriptionId | String | true | Gets subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | The type of the resource. Ex- Microsoft.Network/trafficmanagerProfiles. |
        
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
  target => "target (optional)",
  targetResourceId => "targetResourceId (optional)",
  weight => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|customHeaders | Array | false | List of custom headers. |
|endpointLocation | String | false | Specifies the location of the external or nested endpoints when using the ‘Performance’ traffic routing method. |
|endpointMonitorStatus | String | false | The monitoring status of the endpoint. |
|endpointStatus | String | false | The status of the endpoint. If the endpoint is Enabled, it is probed for endpoint health and is included in the traffic routing method. |
|geoMapping | Array | false | The list of countries/regions mapped to this endpoint when using the ‘Geographic’ traffic routing method. Please consult Traffic Manager Geographic documentation for a full list of accepted values. |
|minChildEndpoints | Integer | false | The minimum number of endpoints that must be available in the child profile in order for the parent profile to be considered available. Only applicable to endpoint of type 'NestedEndpoints'. |
|priority | Integer | false | The priority of this endpoint when using the ‘Priority’ traffic routing method. Possible values are from 1 to 1000, lower values represent higher priority. This is an optional parameter.  If specified, it must be specified on all endpoints, and no two endpoints can share the same priority value. |
|target | String | false | The fully-qualified DNS name or IP address of the endpoint. Traffic Manager returns this value in DNS responses to direct traffic to this endpoint. |
|targetResourceId | String | false | The Azure Resource URI of the of the endpoint. Not applicable to endpoints of type 'ExternalEndpoints'. |
|weight | Integer | false | The weight of this endpoint when using the 'Weighted' traffic routing method. Possible values are from 1 to 1000. |
        
## MonitorConfig

Class containing endpoint monitoring settings in a Traffic Manager profile.

```puppet
$azure_monitor_config = {
  customHeaders => "customHeaders (optional)",
  expectedStatusCodeRanges => "expectedStatusCodeRanges (optional)",
  intervalInSeconds => "1234 (optional)",
  path => "path (optional)",
  port => "1234 (optional)",
  profileMonitorStatus => "profileMonitorStatus (optional)",
  protocol => "protocol (optional)",
  timeoutInSeconds => "1234 (optional)",
  toleratedNumberOfFailures => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|customHeaders | Array | false | List of custom headers. |
|expectedStatusCodeRanges | Array | false | List of expected status code ranges. |
|intervalInSeconds | Integer | false | The monitor interval for endpoints in this profile. This is the interval at which Traffic Manager will check the health of each endpoint in this profile. |
|path | String | false | The path relative to the endpoint domain name used to probe for endpoint health. |
|port | Integer | false | The TCP port used to probe for endpoint health. |
|profileMonitorStatus | String | false | The profile-level monitoring status of the Traffic Manager profile. |
|protocol | String | false | The protocol (HTTP, HTTPS or TCP) used to probe for endpoint health. |
|timeoutInSeconds | Integer | false | The monitor timeout for endpoints in this profile. This is the time that Traffic Manager allows endpoints in this profile to response to the health check. |
|toleratedNumberOfFailures | Integer | false | The number of consecutive failed health check that Traffic Manager tolerates before declaring an endpoint in this profile Degraded after the next failed health check. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Profile

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/trafficmanagerprofiles/%{profile_name}`|Put|Create or update a Traffic Manager profile.|Profiles_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Network/trafficmanagerprofiles`|Get|Lists all Traffic Manager profiles within a subscription.|Profiles_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/trafficmanagerprofiles/%{profile_name}`|Get|Gets a Traffic Manager profile.|Profiles_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/trafficmanagerprofiles`|Get|Lists all Traffic Manager profiles within a resource group.|Profiles_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/trafficmanagerprofiles/%{profile_name}`|Put|Create or update a Traffic Manager profile.|Profiles_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Network/trafficmanagerprofiles/%{profile_name}`|Delete|Deletes a Traffic Manager profile.|Profiles_Delete|
