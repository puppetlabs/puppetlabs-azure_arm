Document: "logic"
Path: "/root/specs/specification/logic/resource-manager/Microsoft.Logic/stable/2016-06-01/logic.json")

## IntegrationAccountSchema

```puppet
azure_integration_account_schema {
  api_version => "api_version",
  id => "id (optional)",
  integration_account_name => "integration_account_name",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_integration_account_schema_properties
  resource_group_name => "resource_group_name",
  schema => "schema",
  schema_name => "schema_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | The API version. |
|id | String | false | The resource id. |
|integration_account_name | String | true | The integration account name. |
|location | String | false | The resource location. |
|name | String | false | Gets the resource name. |
|properties | [IntegrationAccountSchemaProperties](#integrationaccountschemaproperties) | true | The integration account schema properties. |
|resource_group_name | String | true | The resource group name. |
|schema | Hash | true | The integration account schema. |
|schema_name | String | true | The integration account schema name. |
|subscription_id | String | true | The subscription id. |
|tags | Hash | false | The resource tags. |
|type | String | false | Gets the resource type. |
        
## IntegrationAccountSchemaProperties

```puppet
$azure_integration_account_schema_properties = {
  changedTime => "changedTime (optional)",
  content => "content (optional)",
  contentLink => $azure_content_link
  contentType => "contentType (optional)",
  createdTime => "createdTime (optional)",
  documentName => "documentName (optional)",
  fileName => "fileName (optional)",
  metadata => "metadata (optional)",
  schemaType => $azure_schema_type
  targetNamespace => "targetNamespace (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|changedTime | String | false | The changed time. |
|content | String | false | The content. |
|contentLink | [ContentLink](#contentlink) | false | The content link. |
|contentType | String | false | The content type. |
|createdTime | String | false | The created time. |
|documentName | String | false | The document name. |
|fileName | String | false | The file name. |
|metadata | Hash | false | The metadata. |
|schemaType | [SchemaType](#schematype) | true | The schema type. |
|targetNamespace | String | false | The target namespace of the schema. |
        
## ContentLink

```puppet
$azure_content_link = {
  contentHash => $azure_content_hash
  contentSize => "1234 (optional)",
  contentVersion => "contentVersion (optional)",
  metadata => $azure_object
  uri => "uri (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|contentHash | [ContentHash](#contenthash) | false | The content hash. |
|contentSize | Integer | false | The content size. |
|contentVersion | String | false | The content version. |
|metadata | [Object](#object) | false | The metadata. |
|uri | String | false | The content link URI. |
        
## ContentHash

```puppet
$azure_content_hash = {
  algorithm => "algorithm (optional)",
  value => "value (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|algorithm | String | false | The algorithm of the content hash. |
|value | String | false | The value of the content hash. |
        
## Object

```puppet
$azure_object = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## SchemaType

```puppet
$azure_schema_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the IntegrationAccountSchema

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/schemas/%{schema_name}`|Put|Creates or updates an integration account schema.|Schemas_CreateOrUpdate|
|List - list all|``||||
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/schemas/%{schema_name}`|Get|Gets an integration account schema.|Schemas_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/schemas`|Get|Gets a list of integration account schemas.|Schemas_ListByIntegrationAccounts|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/schemas/%{schema_name}`|Put|Creates or updates an integration account schema.|Schemas_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Logic/integrationAccounts/%{integration_account_name}/schemas/%{schema_name}`|Delete|Deletes an integration account schema.|Schemas_Delete|