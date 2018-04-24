Document: "logicAppsManagementClient"
Path: "/root/specs/specification/web/resource-manager/Microsoft.Web/stable/2016-06-01/logicAppsManagementClient.json")

## CustomApiDefinition

```puppet
azure_custom_api_definition {
  api_version => "api_version",
  api_name => "api_name",
  custom_api => "customApi",
  etag => "etag (optional)",
  id => "id (optional)",
  location => "location (optional)",
  name => "name (optional)",
  properties => $azure_custom_api_properties_definition
  resource_group_name => "resource_group_name",
  subscription_id => "subscription_id",
  tags => "tags (optional)",
  type => "type (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|api_version | String | true | API Version |
|api_name | String | true | API name |
|custom_api | Hash | true | The custom API |
|etag | String | false | Resource ETag |
|id | String | false | Resource id |
|location | String | false | Resource location |
|name | String | false | Resource name |
|properties | [CustomApiPropertiesDefinition](#customapipropertiesdefinition) | false |  |
|resource_group_name | String | true | The resource group |
|subscription_id | String | true | Subscription Id |
|tags | String | false |  |
|type | String | false | Resource type |
        
## CustomApiPropertiesDefinition

```puppet
$azure_custom_api_properties_definition = {
  apiDefinitions => $azure_api_resource_definitions
  apiType => $azure_api_type
  backendService => $azure_api_resource_backend_service
  brandColor => "brandColor (optional)",
  capabilities => "capabilities (optional)",
  connectionParameters => "connectionParameters (optional)",
  description => "description (optional)",
  displayName => "displayName (optional)",
  iconUri => "iconUri (optional)",
  runtimeUrls => "runtimeUrls (optional)",
  swagger => "swagger (optional)",
  wsdlDefinition => $azure_wsdl_definition
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|apiDefinitions | [ApiResourceDefinitions](#apiresourcedefinitions) | false |  |
|apiType | [ApiType](#apitype) | false |  |
|backendService | [ApiResourceBackendService](#apiresourcebackendservice) | false |  |
|brandColor | String | false | Brand color |
|capabilities | Array | false | The custom API capabilities |
|connectionParameters | Hash | false | Connection parameters |
|description | String | false | The custom API desciption |
|displayName | String | false | The display name |
|iconUri | String | false | The icon URI |
|runtimeUrls | Array | false | Runtime URLs |
|swagger | Hash | false | The JSON representation of the swagger |
|wsdlDefinition | [WsdlDefinition](#wsdldefinition) | false |  |
        
## ApiResourceDefinitions

```puppet
$azure_api_resource_definitions = {
  modifiedSwaggerUrl => "modifiedSwaggerUrl (optional)",
  originalSwaggerUrl => "originalSwaggerUrl (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|modifiedSwaggerUrl | String | false | The modified swagger URL |
|originalSwaggerUrl | String | false | The original swagger URL |
        
## ApiType

```puppet
$azure_api_type = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## ApiResourceBackendService

```puppet
$azure_api_resource_backend_service = {
  serviceUrl => "serviceUrl (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|serviceUrl | String | false | The service URL |
        
## WsdlDefinition

```puppet
$azure_wsdl_definition = {
  content => "content (optional)",
  importMethod => $azure_wsdl_import_method
  service => $azure_wsdl_service
  url => "url (optional)",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|content | String | false | The WSDL content |
|importMethod | [WsdlImportMethod](#wsdlimportmethod) | false |  |
|service | [WsdlService](#wsdlservice) | false |  |
|url | String | false | The WSDL URL |
        
## WsdlImportMethod

```puppet
$azure_wsdl_import_method = {
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
        
## WsdlService

```puppet
$azure_wsdl_service = {
  endpointQualifiedNames => "endpointQualifiedNames (optional)",
  qualifiedName => "qualifiedName",
}
```

| Name        | Type           | Required       | Description       |
| ------------- | ------------- | ------------- | ------------- |
|endpointQualifiedNames | Array | false | List of the endpoints' qualified names |
|qualifiedName | String | true | The service's qualified name |



## CRUD operations

Here is a list of endpoints that we use to create, read, update and delete the CustomApiDefinition

| Operation | Path | Verb | Description | OperationID |
| ------------- | ------------- | ------------- | ------------- | ------------- |
|Create|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/customApis/%{api_name}`|Put|Creates or updates an existing custom API|CustomApis_CreateOrUpdate|
|List - list all|`/subscriptions/%{subscription_id}/providers/Microsoft.Web/customApis`|Get|Gets a list of all custom APIs for a subscription id|CustomApis_List|
|List - get one|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/customApis/%{api_name}`|Get|Gets a custom API by name for a specific subscription and resource group|CustomApis_Get|
|List - get list using params|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/customApis`|Get|Gets a list of all custom APIs in a subscription for a specific resource group|CustomApis_ListByResourceGroup|
|Update|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/customApis/%{api_name}`|Put|Creates or updates an existing custom API|CustomApis_CreateOrUpdate|
|Delete|`/subscriptions/%{subscription_id}/resourceGroups/%{resource_group_name}/providers/Microsoft.Web/customApis/%{api_name}`|Delete|Deletes a custom API from the resource group|CustomApis_Delete|