Document: "apimbackends"
Path: "/root/specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2017-03-01/apimbackends.json")

## BackendContract

```puppet
azure_backend_contract {
  api_version => "api_version",
  backendid => "backendid",
  id => "id (optional)",
  if_match => "if_match",
  name => "name (optional)",
  parameters => "parameters",
  properties => $azure_backend_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|backendid | String | true | Identifier of the Backend entity. Must be unique in the current API Management service instance. |
|id | String | false | Resource ID. |
|if_match | String | true | The entity state (Etag) version of the backend to delete. A value of '*' can be used for If-Match to unconditionally apply the operation. |
|name | String | false | Resource name. |
|parameters | Hash | true | Create parameters. |
|properties | [BackendContractProperties](#backendcontractproperties) | false | Backend entity contract properties. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | Resource type for API Management resource. |
        
## BackendContractProperties

```puppet
$azure_backend_contract_properties = {
  credentials => "credentials (optional)",
  description => "description (optional)",
  properties => "properties (optional)",
  protocol => "protocol",
  proxy => "proxy (optional)",
  resourceId => "resourceId (optional)",
  title => "title (optional)",
  tls => "tls (optional)",
  url => "url",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|credentials | String | false | Backend Credentials Contract Properties |
|description | String | false | Backend Description. |
|properties | String | false | Backend Properties contract |
|protocol | String | true | Backend communication protocol. |
|proxy | String | false | Backend Proxy Contract Properties |
|resourceId | String | false | Management Uri of the Resource in External System. This url can be the Arm Resource Id of Logic Apps, Function Apps or Api Apps. |
|title | String | false | Backend Title. |
|tls | String | false | Backend TLS Properties |
|url | String | true | Runtime Url of the Backend. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the BackendContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/backends/%{backendid}`|Put|Creates or Updates a backend.|Backend_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/backends/%{backendid}`|Get|Gets the details of the backend specified by its identifier.|Backend_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/backends`|Get|Lists a collection of backends in the specified service instance.|Backend_ListByService|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/backends/%{backendid}`|Put|Creates or Updates a backend.|Backend_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/backends/%{backendid}`|Delete|Deletes the specified backend.|Backend_Delete|