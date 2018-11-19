Document: "iothub"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/iothub/resource-manager/Microsoft.Devices/stable/2018-04-01/iothub.json")

## IotHubDescription

The description of the IoT hub.

```puppet
azure_iot_hub_description {
  api_version => "api_version",
  etag => "etag (optional)",
  iot_hub_description => "iotHubDescription",
  location => "location (optional)",
  properties => $azure_iot_hub_properties
  resource_group_name => "resource_group_name",
  resource_name => "resource_name",
  sku => $azure_iot_hub_sku_info
  subscription_id => "subscription_id",
  tags => "tags (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The version of the API. |
|etag | String | false | The Etag field is *not* required. If it is provided in the response body, it must also be provided as a header per the normal ETag convention. |
|iot_hub_description | Hash | true | The IoT hub metadata and security metadata. |
|location | String | false | The resource location. |
|properties | [IotHubProperties](#iothubproperties) | false | IotHub properties |
|resource_group_name | String | true | The name of the resource group that contains the IoT hub. |
|resource_name | String | true | The name of the IoT hub. |
|sku | [IotHubSkuInfo](#iothubskuinfo) | true | IotHub SKU info |
|subscription_id | String | true | The subscription identifier. |
|tags | Hash | false | The resource tags. |
        
## IotHubProperties

The properties of an IoT hub.

```puppet
$azure_iot_hub_properties = {
  authorizationPolicies => $azure_shared_access_signature_authorization_rule
  cloudToDevice => $azure_cloud_to_device_properties
  comments => "comments (optional)",
  enableFileUploadNotifications => "enableFileUploadNotifications (optional)",
  eventHubEndpoints => "eventHubEndpoints (optional)",
  features => "features (optional)",
  ipFilterRules => $azure_ip_filter_rule
  messagingEndpoints => "messagingEndpoints (optional)",
  operationsMonitoringProperties => $azure_operations_monitoring_properties
  routing => $azure_routing_properties
  storageEndpoints => "storageEndpoints (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|authorizationPolicies | [SharedAccessSignatureAuthorizationRule](#sharedaccesssignatureauthorizationrule) | false | The shared access policies you can use to secure a connection to the IoT hub. |
|cloudToDevice | [CloudToDeviceProperties](#cloudtodeviceproperties) | false |  |
|comments | String | false | IoT hub comments. |
|enableFileUploadNotifications | Boolean | false | If True, file upload notifications are enabled. |
|eventHubEndpoints | Hash | false | The Event Hub-compatible endpoint properties. The possible keys to this dictionary are events and operationsMonitoringEvents. Both of these keys have to be present in the dictionary while making create or update calls for the IoT hub. |
|features | String | false | The capabilities and features enabled for the IoT hub. |
|ipFilterRules | [IpFilterRule](#ipfilterrule) | false | The IP filter rules. |
|messagingEndpoints | Hash | false | The messaging endpoint properties for the file upload notification queue. |
|operationsMonitoringProperties | [OperationsMonitoringProperties](#operationsmonitoringproperties) | false |  |
|routing | [RoutingProperties](#routingproperties) | false |  |
|storageEndpoints | Hash | false | The list of Azure Storage endpoints where you can upload files. Currently you can configure only one Azure Storage account and that MUST have its key as $default. Specifying more than one storage account causes an error to be thrown. Not specifying a value for this property when the enableFileUploadNotifications property is set to True, causes an error to be thrown. |
        
## SharedAccessSignatureAuthorizationRule

The properties of an IoT hub shared access policy.

```puppet
$azure_shared_access_signature_authorization_rule = {
  keyName => "keyName",
  primaryKey => "primaryKey (optional)",
  rights => "rights",
  secondaryKey => "secondaryKey (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|keyName | String | true | The name of the shared access policy. |
|primaryKey | String | false | The primary key. |
|rights | String | true | The permissions assigned to the shared access policy. |
|secondaryKey | String | false | The secondary key. |
        
## CloudToDeviceProperties

The IoT hub cloud-to-device messaging properties.

```puppet
$azure_cloud_to_device_properties = {
  defaultTtlAsIso8601 => "defaultTtlAsIso8601 (optional)",
  feedback => $azure_feedback_properties
  maxDeliveryCount => "1234 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|defaultTtlAsIso8601 | String | false | The default time to live for cloud-to-device messages in the device queue. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#cloud-to-device-messages. |
|feedback | [FeedbackProperties](#feedbackproperties) | false |  |
|maxDeliveryCount | Integer | false | The max delivery count for cloud-to-device messages in the device queue. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#cloud-to-device-messages. |
        
## FeedbackProperties

The properties of the feedback queue for cloud-to-device messages.

```puppet
$azure_feedback_properties = {
  lockDurationAsIso8601 => "lockDurationAsIso8601 (optional)",
  maxDeliveryCount => "1234 (optional)",
  ttlAsIso8601 => "ttlAsIso8601 (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|lockDurationAsIso8601 | String | false | The lock duration for the feedback queue. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#cloud-to-device-messages. |
|maxDeliveryCount | Integer | false | The number of times the IoT hub attempts to deliver a message on the feedback queue. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#cloud-to-device-messages. |
|ttlAsIso8601 | String | false | The period of time for which a message is available to consume before it is expired by the IoT hub. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging#cloud-to-device-messages. |
        
## IpFilterRule

The IP filter rules for the IoT hub.

```puppet
$azure_ip_filter_rule = {
  action => "action",
  filterName => "filterName",
  ipMask => "ipMask",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|action | String | true | The desired action for requests captured by this rule. |
|filterName | String | true | The name of the IP filter rule. |
|ipMask | String | true | A string that contains the IP address range in CIDR notation for the rule. |
        
## OperationsMonitoringProperties

The operations monitoring properties for the IoT hub. The possible keys to the dictionary are Connections, DeviceTelemetry, C2DCommands, DeviceIdentityOperations, FileUploadOperations, Routes, D2CTwinOperations, C2DTwinOperations, TwinQueries, JobsOperations, DirectMethods.

```puppet
$azure_operations_monitoring_properties = {
  events => "events (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|events | Hash | false |  |
        
## RoutingProperties

The routing related properties of the IoT hub. See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-messaging

```puppet
$azure_routing_properties = {
  endpoints => $azure_routing_endpoints
  fallbackRoute => $azure_fallback_route_properties
  routes => $azure_route_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endpoints | [RoutingEndpoints](#routingendpoints) | false |  |
|fallbackRoute | [FallbackRouteProperties](#fallbackrouteproperties) | false | The properties of the route that is used as a fall-back route when none of the conditions specified in the 'routes' section are met. This is an optional parameter. When this property is not set, the messages which do not meet any of the conditions specified in the 'routes' section get routed to the built-in eventhub endpoint. |
|routes | [RouteProperties](#routeproperties) | false | The list of user-provided routing rules that the IoT hub uses to route messages to built-in and custom endpoints. A maximum of 100 routing rules are allowed for paid hubs and a maximum of 5 routing rules are allowed for free hubs. |
        
## RoutingEndpoints

The properties related to the custom endpoints to which your IoT hub routes messages based on the routing rules. A maximum of 10 custom endpoints are allowed across all endpoint types for paid hubs and only 1 custom endpoint is allowed across all endpoint types for free hubs.

```puppet
$azure_routing_endpoints = {
  eventHubs => $azure_routing_event_hub_properties
  serviceBusQueues => $azure_routing_service_bus_queue_endpoint_properties
  serviceBusTopics => $azure_routing_service_bus_topic_endpoint_properties
  storageContainers => $azure_routing_storage_container_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|eventHubs | [RoutingEventHubProperties](#routingeventhubproperties) | false | The list of Event Hubs endpoints that IoT hub routes messages to, based on the routing rules. This list does not include the built-in Event Hubs endpoint. |
|serviceBusQueues | [RoutingServiceBusQueueEndpointProperties](#routingservicebusqueueendpointproperties) | false | The list of Service Bus queue endpoints that IoT hub routes the messages to, based on the routing rules. |
|serviceBusTopics | [RoutingServiceBusTopicEndpointProperties](#routingservicebustopicendpointproperties) | false | The list of Service Bus topic endpoints that the IoT hub routes the messages to, based on the routing rules. |
|storageContainers | [RoutingStorageContainerProperties](#routingstoragecontainerproperties) | false | The list of storage container endpoints that IoT hub routes messages to, based on the routing rules. |
        
## RoutingEventHubProperties

The properties related to an event hub endpoint.

```puppet
$azure_routing_event_hub_properties = {
  connectionString => "connectionString",
  name => "name",
  resourceGroup => "resourceGroup (optional)",
  subscriptionId => "subscriptionId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|connectionString | String | true | The connection string of the event hub endpoint.  |
|name | String | true | The name that identifies this endpoint. The name can only include alphanumeric characters, periods, underscores, hyphens and has a maximum length of 64 characters. The following names are reserved:  events, operationsMonitoringEvents, fileNotifications, $default. Endpoint names must be unique across endpoint types. |
|resourceGroup | String | false | The name of the resource group of the event hub endpoint. |
|subscriptionId | String | false | The subscription identifier of the event hub endpoint. |
        
## RoutingServiceBusQueueEndpointProperties

The properties related to service bus queue endpoint types.

```puppet
$azure_routing_service_bus_queue_endpoint_properties = {
  connectionString => "connectionString",
  name => "name",
  resourceGroup => "resourceGroup (optional)",
  subscriptionId => "subscriptionId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|connectionString | String | true | The connection string of the service bus queue endpoint. |
|name | String | true | The name that identifies this endpoint. The name can only include alphanumeric characters, periods, underscores, hyphens and has a maximum length of 64 characters. The following names are reserved:  events, operationsMonitoringEvents, fileNotifications, $default. Endpoint names must be unique across endpoint types. The name need not be the same as the actual queue name. |
|resourceGroup | String | false | The name of the resource group of the service bus queue endpoint. |
|subscriptionId | String | false | The subscription identifier of the service bus queue endpoint. |
        
## RoutingServiceBusTopicEndpointProperties

The properties related to service bus topic endpoint types.

```puppet
$azure_routing_service_bus_topic_endpoint_properties = {
  connectionString => "connectionString",
  name => "name",
  resourceGroup => "resourceGroup (optional)",
  subscriptionId => "subscriptionId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|connectionString | String | true | The connection string of the service bus topic endpoint. |
|name | String | true | The name that identifies this endpoint. The name can only include alphanumeric characters, periods, underscores, hyphens and has a maximum length of 64 characters. The following names are reserved:  events, operationsMonitoringEvents, fileNotifications, $default. Endpoint names must be unique across endpoint types.  The name need not be the same as the actual topic name. |
|resourceGroup | String | false | The name of the resource group of the service bus topic endpoint. |
|subscriptionId | String | false | The subscription identifier of the service bus topic endpoint. |
        
## RoutingStorageContainerProperties

The properties related to a storage container endpoint.

```puppet
$azure_routing_storage_container_properties = {
  batchFrequencyInSeconds => "1234 (optional)",
  connectionString => "connectionString",
  containerName => "containerName",
  encoding => "encoding (optional)",
  fileNameFormat => "fileNameFormat (optional)",
  maxChunkSizeInBytes => "1234 (optional)",
  name => "name",
  resourceGroup => "resourceGroup (optional)",
  subscriptionId => "subscriptionId (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|batchFrequencyInSeconds | Integer | false | Time interval at which blobs are written to storage. Value should be between 60 and 720 seconds. Default value is 300 seconds. |
|connectionString | String | true | The connection string of the storage account. |
|containerName | String | true | The name of storage container in the storage account. |
|encoding | String | false | Encoding that is used to serialize messages to blobs. Supported values are 'avro' and 'avrodeflate'. Default value is 'avro'. |
|fileNameFormat | String | false | File name format for the blob. Default format is {iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm}. All parameters are mandatory but can be reordered. |
|maxChunkSizeInBytes | Integer | false | Maximum number of bytes for each blob written to storage. Value should be between 10485760(10MB) and 524288000(500MB). Default value is 314572800(300MB). |
|name | String | true | The name that identifies this endpoint. The name can only include alphanumeric characters, periods, underscores, hyphens and has a maximum length of 64 characters. The following names are reserved:  events, operationsMonitoringEvents, fileNotifications, $default. Endpoint names must be unique across endpoint types. |
|resourceGroup | String | false | The name of the resource group of the storage account. |
|subscriptionId | String | false | The subscription identifier of the storage account. |
        
## FallbackRouteProperties

The properties of the fallback route. IoT Hub uses these properties when it routes messages to the fallback endpoint.

```puppet
$azure_fallback_route_properties = {
  condition => "condition (optional)",
  endpointNames => "endpointNames",
  isEnabled => "isEnabled",
  name => "name (optional)",
  source => "source",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|condition | String | false | The condition which is evaluated in order to apply the fallback route. If the condition is not provided it will evaluate to true by default. For grammar, See: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language |
|endpointNames | Array | true | The list of endpoints to which the messages that satisfy the condition are routed to. Currently only 1 endpoint is allowed. |
|isEnabled | Boolean | true | Used to specify whether the fallback route is enabled. |
|name | String | false | The name of the route. The name can only include alphanumeric characters, periods, underscores, hyphens, has a maximum length of 64 characters, and must be unique. |
|source | String | true | The source to which the routing rule is to be applied to. For example, DeviceMessages |
        
## RouteProperties

The properties of a routing rule that your IoT hub uses to route messages to endpoints.

```puppet
$azure_route_properties = {
  condition => "condition (optional)",
  endpointNames => "endpointNames",
  isEnabled => "isEnabled",
  name => "name",
  source => "source",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|condition | String | false | The condition that is evaluated to apply the routing rule. If no condition is provided, it evaluates to true by default. For grammar, see: https://docs.microsoft.com/azure/iot-hub/iot-hub-devguide-query-language |
|endpointNames | Array | true | The list of endpoints to which messages that satisfy the condition are routed. Currently only one endpoint is allowed. |
|isEnabled | Boolean | true | Used to specify whether a route is enabled. |
|name | String | true | The name of the route. The name can only include alphanumeric characters, periods, underscores, hyphens, has a maximum length of 64 characters, and must be unique. |
|source | String | true | The source that the routing rule is to be applied to, such as DeviceMessages. |
        
## IotHubSkuInfo

Information about the SKU of the IoT hub.

```puppet
$azure_iot_hub_sku_info = {
  capacity => "1234 (optional)",
  name => "name",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|capacity | Integer | false | The number of provisioned IoT Hub units. See: https://docs.microsoft.com/azure/azure-subscription-service-limits#iot-hub-limits. |
|name | String | true | The name of the SKU. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the IotHubDescription

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/IotHubs/%{resource_name}`|Put|Create or update the metadata of an Iot hub. The usual pattern to modify a property is to retrieve the IoT hub metadata and security metadata, and then combine them with the modified values in a new body to update the IoT hub.|IotHubResource_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Devices/IotHubs`|Get|Get all the IoT hubs in a subscription.|IotHubResource_ListBySubscription|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/IotHubs/%{resource_name}`|Get|Get the non-security related metadata of an IoT hub.|IotHubResource_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/IotHubs`|Get|Get all the IoT hubs in a resource group.|IotHubResource_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/IotHubs/%{resource_name}`|Put|Create or update the metadata of an Iot hub. The usual pattern to modify a property is to retrieve the IoT hub metadata and security metadata, and then combine them with the modified values in a new body to update the IoT hub.|IotHubResource_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Devices/IotHubs/%{resource_name}`|Delete|Delete an IoT hub.|IotHubResource_Delete|
