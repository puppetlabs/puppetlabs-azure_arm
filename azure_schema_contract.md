Document: "apimapis"


Path: "https://github.com/Azure/azure-rest-api-specs/blob/master/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2017-03-01/apimapis.json")

## SchemaContract

Schema Contract details.

```puppet
azure_schema_contract {
  api_version => "api_version",
  api_id => "api_id",
  if_match => "if_match",
  parameters => "parameters",
  properties => $azure_schema_contract_properties
  resource_group_name => "resource_group_name",
  schema_id => "schema_id",
  service_name => "service_name",
  subscription_id => "subscription_id",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | Version of the API to be used with the client request. |
|api_id | String | true | API identifier. Must be unique in the current API Management service instance. |
|if_match | String | true | The entity state (Etag) version of the Api schema to update. A value of '*' can be used for If-Match to unconditionally apply the operation. |
|parameters | Hash | true | The schema contents to apply. |
|properties | [SchemaContractProperties](#schemacontractproperties) | false | Properties of the Schema. |
|resource_group_name | String | true | The name of the resource group. |
|schema_id | String | true | Schema identifier within an API. Must be unique in the current API Management service instance. |
|service_name | String | true | The name of the API Management service. |
|subscription_id | String | true | Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call. |
        
## SchemaContractProperties

Schema contract Properties.

```puppet
$azure_schema_contract_properties = {
  contentType => "contentType",
  document => $azure_schema_document_properties
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|contentType | String | true | Must be a valid a media type used in a Content-Type header as defined in the RFC 2616. Media type of the schema document (e.g. application/json, application/xml). |
|document | [SchemaDocumentProperties](#schemadocumentproperties) | false | Properties of the Schema Document. |
        
## SchemaDocumentProperties

Schema Document Properties.

```puppet
$azure_schema_document_properties = {
  value => "value (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|value | String | false | Json escaped string defining the document representing the Schema. |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the SchemaContract

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/schemas/%{schema_id}`|Put|Creates or updates schema configuration for the API.|ApiSchema_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/schemas/%{schema_id}`|Get|Get the schema configuration at the API level.|ApiSchema_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/schemas`|Get|Get the schema configuration at the API level.|ApiSchema_ListByApi|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/schemas/%{schema_id}`|Put|Creates or updates schema configuration for the API.|ApiSchema_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.ApiManagement/service/%{service_name}/apis/%{api_id}/schemas/%{schema_id}`|Delete|Deletes the schema configuration at the Api.|ApiSchema_Delete|
