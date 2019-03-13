Document: "cdn"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/c9269dbd9a589cd49775b3f65b87c556c2f52cce/specification/cdn/resource-manager/Microsoft.Cdn/stable/2017-10-12/cdn.json")

## Endpoint

CDN endpoint is the entity within a CDN profile containing configuration information such as origin, protocol, content caching and delivery behavior. The CDN endpoint uses the URL format <endpointname>.azureedge.net.

```puppet
azure_endpoint {
  api_version => "api_version",
  endpoint => "endpoint",
  location => "location (optional)",
  profile_name => "profile_name",
  properties => $azure_endpoint_properties
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. Current version is 2017-04-02. |
|endpoint | Hash | true | Endpoint properties |
|location | String | false | Resource location. |
|profile_name | String | true | Name of the CDN profile which is unique within the resource group. |
|properties | [EndpointProperties](#endpointproperties) | false |  |
|resource_group_name | String | true | Name of the Resource group within the Azure subscription. |
|subscription_id | String | true | Azure Subscription ID. |
|tags | Hash | false | Resource tags. |
        
## EndpointProperties

The JSON object that contains the properties required to create an endpoint.

```puppet
$azure_endpoint_properties = {
  contentTypesToCompress => "contentTypesToCompress (optional)",
  deliveryPolicy => "deliveryPolicy (optional)",
  geoFilters => "geoFilters (optional)",
  isCompressionEnabled => "isCompressionEnabled (optional)",
  isHttpAllowed => "isHttpAllowed (optional)",
  isHttpsAllowed => "isHttpsAllowed (optional)",
  optimizationType => "optimizationType (optional)",
  originHostHeader => "originHostHeader (optional)",
  originPath => "originPath (optional)",
  origins => $azure_deep_created_origin
  probePath => "probePath (optional)",
  queryStringCachingBehavior => "queryStringCachingBehavior (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|contentTypesToCompress | Array | false | List of content types on which compression applies. The value should be a valid MIME type. |
|deliveryPolicy | Hash | false | A policy that specifies the delivery rules to be used for an endpoint. |
|geoFilters | Array | false | List of rules defining the user's geo access within a CDN endpoint. Each geo filter defines an access rule to a specified path or content, e.g. block APAC for path /pictures/ |
|isCompressionEnabled | Boolean | false | Indicates whether content compression is enabled on CDN. Default value is false. If compression is enabled, content will be served as compressed if user requests for a compressed version. Content won't be compressed on CDN when requested content is smaller than 1 byte or larger than 1 MB. |
|isHttpAllowed | Boolean | false | Indicates whether HTTP traffic is allowed on the endpoint. Default value is true. At least one protocol (HTTP or HTTPS) must be allowed. |
|isHttpsAllowed | Boolean | false | Indicates whether HTTPS traffic is allowed on the endpoint. Default value is true. At least one protocol (HTTP or HTTPS) must be allowed. |
|optimizationType | String | false | Specifies what scenario the customer wants this CDN endpoint to optimize for, e.g. Download, Media services. With this information, CDN can apply scenario driven optimization. |
|originHostHeader | String | false | The host header value sent to the origin with each request. If you leave this blank, the request hostname determines this value. Azure CDN origins, such as Web Apps, Blob Storage, and Cloud Services require this host header value to match the origin hostname by default. |
|originPath | String | false | A directory path on the origin that CDN can use to retrieve content from, e.g. contoso.cloudapp.net/originpath. |
|origins | [DeepCreatedOrigin](#deepcreatedorigin) | true | The source of the content being delivered via CDN. |
|probePath | String | false | Path to a file hosted on the origin which helps accelerate delivery of the dynamic content and calculate the most optimal routes for the CDN. This is relative to the origin path. |
|queryStringCachingBehavior | String | false | Defines how CDN caches requests that include query strings. You can ignore any query strings when caching, bypass caching to prevent requests that contain query strings from being cached, or cache every request with a unique URL. |
        
## DeepCreatedOrigin

The main origin of CDN content which is added when creating a CDN endpoint.

```puppet
$azure_deep_created_origin = {
  name => "name",
  properties => $azure_deep_created_origin_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|name | String | true | Origin name |
|properties | [DeepCreatedOriginProperties](#deepcreatedoriginproperties) | false |  |
        
## DeepCreatedOriginProperties

Properties of the origin created on the CDN endpoint.

```puppet
$azure_deep_created_origin_properties = {
  hostName => "hostName",
  httpPort => "1234 (optional)",
  httpsPort => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|hostName | String | true | The address of the origin. It can be a domain name, IPv4 address, or IPv6 address. |
|httpPort | Integer | false | The value of the HTTP port. Must be between 1 and 65535 |
|httpsPort | Integer | false | The value of the HTTPS port. Must be between 1 and 65535 |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the Endpoint

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cdn/profiles/%{profile_name}/endpoints/%{endpoint_name}`|Put|Creates a new CDN endpoint with the specified endpoint name under the specified subscription, resource group and profile.|Endpoints_Create|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cdn/profiles/%{profile_name}/endpoints/%{endpoint_name}`|Get|Gets an existing CDN endpoint with the specified endpoint name under the specified subscription, resource group and profile.|Endpoints_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cdn/profiles/%{profile_name}/endpoints`|Get|Lists existing CDN endpoints.|Endpoints_ListByProfile|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cdn/profiles/%{profile_name}/endpoints/%{endpoint_name}`|Put|Creates a new CDN endpoint with the specified endpoint name under the specified subscription, resource group and profile.|Endpoints_Create|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Cdn/profiles/%{profile_name}/endpoints/%{endpoint_name}`|Delete|Deletes an existing CDN endpoint with the specified endpoint name under the specified subscription, resource group and profile.|Endpoints_Delete|
