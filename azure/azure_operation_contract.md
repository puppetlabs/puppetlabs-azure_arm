Document: "apimapis"
Path: "/root/specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2017-03-01/apimapis.json")

## OperationContract

```puppet
azure_operation_contract {
  api_version => "api_version",
  api_id => "api_id",
  id => "id (optional)",
  if_match => "if_match",
  name => "name (optional)",
  operation_id => "operation_id",
  parameters => "parameters",
  properties => $azure_operation_contract_properties
  resource_group_name => "resource_group_name",
  service_name => "service_name",
  subscription_id => "subscription_id",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|api_id | String | true | API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number. |
|id | String | false | Resource ID. |
|if_match | String | true | ETag of the API Operation Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update. |
|name | String | false | Resource name. |
|operation_id | String | true | Operation identifier within an API. Must be unique in the current API Management service instance. |
|parameters | Hash | true | Create parameters. |
|properties | [OperationContractProperties](#operationcontractproperties) | false | Properties of the Operation Contract. |
|resource_group_name | String | true | The name of the resource group. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
|type | String | false | Resource type for API Management resource. |
        
## OperationContractProperties

```puppet
$azure_operation_contract_properties = {
  description => "description (optional)",
  displayName => "displayName",
  method => "method",
  policies => "policies (optional)",
  request => "request (optional)",
  responses => "responses (optional)",
  templateParameters => "templateParameters (optional)",
  urlTemplate => "urlTemplate",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|description | String | false | Description of the operation. May include HTML formatting tags. |
|displayName | String | true | Operation Name. |
|method | String | true | A Valid HTTP Operation Method. Typical Http Methods like GET, PUT, POST but not limited by only them. |
|policies | String | false | Operation Policies |
|request | String | false | An entity containing request details. |
|responses | Array | false | Array of Operation responses. |
|templateParameters | Array | false | Collection of URL template parameters. |
|urlTemplate | String | true | Relative URL template identifying the target resource for this operation. May include parameters. Example: /customers/{cid}/orders/{oid}/?date={date} |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the OperationContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/operations/%{operation_id}`|Put|Creates a new operation in the API or updates an existing one.|ApiOperation_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/operations/%{operation_id}`|Get|Gets the details of the API Operation specified by its identifier.|ApiOperation_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/operations`|Get|Lists a collection of the operations for the specified API.|ApiOperation_ListByApi|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/operations/%{operation_id}`|Put|Creates a new operation in the API or updates an existing one.|ApiOperation_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/operations/%{operation_id}`|Delete|Deletes the specified operation in the API.|ApiOperation_Delete|