Document: "apimapis"


Path: "/tmp/azure-rest-api-specs/specification/apimanagement/resource-manager/Microsoft.ApiManagement/stable/2018-01-01/apimapis.json")

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
|api_id | String | true | API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number. |
|if_match | String | true | ETag of the Entity. ETag should match the current entity state from the header response of the GET request or it should be * for unconditional update. |
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
